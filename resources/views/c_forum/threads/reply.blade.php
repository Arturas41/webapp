<div id="reply-{{ $reply->id }}" class="panel panel-default">
 
    <div class="panel-body">
        <div class="level">
            <h5 class="flex">
                <a href="/c_forum/user_profiles/{{ $thread->creator->id }}">{{$reply->owner->name}}</a> said {{ $reply->created_at->diffForHumans() }}
            </h5>
 
            <div>
                <form method="POST" action="/c_forum/replies/{{$reply->id}}/favorites">
                    {{csrf_field()}}
                    <button type="submit" class="btn btn-primary {{ $reply->isFavorited() ? 'disabled' : '' }}">
                        {{ $reply->favorites_count }} {{ str_plural('Favorite', $reply->favorites_count) }}
                    </button>
                </form>
            </div>
        </div>
    </div>
 
    <div class="panel-body">
        {{ $reply->body }}
    </div>
</div>
