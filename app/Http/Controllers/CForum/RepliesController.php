<?php

namespace App\Http\Controllers\CForum;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CForumThread;
use App\CForumReply;

class RepliesController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function store($channelId, CForumThread $thread, Request $request){
        $this->validate($request, [
            'body' => 'required'
        ]);

        $thread->addReply([
            'body' => request('body'),
            'user_id' => auth()->id()
        ]);

        return back();
    }

    public function destroy(CForumReply $reply)
    {
        $this->authorize('update', $reply);

        $reply->delete();

        //  if there is an ajax request, do not redirect
        if (request()->expectsJson()) {
            return response(['status' => 'Reply deleted']);
        }

        return back();
    }

    public function update(CForumReply $reply){
        $this->authorize('update', $reply);
        
        $reply->update(request(['body']));
    }

}
