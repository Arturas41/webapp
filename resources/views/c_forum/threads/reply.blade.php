<reply :attributes="{{ $reply }}" inline-template v-cloak>
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
            <div v-if="editing">
                <textarea v-model="body" class="form-control"></textarea>
                <button @click="update" class="btn btn-xs btn-success">Save</button>
                <button @click="editing = false" class="btn btn-xs btn-warning">Cancel</button>
            </div>
            

            <div v-else v-text="body">
            </div>
        </div>

        @can('update', $reply)
            <div class="panel-footer">
                <button @click="editing = true" class="btn btn-xs mr-1">Edit</button>
                <button @click="destroy" class="btn btn-xs btn-danger mr-1">Delete</button>
            </div>
        @endcan

    </div>
</reply>