import {Component} from '@angular/core';
 
@Component({
    selector: 'game-list',
    templateUrl: './game-list.component.html'
})
export class GameListComponent {
    pageTitle = 'Dynamic! Game List';
    imageWidth = 45;
    imageMargin = 1;
    games = [
        {
            "gameId": 1,
            "gameName": "Castlevania",
            "gameCode": "AAA-0101",
            "releaseDate": "September 26, 1986",
            "description": "Action-adventure game series created and developed by Konami.",
            "price": 19.99,
            "thumbRating": 5.0,
            "imageUrl": "./assets/images/castlevania.png"
        },
        {
            "gameId": 2,
            "gameName": "Dr Mario",
            "gameCode": "AAA-1100",
            "releaseDate": "July 27, 1990",
            "description": "Action puzzle game produced by Gunpei Yokoi and published by Nintendo.",
            "price": 15.99,
            "thumbRating": 3,
            "imageUrl": "./assets/images/drmario.png"
        }
    ];
}