import {Component, OnInit} from '@angular/core';
import {IGame} from './game.component';
import {GameService} from './game.service';
 
@Component({
    selector: 'game-list',
    templateUrl: './game-list.component.html',
    styles: ['th:nth-child(3) {color:deepskyblue}']
})
export class GameListComponent implements OnInit {
    pageTitle = 'Dynamic! Game List';
    imageWidth = 45;
    imageMargin = 1;
    showImage = true;
    listItem = 'Mario';
    _listFilter = '';
    get listFilter(): string {
        return this._listFilter;
    }
    set listFilter(value: string) {
        this._listFilter = value;
        this.filteredGames = this.listFilter ? this.doFilter(this.listFilter) : this.games;
    }
    filteredGames: IGame[] = [];
    games: IGame[] = [

    ];
    
    
    constructor(private gameService: GameService) {
        this.listFilter = '';
    }
    
    ngOnInit(): void {
        this.gameService.getGames().subscribe(
            games => {
                this.games = games;
                this.filteredGames = this.games;
            },
            error => this.errorMessage = <any>error
        );
    }
    
    onRatingClicked(message: string): void {
        this.pageTitle = 'Game List: ' + message;
    }
    
    toggleImage(): void {
        this.showImage = !this.showImage;
    }
    

    
    doFilter(filterBy: string): IGame[] {
        filterBy = filterBy.toLocaleLowerCase();
        return this.games.filter((game: IGame) =>
            game.gameName.toLocaleLowerCase().indexOf(filterBy) !== -1);
    }
}