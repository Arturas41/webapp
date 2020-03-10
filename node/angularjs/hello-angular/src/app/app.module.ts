import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
 
import { AppComponent } from './app.component';
import { VirtualMachineComponent } from './virtual-machine/virtual-machine.component';
import { VirtualMachinesComponent } from './virtual-machines/virtual-machines.component';
 
@NgModule({
  declarations: [
    AppComponent,
    VirtualMachineComponent,
    VirtualMachinesComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }