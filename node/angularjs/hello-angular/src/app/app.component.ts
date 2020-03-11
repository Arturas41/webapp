import {Component} from '@angular/core';
 
@Component({
    selector: 'app-root',
    template: `
        <div class="container">
            <nav class='navbar navbar-expand-lg'>
                <ul class='nav nav-pills mr-auto'>
                    <li><a class='nav-link' routerLinkActive='active' [routerLink]="['/home']">Home</a></li>
                    <li><a class='nav-link' routerLinkActive='active' [routerLink]="['/games']">Games</a></li>
                </ul>
                <span class="navbar-text">{{pageTitle}}</span>
            </nav>
            <div class='container'>
                <router-outlet></router-outlet>
            </div>
        </div>`,
    styleUrls: ['./app.component.css']
})
export class AppComponent {
    pageTitle = 'Angular Games Viewer';
}