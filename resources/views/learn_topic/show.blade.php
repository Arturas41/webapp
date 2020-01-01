@extends('layouts/app')

@section('content')

    <div class="jumbotron">
        <h1>{{$learnTopic->title}}</h1>
        <div class="panel-body">
            Created by
            <a href="#">
                {{$learnTopic->creator->name}}
            </a>
            .Created at {{ $learnTopic->created_at->diffForHumans() }}
            Url: <a href="{{$learnTopic->url}}">
                Click here
            </a><br>
            Note: {!! nl2br(e($learnTopic->note)) !!}
        </div>
    </div>

@endsection
