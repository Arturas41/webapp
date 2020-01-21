<?php

namespace App\Http\Controllers\Games;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Game;
use App\Review;

class ReviewsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except(['index', 'show']);
    }

    public function index()
    {
        $reviews = Review::latest()->get();

        if (request()->wantsJson()) {
            return $reviews;
        }

        //return view('games.reviews.index', ['reviews' => $reviews]);
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

        $review = $game->addReview(request('body'), auth()->id());

        if (request()->wantsJson()) {
            $review = Review::find($review->id);
            return $review;
        }

        //return back();
    }

    public function show(Review $review)
    {
        if (request()->wantsJson()) {
            return $review;
        }

        //return view('games.reviews.show', ['review' => $review]);
    }
}
