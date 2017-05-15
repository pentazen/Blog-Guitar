import { Component } from '@angular/core';
import { MasterComponentComponent } from './master-component/master-component.component'
declare var $: any;
declare var toastr: any;
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent extends MasterComponentComponent {
  title = 'app works!';
  mml = "â";
  lll = true;
  clickMe($event: any) {
    this.showToastr(undefined,"Chào");
    // $event.stopPropagation();
    // // $('h1').removeClass("animated bounce");
    // // $('h1').addClass("animated bounce");
    // toastr["error"]("Hi, welcome to Inspinia. This is example of Toastr notification box.")
    // $("button").animate({ left: '250px' });
    // // $("button").animate({ letterSpacing: "+=10px" });
    // if (this.lll) {
    //   $("#btn1").prop('disabled', true);
    //   $("#btn2").prop('disabled', true);
    //   $("#btn2").hide(600);
    //   $("#btn1").show(600, function () {
    //     $("#btn1").prop('disabled', false);
    //     $("#btn2").prop('disabled', false);
    //   });
    //   this.lll = false;
    //   console.log("1:" + this.lll)
    // }
    // else {
    //   $("#btn1").prop('disabled', true);
    //   $("#btn2").prop('disabled', true);
    //   $("#btn2").show(600, function () {
    //     $("#btn2").prop('disabled', false);
    //   });
    //   $("#btn1").hide(600);
    //   this.lll = true;
    //   console.log("2:" + this.lll)

    // }

    // toastr.options = {
    //   "closeButton": true,
    //   "debug": false,
    //   "progressBar": true,
    //   "preventDuplicates": false,
    //   "positionClass": "toast-top-right",
    //   "showDuration": "400",
    //   "hideDuration": "1000",
    //   "timeOut": "7000",
    //   "extendedTimeOut": "1000",
    //   "showEasing": "swing",
    //   "hideEasing": "linear",
    //   "showMethod": "fadeIn",
    //   "hideMethod": "fadeOut"
    // }
  }
}
