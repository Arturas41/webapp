@extends('layouts/app')

@section('content')
    <div class="container">

                        <ul class="nav navbar-nav">
                            <li><a href="/c_forum/threads">All Threads</a></li>
                            &nbsp;<li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Channels
                                    <span class="caret"></span></a>
                                <ul class="dropdown-menu">

                                    @foreach($channels as $channel)
                                        <li><a href="/c_forum/threads/{{$channel->slug}}">{{$channel->name}}</a></li>
                                    @endforeach
                                </ul>
                            </li>
                        </ul>

        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Forum Threads</div>
 
                    <div class="panel-body">
                        @foreach($threads as $thread)
                            <article>
                                <div class="level">
                                    <h4 class="flex">
                                        <a href="{{ $thread->path() }}">{{ $thread->title }}</a>
                                    </h4>
                                    <a href="{{$thread->path()}}">
                                        <strong>{{$thread->replies_count}} {{ str_plural('reply', $thread->replies_count) }}</strong>
                                    </a>
                                </div>
                                <div class="body">{{ $thread->body }}</div>
                            </article>
                            <hr>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
