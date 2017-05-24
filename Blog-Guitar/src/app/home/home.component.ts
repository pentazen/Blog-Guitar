import { Injectable, Component, OnInit } from '@angular/core';
import { Http } from '@angular/http';
import { MasterComponentComponent } from '../master-component/master-component.component'
// import { ThanhVienApi } from '../shared/core/services/index'
import { FormPostApi } from '../shared/core/services/index'

declare var $: any;

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent extends MasterComponentComponent {

  constructor(private http: Http, private formAPI: FormPostApi) { super(); }

  ngOnInit() {
    this.showToastr(undefined, "mes");
    this.load();
    console.log("đệt")
  }
  load() {
    this.formAPI.get().subscribe(res => {
      console.log(res);
      var mes = `Tốt lắm ${res[0]} và ${res[1]}`;
      this.showToastr(undefined, mes);
    })
    // console.log(this.api.getModelName());
    // console.log();
    // this.api.find().subscribe(data=>{
    //   console.log(data);
    // })
    // this.http.get("http://localhost:57665/api/values").subscribe((ress: any) => {
    //   console.log($.parseJSON(ress._body));
    //   var list = $.parseJSON(ress._body);
    //   var mes = `Tốt lắm ${list[0]} và ${list[1]}`;
    //   this.showToastr(undefined, mes);
    // })
  }

}
