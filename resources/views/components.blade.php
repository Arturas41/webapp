@extends('layouts/app')

@section('content')

    @foreach($components as $component)
        <div class="jumbotron">
            <h1>{{$component['title']}}</h1>

            <p>{{$component['description']}}</p>

            <p><a class="btn btn-primary btn-lg" href="{{$component['url']}}" role="button">Click to enter</a></p>
        </div>
    @endforeach

@endsection
