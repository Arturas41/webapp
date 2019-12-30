<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LearnTopic extends Model
{
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

}
