@extends('layouts/app')

@section('content')

    @foreach($reviews as $review)
        <div class="col-12 mb-3">
            <div class="card">
                <div class="card-block">
 
                    <p class="card-text">{{ $review->user->name }} left a <a href="/games/reviews/{{$review->id}}">review</a>
                        for <a
                                href="/games/games/{{ $review->game->id }}">{{ $review->game->title }}</a> {{$review->created_at->diffForHumans()}}
                    </p>
                </div>
            </div>
        </div>
    @endforeach

@endsection
