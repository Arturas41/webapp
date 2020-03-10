import {Injectable} from '@angular/core';
import {HttpClient, HttpErrorResponse} from '@angular/common/http';
import {Observable, throwError} from 'rxjs';
import {catchError, tap, map} from 'rxjs/operators';
 
import {IGame} from './game.component';
 
@Injectable({
    providedIn: 'root'
})
export class GameService {
    private gameUrl = 'http://homestead.test/angular_local_api';
 
    constructor(private http: HttpClient) {
    }
 
    getGames(): Observable<IGame[]> {
        return this.http.get<IGame[]>(this.gameUrl).pipe(
            tap(data => console.log('All: ' + JSON.stringify(data))),
            catchError(this.handleError)
        );
    }
 
    private handleError(err: HttpErrorResponse) {
 
        let errorMessage = '';
        if (err.error instanceof ErrorEvent) {
 
            errorMessage = `An error occurred: ${err.error.message}`;
        } else {
 
            errorMessage = `Server returned code: ${err.status}, error message is: ${err.message}`;
        }
        console.error(errorMessage);
        return throwError(errorMessage);
    }
}