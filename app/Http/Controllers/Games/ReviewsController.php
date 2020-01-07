<?php

namespace App\Http\Controllers\Games;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Game;
use App\Review;

class ReviewsController extends Controller
{
    public function index()
    {
        $reviews = Review::latest()->get();
        return view('games.reviews.index', ['reviews' => $reviews]);
    }

    public function create(Game $game)
    {
        return view('games.reviews.create', ['game' => $game]);
    }

    public function store(Game $game)
    {
        $this->validate(request(), [
            'body' => 'required|min:3'
        ]);

        $game->addReview(request('body'), auth()->id());
        
        return back();
    }

    public function show(Review $review)
    {
        return view('games.reviews.show', ['review' => $review]);
    }
}
