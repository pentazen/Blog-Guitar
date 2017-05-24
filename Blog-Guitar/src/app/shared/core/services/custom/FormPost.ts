/* tslint:disable */
import { Injectable, Inject, Optional } from '@angular/core';
import { Http, Response } from '@angular/http';
import { SDKModels } from './SDKModels';
import { BaseService } from '../../services/base/base.service';
// import { LoopBackConfig } from '../../lb.config';
import { AuthenService } from '../../services/base/authen.service';
// import { LoopBackFilter,  } from '../../models/BaseModels';
import { JSONSearchParams } from '../../services/base/search.params';
import { ErrorHandler } from '../../services/base/error.service';
import { Subject } from 'rxjs/Subject';
import { Observable } from 'rxjs/Rx';
import { FormPost } from '../../models/FormPost';
// import { SocketConnection } from '../../sockets/socket.connections';


/**
 * Api services for the `Asset` model.
 */
@Injectable()
export class FormPostApi extends BaseService {
    model=FormPost;
    constructor(
        @Inject(Http) protected http: Http,
        // @Inject(SocketConnection) protected connection: SocketConnection,
        @Inject(SDKModels) protected models: SDKModels,
        @Inject(AuthenService) protected auth: AuthenService,
        @Inject(JSONSearchParams) protected searchParams: JSONSearchParams,
        @Optional() @Inject(ErrorHandler) protected errorHandler: ErrorHandler
    ) {
        super(http, models, auth, searchParams, errorHandler);
    }



    /**
     * The name of the model represented by this $resource,
     * i.e. `Asset`.
     */
    public getModelName() {
        return "FormPost";
    }
}
