import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';  //<<<< import it here
import {HttpClientModule} from '@angular/common/http';

import { AppComponent } from './app.component';
import { VirtualMachineComponent } from './virtual-machine/virtual-machine.component';
import { VirtualMachinesComponent } from './virtual-machines/virtual-machines.component';
import {GameListComponent} from './games/game-list.component';
import {ThumbComponent} from './shared/thumb.component';
 
@NgModule({
  declarations: [
    AppComponent,
    VirtualMachineComponent,
    VirtualMachinesComponent,
    GameListComponent,
    ThumbComponent
    
  ],
  imports: [
        BrowserModule, FormsModule,HttpClientModule  //<<<< and here
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }