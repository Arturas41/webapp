import {Component, EventEmitter, Input, OnChanges, Output} from '@angular/core';
 
@Component({
    selector: 'game-thumb',
    templateUrl: './thumb.component.html',
    styleUrls: ['./thumb.component.css']
})
export class ThumbComponent implements OnChanges {
    @Input() rating: number;
    thumbWidth: number;
    @Output() ratingClicked: EventEmitter<string> =
        new EventEmitter<string>();
 
    ngOnChanges(): void {
        this.thumbWidth = this.rating * 95 / 5;
    }
            
    onClick(): void {
        this.ratingClicked.emit(`This game has a ${this.rating} thumb rating!`);
    }
}