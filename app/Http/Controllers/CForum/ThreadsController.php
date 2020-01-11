<?php

namespace App\Http\Controllers\CForum;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CForumThread;
use App\CForumChannel;

class ThreadsController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth')->except(['index', 'show']);
    }

    public function index(){
        $threads = CForumThread::latest()->get();

        return view('c_forum.threads.index', compact('threads'));
    }

    public function create()
    {
        return view('c_forum.threads.create');
    }

    public function show($channelId, CForumThread $thread){
        return view('c_forum.threads.show', compact('thread'));
    }

    public function store(Request $request){

        $this->validate($request, [
            'title' => 'required',
            'body' => 'required',
            'c_forum_channel_id' => 'required|exists:c_forum_channels,id'
        ]);

        $thread = CForumThread::create([
            'user_id' => auth()->id(),
            'c_forum_channel_id' => request('c_forum_channel_id'),
            'title' => request('title'),
            'body' => request('body')
        ]);

        return redirect($thread->path());
    }

}
