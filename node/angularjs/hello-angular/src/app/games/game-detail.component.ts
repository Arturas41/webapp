import {Component, OnInit} from '@angular/core';
import {ActivatedRoute, Router} from '@angular/router';
 
import {IGame} from './game.component';
import {GameService} from './game.service';
 
@Component({
    templateUrl: './game-detail.component.html',
    styleUrls: ['./game-detail.component.css']
})
export class GameDetailComponent implements OnInit {
    pageTitle = 'Game Detail';
    errorMessage = '';
    game: IGame | undefined;
 
    constructor(private route: ActivatedRoute,
                private router: Router,
                private gameService: GameService) {
    }
 
    ngOnInit() {
        const param = this.route.snapshot.paramMap.get('id');
        if (param) {
            const id = +param;
            this.getGame(id);
        }
    }
 
    getGame(id: number) {
        this.gameService.getGame(id).subscribe(
            game => this.game = game,
            error => this.errorMessage = <any>error);
    }
 
    onBack(): void {
        this.router.navigate(['/games']);
    }
 
}