@extends('layouts.app')
 
@section('content')
    <thread-view :initial-replies-count="{{ $thread->replies_count }}" inline-template>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <a href="#">{{ $thread->creator->name }}</a> posted:
                            {{ $thread->title }}
                        </div>
                        <div class="panel-body">
                            {{ $thread->body }}
                        </div>
                    </div>

                    <replies :data="{{ $thread->replies }}" @added="repliesCount++" @removed="repliesCount--"></replies>

                    {{ $replies->links() }}
                    @if(auth()->check())
                        <form method="POST" action="{{$thread->path() . '/replies'}}">
                            {{csrf_field()}}
                            <div class="form-group">
                                <textarea name="body" id="body" class="form-control" placeholder="What do you think?" rows="5"></textarea>
                            </div>
                            <button type="submit" class="btn btn-default">Post</button>
                        </form>
                    @else
                        <p class="text-center">Please <a href="{{ route('login') }}">login</a> to respond.</p>
                    @endif
                </div>
                <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            This thread was created {{ $thread->created_at->diffForHumans() }} by
                            <a href="#">{{ $thread->creator->name }}</a> and currently has <span v-text="repliesCount"></span> replies.
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
