/**
* @module SDKModule
* @author Jonathan Casarrubias <t:@johncasarrubias> <gh:jonathan-casarrubias>
* @license MIT 2016 Jonathan Casarrubias
* @version 2.1.0
* @description
* The SDKModule is a generated Software Development Kit automatically built by
* the LoopBack SDK Builder open source module.
*
* The SDKModule provides Angular 2 >= RC.5 support, which means that NgModules
* can import this Software Development Kit as follows:
*
*
* APP Route Module Context
* ============================================================================
* import { NgModule }       from '@angular/core';
* import { BrowserModule }  from '@angular/platform-browser';
* // App Root 
* import { AppComponent }   from './app.component';
* // Feature Modules
* import { SDK[Browser|Node|Native]Module } from './shared/sdk/sdk.module';
* // Import Routing
* import { routing }        from './app.routing';
* @NgModule({
*  imports: [
*    BrowserModule,
*    routing,
*    SDK[Browser|Node|Native]Module.forRoot()
*  ],
*  declarations: [ AppComponent ],
*  bootstrap:    [ AppComponent ]
* })
* export class AppModule { }
*
**/
import { JSONSearchParams } from './services/base/search.params';
import { ErrorHandler } from './services/base/error.service';
import { AuthenService } from './services/base/authen.service';
// import { LoggerService } from './services/custom/logger.service';
import { SDKModels } from './services/custom/SDKModels';
import { InternalStorage, SDKStorage } from './storage/storage.swaps';
import { HttpModule } from '@angular/http';
import { CommonModule } from '@angular/common';
import { NgModule, ModuleWithProviders } from '@angular/core';
import { CookieBrowser } from './storage/cookie.browser';
import { StorageBrowser } from './storage/storage.browser';
// import { SocketBrowser } from './sockets/socket.browser';
// import { SocketDriver } from './sockets/socket.driver';
// import { SocketConnection } from './sockets/socket.connections';
// import { RealTime } from './services/core/real.time';

import { FormPostApi } from './services/custom/FormPost';


// import { EmailApi } from './services/custom/Email';
// import { SettingApi } from './services/custom/Setting';
// import { MemberApi } from './services/custom/Member';
// import { ProductApi } from './services/custom/Product';
// import { BrandApi } from './services/custom/Brand';
// import { BrandCategoryApi } from './services/custom/BrandCategory';
// import { StockroomApi } from './services/custom/Stockroom';
// import { StoreApi } from './services/custom/Store';
// import { StaffApi } from './services/custom/Staff';
// import { MemberBoosterApi } from './services/custom/MemberBooster';
// import { UploadApi } from './services/custom/Upload';
// import { CustomerApi } from './services/custom/Customer';
// import { BoosterApi } from './services/custom/Booster';
// import { VersionAppApi } from './services/custom/VersionApp';
// import { CashOutMoneyApi } from './services/custom/CashOutMoney';
// import { CommissionInjectionApi } from './services/custom/CommissionInjection';
// import { SafeboxApi } from './services/custom/Safebox';
// import { CommissionApi } from './services/custom/Commission';
// import { MissionApi } from './services/custom/Mission';
// import { PurchasePackageApi } from './services/custom/PurchasePackage';
// import { OrderApi } from './services/custom/Order';
// import { BoosterRequestApi } from './services/custom/BoosterRequest';
// import { AssetApi } from './services/custom/Asset';
// import { LeprechaunHistoryApi } from './services/custom/LeprechaunHistory';
/**
* @module SDKBrowserModule
* @description
* This module should be imported when building a Web Application in the following scenarios:
*
*  1.- Regular web application
*  2.- Angular universal application (Browser Portion)
*  3.- Progressive applications (Angular Mobile, Ionic, WebViews, etc)
**/
@NgModule({
    imports: [CommonModule, HttpModule],
    declarations: [],
    exports: [],
    providers: [
        ErrorHandler,
        // SocketConnection
    ]
})
export class SDKBrowserModule {
    static forRoot(internalStorageProvider: any = {
        provide: InternalStorage,
        useClass: CookieBrowser
    }): ModuleWithProviders {
        return {
            ngModule: SDKBrowserModule,
            providers: [
                AuthenService,
                // LoggerService,
                JSONSearchParams,
                SDKModels,

                FormPostApi,

                // RealTime,
                // EmailApi,
                // SettingApi,
                // MemberApi,
                // ProductApi,
                // BrandApi,
                // BrandCategoryApi,
                // StockroomApi,
                // StoreApi,
                // StaffApi,
                // MemberBoosterApi,
                // UploadApi,
                // CustomerApi,
                // BoosterApi,
                // VersionAppApi,
                // CashOutMoneyApi,
                // CommissionInjectionApi,
                // SafeboxApi,
                // CommissionApi,
                // MissionApi,
                // PurchasePackageApi,
                // OrderApi,
                // BoosterRequestApi,
                // AssetApi,
                // LeprechaunHistoryApi,
                internalStorageProvider,
                // { provide: SDKStorage, useClass: StorageBrowser },
                // { provide: SocketDriver, useClass: SocketBrowser }
            ]
        };
    }
}
/**
* Have Fun!!!
* - Jon
**/
export * from './models/index';
export * from './services/index';
// export * from './lb.config';
export * from './storage/storage.swaps';
export { CookieBrowser } from './storage/cookie.browser';
export { StorageBrowser } from './storage/storage.browser';
