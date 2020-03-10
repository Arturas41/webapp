import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
    template: `
    <div><h1>{{pageTitle}}</h1>
        <game-list></game-list>
    </div>`
})
export class AppComponent {
  pageTitle = 'Angular Games Viewer';
  game = 'Super Mario';
}
