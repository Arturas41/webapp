<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CForumReply;
use App\Favorite;

class FavoritesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function store(CForumReply $reply){
        $reply->favorite();
        //$reply->favorites()->create(['user_id' => auth()->id()]);
        //Favorite::create([
        //    'user_id' => auth()->id(),
        //    'favorited_id' => $reply->id,
        //    'favorited_type' => get_class($reply)
        //]);
    }
}

