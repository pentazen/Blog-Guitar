import { Injectable, Inject, Optional } from '@angular/core';
import { Http, Headers, Request } from '@angular/http';
import { NgModule, ModuleWithProviders } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import { Subject } from 'rxjs/Subject';
import { ErrorObservable } from 'rxjs/observable/ErrorObservable';
import 'rxjs/add/operator/catch';
import 'rxjs/add/operator/map';

import { SystemConstants } from '../../common/system.constants';
import { ErrorHandler } from './error.service';
import { AuthenService } from './authen.service';
import { JSONSearchParams } from './search.params';
import { SDKModels } from '../custom/SDKModels';

@Injectable()
export class BaseService {
  public BASE_URL: string = "http://localhost:57665";
  public API_VERSION: string = 'api';
  protected model: any;

  private headers: Headers;
  constructor(
    @Inject(Http) protected http: Http,
    // @Inject(SocketConnection) protected connection: SocketConnection,
    @Inject(SDKModels) protected models: SDKModels,
    @Inject(AuthenService) protected auth: AuthenService,
    @Inject(JSONSearchParams) protected searchParams: JSONSearchParams,
    @Optional() @Inject(ErrorHandler) protected errorHandler: ErrorHandler,

  ) { }
  /**
   * Phương thức Get
   * @param uri Đường dẫn
   */
  get(uri?: string, urlParams?) {
    // Gửi phương thức GET với Authentication ( Access_token ở client lên server)
    if (!uri)
      uri = [
        SystemConstants.BASE_API,
        SystemConstants.API_VERSION,
        this.model.getModelDefinition().plural
      ].join('/')
    return this.request("GET", uri, undefined, urlParams);
  }
  post(uri?: string, data?: any) {
    // console.log(this.uri);
    if (!uri)
      uri = [
        SystemConstants.BASE_API,
        SystemConstants.API_VERSION,
        this.model.getModelDefinition().plural
      ].join('/')
    return this.request("POST", uri, undefined, undefined, data);
  }
  put(id, uri?: string, data?: any) {
    if (!uri)
      uri = [
        SystemConstants.BASE_API,
        SystemConstants.API_VERSION,
        this.model.getModelDefinition().plural,
        id
      ].join('/')
    return this.request("PUT", uri, undefined, undefined, data);
  }
  delete(id: string) {
    let uri = [
      SystemConstants.BASE_API,
      SystemConstants.API_VERSION,
      this.model.getModelDefinition().plural,
      id
    ].join('/')
    return this.request("DELETE", uri, undefined, undefined, undefined);
  }
  postFile(uri: string, data?: any) {
    return null;
  }
  private extractData(res: Response) {
    let body = res.json();
    return body || {};
  }

  public request(
    method: string,
    url: string,
    routeParams: any = {},
    urlParams: any = {},
    postBody: any = {}
  ): Observable<any> {
    // Headers to be sent
    let headers: Headers = new Headers();
    headers.append('Content-Type', 'application/json');
    // headers.append('Content-Type', 'text/plain');
    // headers.append('Content-Type', 'application/json; charset=utf-8');
    // headers.append('Content-Type', 'application/x-www-form-urlencoded');

    // Authenticate request
    this.authenticate(url, headers);
    // Transpile route variables to the actual request Values
    Object.keys(routeParams).forEach((key: string) => {
      url = url.replace(new RegExp(":" + key + "(\/|$)", "g"), routeParams[key] + "$1")
    });
    // Body fix for built in remote methods using "data", "options" or "credentials
    // that are the actual body, Custom remote method properties are different and need
    // to be wrapped into a body object
    let body: any;
    let postBodyKeys = typeof postBody === 'object' ? Object.keys(postBody) : []
    if (postBodyKeys.length === 1) {
      body = postBody[postBodyKeys[0]];
    } else {
      body = postBody;
    }
    // Separate filter object from url params and add to search query
    if (urlParams.filter) {
      headers.append('filter', JSON.stringify(urlParams.filter));
      delete urlParams.filter;
    }
    // Separate where object from url params and add to search query
    if (urlParams.where) {
      headers.append('where', JSON.stringify(urlParams.where));
      delete urlParams.where;
    }
    this.searchParams.setJSON(urlParams);
    let request: Request = new Request({
      headers: headers,
      method: method,
      url: url,
      search: Object.keys(urlParams).length > 0
        ? this.searchParams.getURLSearchParams() : null,
      body: body ? JSON.stringify(body) : undefined
    });
    // console.log(request);
    return this.http.request(request)
      .map((res: any) => (res.text() != "" ? res.json() : {}))
      .catch((e) => this.errorHandler.handleError(e));
  }
  public authenticate<T>(url: string, headers: Headers): void {
    if (this.auth.isUserAuthenticated()) {
      // headers.append(
      //   'Authorization',
      //   LoopBackConfig.getAuthPrefix() + this.auth.getAccessTokenId()
      // );
      console.log("có");
      headers.append(
        'Authorization',
        this.auth.getLoggedUser().access_token
      );
    }
  }


}
