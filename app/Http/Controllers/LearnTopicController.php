<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tag;
use App\LearnTopic;

class LearnTopicController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(){
        return view('learn_topic.index');
    }

    public function create(){

        //TEST CODE

//        $tag = new Tag;
//        $tag->name = 'name';
//        $tag->save();
//
//        $tag = new Tag;
//        $tag->name = 'name1';
//        $tag->save();
//
//        $learnTopic = new LearnTopic;
//        $learnTopic->title = 'title';
//
//        $learnTopic->save();
//
//        $tags = Tag::find([1, 2]);
//        $learnTopic->tags()->attach($tags);

        return view('learn_topic.create');
    }
}

