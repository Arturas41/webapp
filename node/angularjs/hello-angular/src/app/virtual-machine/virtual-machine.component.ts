import { Component } from "@angular/core";
 
@Component({
    selector: 'app-virtual-machine',
    templateUrl: './virtual-machine.component.html'
})
export class VirtualMachineComponent {
    vmName = 'Melvin';
    vmStatus = 'online';
    vmUptime = 225;
}