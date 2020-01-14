<div class="panel panel-default">
    <div class="panel-heading">
        <div class="level">
            <span class="flex">
                {{ $user->name }} submitted a reply 
                @if($activity->subject)
                    to <a href="{{ $activity->subject->thread->path() }}">{{ $activity->subject->thread->title }}</a>
                @endif
            </span>
        </div>
    </div>
    <div class="panel-body">
        @if($activity->subject)
            {{ $activity->subject->body }}
        @else
            [ Reply deleted ]
        @endif
    </div>
</div>
