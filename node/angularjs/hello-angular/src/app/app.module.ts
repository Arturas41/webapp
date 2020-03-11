import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';  //<<<< import it here
import {HttpClientModule} from '@angular/common/http';
import {RouterModule} from '@angular/router';

import {HomepageComponent} from './home/homepage.component';
import { AppComponent } from './app.component';
import { VirtualMachineComponent } from './virtual-machine/virtual-machine.component';
import { VirtualMachinesComponent } from './virtual-machines/virtual-machines.component';
import {GameListComponent} from './games/game-list.component';
import {GameDetailComponent} from './games/game-detail.component';
import {ThumbComponent} from './shared/thumb.component';
 
@NgModule({
  declarations: [
    AppComponent,
    VirtualMachineComponent,
    VirtualMachinesComponent,
    GameListComponent,
    ThumbComponent,
    HomepageComponent
    
  ],
  imports: [
        BrowserModule, FormsModule,HttpClientModule,
        RouterModule.forRoot([
            {path: 'games', component: GameListComponent},
            {
                path: 'games/:id',
                component: GameDetailComponent
            },
            {path: 'home', component: HomepageComponent},
            {path: '', redirectTo: 'home', pathMatch: 'full'},
            {path: '**', redirectTo: 'home', pathMatch: 'full'}
        ]),
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }