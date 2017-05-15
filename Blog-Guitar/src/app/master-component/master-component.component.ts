import { Component, OnInit, OnDestroy, Input } from '@angular/core';
import { ActivatedRoute, Router, Params } from '@angular/router';
declare var $: any;
declare var toastr: any;
@Component({
  selector: 'app-master-component',
  templateUrl: './master-component.component.html',
  styleUrls: ['./master-component.component.css']
})
export class MasterComponentComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    // this.showToastr();
    toastr.options = {
      "closeButton": true,
      "debug": false,
      "progressBar": true,
      "preventDuplicates": false,
      "positionClass": "toast-top-right",
      "showDuration": "400",
      "hideDuration": "1000",
      "timeOut": "7000",
      "extendedTimeOut": "1000",
      "showEasing": "swing",
      "hideEasing": "linear",
      "showMethod": "fadeIn",
      "hideMethod": "fadeOut"
    }
  }
  showToastr(type:string="info",message:string="Hello!")
  {
    toastr[type](message);
  }

}
