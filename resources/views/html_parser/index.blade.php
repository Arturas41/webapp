@extends('layouts/app')

@section('content')

    @foreach($nodes as $node)
        {{$node}} <br>
    @endforeach

@endsection
