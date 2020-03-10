import { Component, OnInit } from '@angular/core';
 
@Component({
  selector: 'app-virtual-machines',
  templateUrl: './virtual-machines.component.html',
  styleUrls: ['./virtual-machines.component.css'],
})
export class VirtualMachinesComponent implements OnInit {
 
  allowNewVm = false;
  vmCreated = 'Initial State: Add a VM?';
  vmName = '';
 
  constructor() {
    setTimeout(() => {
      this.allowNewVm = true
    }, 1500);
  }
 
  ngOnInit() {
  }
 
  onCreateVM() {
    this.vmCreated = 'Button Clicked: New *' + this.vmName + '* VM spun up!';
  }
 
}
