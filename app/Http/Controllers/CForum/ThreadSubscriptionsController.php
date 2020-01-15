<?php

namespace App\Http\Controllers\CForum;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CForumThread;

class ThreadSubscriptionsController extends Controller
{

    public function store($channelId, CForumThread $thread, Request $request){
        $thread->subscribe();
    }

    public function destroy($channelId, CForumThread $thread)
    {
        $thread->unsubscribe();
    }

}
