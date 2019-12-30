@extends('layouts/app')

@section('content')

    @foreach($learnTopics as $learnTopic)
        <div class="jumbotron">
            <h1>
                <a href="{{ $learnTopic->path() }}">{{ $learnTopic->title }}</a>
            </h1>
        </div>
    @endforeach
@endsection
