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
        $this->middleware('auth', ['except' => 'index']);
    }

    public function index($channelId, CForumThread $thread, Request $request){
        return $thread->replies()->paginate(2);

    }

    public function store($channelId, CForumThread $thread, Request $request){

        $this->validate($request, [
           'body' => 'required'
        ]);

        $reply = $thread->addReply([
            'body' => request('body'),
            'user_id' => auth()->id()
        ]);

        if (request()->expectsJson()) {
            return $reply->load('owner');
        }

        return back()->with('flash', 'Your reply was published!');
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
