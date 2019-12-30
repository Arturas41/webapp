<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LearnTopic extends Model
{
    protected $with = ['tags'];

    public function path(){
        return '/learn_topic/' . $this->id;
    }

    public function parentTopics()
    {
        return $this->belongsToMany(self::class, 'parent_id');
    }

    public function tags()
    {
        return $this->belongsToMany(Tag::class);
    }

    public function owner()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

}
