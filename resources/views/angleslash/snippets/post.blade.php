<?php
$vote = App\AngleslashPostVote::where('user_id', Auth::id())->where('post_id', $post->id)->first();
$type = null;

if (!is_null($vote)) {
    $type = $vote->type;
}
?>
<div class="panel panel-default {{ $post->id }}">
    <div class="panel-body bg-info">
        <div class="col-xs-1">
            <span class="lead glyphicon glyphicon-menu-up vote {{ $type === 'up' ? 'active' : '' }}"
                  aria-hidden="true"></span>
        </div>
        <div class="col-xs-11">
            <a href="{{ $post->url }}">
                <h3>{{{ $post->title }}}</h3>
            </a>
        </div>
        <div class="col-xs-1">
            <span class="lead glyphicon glyphicon-menu-down vote {{ $type === 'down' ? 'active' : '' }}"
                  aria-hidden="true"></span>
        </div>
        <div class="col-xs-11">
{{--            <div class="votes">{{ $post->votes()->count() }} votes so far</div>--}}
        </div>
        <div class="col-xs-12">
            <span class="pull-right">
            submitted {{ Helper::timeAgo($post->created_at) }} ago by
            <a href="/angleslash/u/{{ $post->user->name }}">
                {{ $post->user->name }}
            </a>
            to
            <a href="/angleslash/r/{{ $post->sub->name }}">
                {{ $post->sub->name }}
            </a>

            @unless ($post->tags->isEmpty())
                    <p>
                @foreach($post->tags as $tag)
                    <span class="label label-danger">#{{ $tag->name }}</span>
                @endforeach
                    </p>
            @endunless
            </span>
        </div>
    </div>

</div>
