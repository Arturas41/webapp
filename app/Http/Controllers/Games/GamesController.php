<?php

namespace App\Http\Controllers\Games;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Game;

class GamesController extends Controller
{
    public function index(){
        $games = Game::pub2()->get();
        return view('games/index', ['games' => $games]);
    }

    public function show($id){
        $game = Game::find($id);
        return view('games/show', ['game' => $game]);
    }
}
