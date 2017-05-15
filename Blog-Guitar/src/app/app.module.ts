import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

// router
import { routing } from './app.routing';

import { AppComponent } from './app.component';
import { MasterComponentComponent } from './master-component/master-component.component';
import { HomeComponent } from './home/home.component';
import { NavbarleftComponent } from './navbarleft/navbarleft.component';
import { NavbartopComponent } from './navbartop/navbartop.component';
import { Home2Component } from './home2/home2.component';

@NgModule({
  declarations: [
    AppComponent,
    MasterComponentComponent,
    HomeComponent,
    NavbarleftComponent,
    NavbartopComponent,
    Home2Component
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    routing
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
