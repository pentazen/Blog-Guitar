/* tslint:disable */
import { Injectable } from '@angular/core';
import { Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';
//import { ErrorObservable } from 'rxjs/observable/ErrorObservable';
import 'rxjs/add/observable/throw';
/**
 * Default error handler
 */
@Injectable()
export class ErrorHandler {
  // ErrorObservable when rxjs version < rc.5
  // ErrorObservable<string> when rxjs version = rc.5
  // I'm leaving any for now to avoid breaking apps using both versions
  public handleError(error: Response | any): any {
    // console.log('Server error');
    // return Observable.throw(error.json().error || 'Server error');
    let errMsg: string;
    if (error instanceof Response) {
      const body = error.json() || '';
      const err = body.error || JSON.stringify(body);
      errMsg = `${error.status} - ${error.statusText || ''} ${err}`;
    } else {
      errMsg = error.message ? error.message : error.toString();
    }
    console.error(errMsg);
    return Observable.throw(errMsg);
  }
}
