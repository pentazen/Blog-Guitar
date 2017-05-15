import { Routes, RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';

import { HomeComponent } from './home/home.component';
import { Home2Component } from './home2/home2.component';
const routes: Routes = [
    { path: '', component: HomeComponent },
    { path: 'home2', component: Home2Component },
    // {path:'login', component: LoginComponent},
    // {path: 'lock', component: LockscreenComponent},
    // {path: 'activate-account', component: ActivateAccountComponent},
    { path: '**', redirectTo: '/' }
]

export const routing = RouterModule.forRoot(routes, { useHash: true });