@extends('layouts.app')
 
@section('content')
    <div class="container">
        <div class="page-header">
            <h1>
                {{ $user->name }}
                <small>registered {{ $user->created_at->diffForHumans() }}</small>
            </h1>
        </div>
 
        @foreach($threads as $thread)
            <div class="panel panel-default">
                <div class="panel-heading">
                    <a href="/c_forum/user_profiles/{{ $thread->creator->id }}">{{ $thread->creator->name }}</a> posted:
                    {{ $thread->title }}
                </div>
                <div class="panel-body">
                    {{ $thread->body }}
                </div>
            </div>
        @endforeach
        {{ $threads->links() }}
    </div>
@endsection
