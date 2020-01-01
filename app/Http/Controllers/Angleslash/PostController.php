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
    public function show($sub, $postId)
    {
        $sub = AngleslashSub::where('name', $sub)->firstOrFail();
        $post = AngleslashPost::find($postId);

        return view('angleslash.post')
            ->with('title', $post->title)
            ->with('sub', $post->sub->name)
            ->with('post', $post);
    }

    public function frontpage()
    {
        return view('angleslash.sub')
            ->with('title', 'Front Page')
            ->with('posts', AngleslashPost::paginate(15));
    }

    public function displayform()
    {
        return view('angleslash.forms.submit')
            ->with('title', 'New Post');
    }

    public function storepost(PostFormRequest $request)
    {
        $post = new AngleslashPost;

        $post->title = $request->get('title');
        $post->url = $request->get('url');
        $post->sub_id = AngleslashSub::where('name', $request->get('sub'))->first()->id;
        $post->user_id = \Auth::id();
        $post->save();

        return \Redirect::to('/angleslash');
    }
}
