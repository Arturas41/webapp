import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
 
import { AppComponent } from './app.component';
import { VirtualMachineComponent } from './virtual-machine/virtual-machine.component';
 
@NgModule({
  declarations: [
    AppComponent,
    VirtualMachineComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }