@extends('layouts/app')

@section('content')

    <table border="1">
        <tr>
            <th>Game</th>
            <th>Publisher</th>
            <th>Release dates</th>
        </tr>
        @foreach($games as $game)
        <tr>
            <td><a href="/games/games/{{ $game->id }}">{{ $game->title }}</a></td>
            <td>{{$game->publisher}}</td>
            <td>{{$game->releasedate}}</td>
        </tr>
        @endforeach
    </table>

@endsection
