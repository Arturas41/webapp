<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sub;
use App\Post;
use App\PostVote;
use App\Http\Requests\PostFormRequest;

class PostController extends Controller
{
    public function show($sub, $postId)
    {
        $sub = Sub::where('name', $sub)->firstOrFail();
        $post = Post::find($postId);

        return view('post')
            ->with('title', $post->title)
            ->with('sub', $post->sub->name)
            ->with('post', $post);
    }

    public function frontpage()
    {
        return view('sub')
            ->with('title', 'Front Page')
            ->with('posts', Post::paginate(15));
    }

    public function displayform()
    {
        return view('forms.submit')
            ->with('title', 'New Post');
    }

    public function storepost(PostFormRequest $request)
    {
        $post = new Post;

        $post->title = $request->get('title');
        $post->url = $request->get('url');
        $post->sub_id = Sub::where('name', $request->get('sub'))->first()->id;
        $post->user_id = \Auth::id();
        $post->save();

        return \Redirect::to('/angleslash');
    }
}
