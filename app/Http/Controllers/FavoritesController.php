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

        return back();
    }

    public function destroy(CForumReply $reply)
    {
        $reply->unfavorite();
    }
}

