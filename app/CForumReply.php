<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CForumReply extends Model
{

    use FavoriteableTrait, RecordsActivityTrait;

    protected $guarded = [];

    protected $with = ['owner', 'favorites'];

    protected $appends = ['favoritesCount', 'isFavorited'];

    public function path()
    {
        return $this->thread->path() . '#reply-' . $this->id;
    }

    public function owner(){
        return $this->belongsTo(User::class, 'user_id');
    }

    public function thread()
    {
        return $this->belongsTo(CForumThread::class, 'c_forum_thread_id');
    }

    public function mentionedUsers()
    {
        preg_match_all('/@([\w\-]+)/', $this->body, $matches);
        return $matches[1];
    }

    //public function setBodyAttribute($body)
    //{
    //    $this->attributes['body'] = $body;
    //}
}
