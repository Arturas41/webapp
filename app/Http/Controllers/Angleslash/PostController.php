<?php

namespace App\Http\Controllers\Angleslash;

use Illuminate\Http\Request;
use App\AngleslashSub;
use App\AngleslashPost;
use App\AngleslashPostVote;
use App\Http\Requests\Angleslash\PostFormRequest;
use App\Http\Controllers\Controller;

class PostController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except(['index']);
    }
   
    public function index(){
        return AngleslashPost::with('sub','user')->get();
    }

    public function store(PostFormRequest $request)
    {
        $this->validate(request(), [
            'title' => 'required|max:100',
            'url' => 'required|max:2083|active_url',
            'sub' => 'required|exists:angleslash_subs,name'
        ]);

        $post = new AngleslashPost;

        $post->title = request('title');
        $post->url = request('url');
        $post->sub_id = AngleslashSub::where('name', request('sub'))->first()->id;
        $post->user_id = \Auth::id();
        $post->save();

        return $post;
    }


}
