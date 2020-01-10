<?php

namespace App\Http\Controllers\CForum;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CForumThread;

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

    public function show(CForumThread $thread){
        return view('c_forum.threads.show', compact('thread'));
    }

    public function store(Request $request){
        $thread = CForumThread::create([
            'user_id' => auth()->id(),
            'title' => request('title'),
            'body' => request('body')
        ]);
 
        return redirect($thread->path());
    }

}
