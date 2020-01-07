<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tag;
use App\LearnTopic;
use Illuminate\Support\Facades\Auth;

class LearnTopicController extends Controller
{

//    public function __construct()
//    {
//        $this->middleware('auth');
//    }

    public function index(){
        $learnTopics = LearnTopic::latest()->get();

        return view('learn_topic.index', compact( 'learnTopics' ));
    }

    public function create(){
        return view('learn_topic.create');
    }

    public function store( Request $request ) {
        $learnTopic = new LearnTopic();
        $learnTopic->title = $request->input('title');
        $learnTopic->url = $request->input('url');
        $learnTopic->user_id = auth()->id();
        $learnTopic->note = $request->input('note');
        $learnTopic->save();

        return back();
    }

    public function show( LearnTopic $learnTopic ) {
        return view('learn_topic.show', compact( 'learnTopic' ));
    }

    public function edit( LearnTopic $learnTopic ) {
        //
    }

    public function update( Request $request, LearnTopic $learnTopic ) {
        //
    }

    public function destroy( LearnTopic $learnTopic ) {
        //
    }
}

