@extends('layouts.app')
 
@section('content')
    <div class="container">
        <div class="page-header">
            <avatar-form :user="{{ $user }}"></avatar-form>
            <h1>
                {{ $user->name }}
                <small>registered {{ $user->created_at->diffForHumans() }}</small>
            </h1>
        </div>
 
        @foreach($activities as $date => $activity)
            <h3 class="page-header">{{ $date }}</h3>
                @foreach($activity as $record)
                    @include("c_forum.user_profiles.activities.{$record->type}", ['activity' => $record])
                @endforeach
        @endforeach


    </div>
@endsection
