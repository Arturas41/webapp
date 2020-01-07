<?php

namespace App\Http\Controllers\Games;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Game;
use App\User;

class GamesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except(['index', 'show']);
    }

    public function index(){
        $games = Game::all();

        $activeusers = User::activeusers();

        return view('games/index', ['games' => $games, 'activeusers' => $activeusers]);
    }

    public function show(Game $id){
        return view('games/show', ['game' => $id]);
    }

    public function create(){

        return view('games.create');
    }

    public function store(Request $request){
        $this->validate(request(),[
            'title' => 'required|unique:games',
            'publisher' => 'required',
            'releasedate' => 'required',
            'image' => 'required',
        ]);

        $game = new Game();
        
        $game->title = $request->get('title');
        $game->publisher = $request->get('publisher');
        $game->releasedate = $request->get('releasedate');
        $game->image = request()->file('image')->store('public/images');
        $game->user_id = auth()->id();
        $game->save();

        return redirect('/games/games');
    }
}
