<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CForumThread extends Model
{

    //protected $fillable = ['user_id', 'c_forum_channel_id', 'title', 'body'];
    protected $guarded = [];

    protected $with = ['creator', 'channel'];

    protected static function boot()
    {
        parent::boot();
 
        static::addGlobalScope('replyCount', function ($builder) {
            $builder->withCount('replies');
        });
    }

    public function path(){
        return '/c_forum/threads/' . $this->channel->slug . '/' . $this->id;
    }

    public function replies(){
        return $this->hasMany(CForumReply::class);
    }

    public function creator(){
        return $this->belongsTo(User::class, 'user_id');
    }

    public function channel()
    {
        return $this->belongsTo(CForumChannel::class, 'c_forum_channel_id');
    }

    public function addReply($reply){
        $this->replies()->create($reply);
    }

    public function scopeFilter($query, $filters)
    {
        return $filters->apply($query);
    }
}
