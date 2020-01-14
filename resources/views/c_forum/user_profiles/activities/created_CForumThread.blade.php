<div class="panel panel-default">
    <div class="panel-heading">
        <div class="level">
            <span class="flex">
                {{ $user->name }} published a thread
                @if($activity->subject)
                    <a href="{{ $activity->subject->path() }}">{{ $activity->subject->title }}</a>
                @endif
            </span>
        </div>
    </div>
    <div class="panel-body">
        @if($activity->subject)
            {{ $activity->subject->body }}
        @else
            [ Thread deleted ]
        @endif
    </div>
</div>