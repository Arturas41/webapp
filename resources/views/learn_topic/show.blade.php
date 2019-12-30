@extends('layouts/app')

@section('content')

    <div class="jumbotron">
        <h1>{{$learnTopic->title}}</h1>
        <div class="panel-body">
            Created by {{$learnTopic->owner->name}}. Created at {{ $learnTopic->created_at->diffForHumans() }}
        </div>
        <div class="jumbotron"> Hashtags:
            @foreach($learnTopic->tags as $tag)
                {{$tag->name}}
            @endforeach
        </div>
    </div>

@endsection
