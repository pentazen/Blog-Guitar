import { Component, OnInit } from '@angular/core';
import { Http } from '@angular/http';
import { MasterComponentComponent } from '../master-component/master-component.component'

declare var $: any;

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent extends MasterComponentComponent {

  constructor(private http: Http) { super(); }

  ngOnInit() {
    this.load();
    console.log("đệt")
  }
  load() {
    this.http.get("http://localhost:7000/api/values").subscribe((ress: any) => {
      console.log($.parseJSON(ress._body));
      var list = $.parseJSON(ress._body);
      var mes = `Tốt lắm ${list[0]} và ${list[1]}`;
      this.showToastr(undefined, mes);
    })
  }

}
