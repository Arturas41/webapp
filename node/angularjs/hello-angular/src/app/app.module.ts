import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';  //<<<< import it here
 
import { AppComponent } from './app.component';
import { VirtualMachineComponent } from './virtual-machine/virtual-machine.component';
import { VirtualMachinesComponent } from './virtual-machines/virtual-machines.component';
import {GameListComponent} from './games/game-list.component';

 
@NgModule({
  declarations: [
    AppComponent,
    VirtualMachineComponent,
    VirtualMachinesComponent,
    GameListComponent
    
  ],
  imports: [
        BrowserModule, FormsModule  //<<<< and here
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }