<?php

namespace App\Http\Controllers\CForum;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CForumThread;

class ThreadsController extends Controller
{

    public function index(){
        $threads = CForumThread::latest()->get();

        return view('c_forum.threads.index', compact('threads'));
    }

    public function show(CForumThread $thread){
        return view('c_forum.threads.show', compact('thread'));
    }

}
