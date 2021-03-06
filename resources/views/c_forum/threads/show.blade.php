@extends('layouts.app')
 
@section('content')
    <thread-view :initial-replies-count="{{ $thread->replies_count }}" inline-template>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <a href="#">
                                <img src="{{ $thread->creator->avatar_path }}"
                                     alt="{{ $thread->creator->name }}"
                                     width="25"
                                     height="25"
                                     class="mr-1">
                            </a> posted:
                            {{ $thread->title }}
                        </div>
                        <div class="panel-body">
                            {{ $thread->body }}
                        </div>
                    </div>

                    <replies @added="repliesCount++" @removed="repliesCount--"></replies>

                </div>
                <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <p>
                                This thread was created {{ $thread->created_at->diffForHumans() }} by
                            <a href="#">{{ $thread->creator->name }}</a> and currently has <span v-text="repliesCount"></span> replies.
                            </p>
                            <p>
                                <subscribe-button :active="{{ json_encode($thread->isSubscribedTo) }}"></subscribe-button>
                            </p>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            @can('update', $thread)
                                <form action="{{$thread->path()}}" method="POST">
                                    {{ csrf_field() }}
                                    {{ method_field('DELETE') }}
                                    <button class="btn btn-link">Delete Thread</button>
                                </form>
                            @endcan
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </thread-view>
@endsection
