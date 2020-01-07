<?php

namespace App\Http\Controllers\Games;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Game;
use App\Review;

class ReviewsController extends Controller
{
    public function store(Game $game)
    {
        $this->validate(request(), [
            'body' => 'required|min:3'
        ]);

        $game->addReview(request('body'), auth()->id());
        
        return back();
    }
}
