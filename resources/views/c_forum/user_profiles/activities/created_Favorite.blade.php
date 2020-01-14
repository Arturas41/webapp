<div class="panel panel-default">
    <div class="panel-heading">
        <div class="level">
            <span class="flex">
                {{ $user->name }} favorited a reply 
                @if($activity->subject)
                    <a href="{{ $activity->subject->favorited->path() }}">{{$activity->subject->favorited->body}}</a>
                @endif
            </span>
        </div>
    </div>
    <div class="panel-body">
        @if($activity->subject)
            {{ $activity->subject->favorited->body }}
        @else
            [ Reply deleted ]
        @endif
    </div>
</div>
