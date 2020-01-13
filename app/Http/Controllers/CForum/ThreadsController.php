<?php

namespace App\Http\Controllers\CForum;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CForumThread;
use App\CForumChannel;
use App\User;
use App\Filters\CForum\ThreadFilters;

class ThreadsController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth')->except(['index', 'show']);
    }

    public function index(CForumChannel $channel, ThreadFilters $filters){
        $threads = CForumThread::latest()->filter($filters);

        if ($channel->exists) {
            $threads = $threads->where('c_forum_channel_id', $channel->id);
        }

        $threads = $threads->get();

        if (request()->wantsJson()) {
            return $threads;
        }

        return view('c_forum.threads.index', compact('threads'));
    }

    public function create()
    {
        return view('c_forum.threads.create');
    }

    public function show($channelId, CForumThread $thread){
        return view('c_forum.threads.show', [
            'thread' => $thread,
            'replies' => $thread->replies()->paginate(10)
        ]);
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

    public function destroy($channelId, CForumThread $thread){
        $this->authorize('update', $thread);
        //$thread->replies()->delete(); //done on model boot
        $thread->delete();

        if (request()->wantsJson()) {
            return response([], 204);
        }

        return redirect('/c_forum/threads');
    }

}
