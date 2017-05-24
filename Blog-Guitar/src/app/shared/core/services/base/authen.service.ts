import { Injectable, Inject, Optional } from '@angular/core';
import { Http, Headers, Request, RequestOptions } from '@angular/http';
import { NgModule, ModuleWithProviders } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import { Subject } from 'rxjs/Subject';
import { ErrorObservable } from 'rxjs/observable/ErrorObservable';
import 'rxjs/add/operator/catch';
import 'rxjs/add/operator/map';


import { SystemConstants } from '../../common/system.constants';
import { LoggedInUser } from '../../models/LoggedInUser';
import { ErrorHandler } from './error.service';
@Injectable()
export class AuthenService {

  constructor(
    private _http: Http,
    @Optional() @Inject(ErrorHandler) protected errorHandler: ErrorHandler

  ) {

  }
  logIn(taiKhoan: string, matKhau: string) {
    let body = "taiKhoan=" + encodeURIComponent(taiKhoan) + "&matKhau=" + encodeURIComponent(matKhau) + "&grant_type=password";
    let headers = new Headers();
    headers.append("Content-Type", "application/x-www-form-urlencoded");
    let options = new RequestOptions({ headers: headers });
    return this._http.post(SystemConstants.BASE_API + "/api/oauth/token", body, options).map((response: any) => {
      let user: LoggedInUser = response.json();
      if (user && user.access_token) {
        localStorage.removeItem(SystemConstants.CURRENT_USER);
        localStorage.setItem(SystemConstants.CURRENT_USER, JSON.stringify(user));

      }
    }).catch((e) => this.errorHandler.handleError(e));
  }
  logOut() {
    localStorage.removeItem(SystemConstants.CURRENT_USER);

  }
  isUserAuthenticated(): boolean {
    let user = localStorage.getItem(SystemConstants.CURRENT_USER);

    return user?true:false;

  }
  getLoggedUser(): any {
    let user:LoggedInUser;
    if(this.isUserAuthenticated())
    {
      var userData:any=JSON.stringify(localStorage.getItem(SystemConstants.CURRENT_USER));
      user=new LoggedInUser(userData.access_token,userData.TaiKhoan,userData.TenDayDu,userData.Email,userData.AnhDaiDien,userData.Quyen);
    }
    else
    {
      user=null;
    }
    return user;
  }
}
