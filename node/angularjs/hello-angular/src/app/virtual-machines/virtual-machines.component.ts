import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-virtual-machines',
  templateUrl: './virtual-machines.component.html',
  //styleUrls: ['./virtual-machines.component.css']
    styles: [
    `* {
     }`
  ]
})
export class VirtualMachinesComponent implements OnInit {

    allowNewVm = false;

    constructor() { 

    setTimeout(() => {
        this.allowNewVm = true
    }, 1500);
    }

    ngOnInit(): void {
    }

}
