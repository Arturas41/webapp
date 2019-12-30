<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LearnTopic extends Model
{
    public function UnknownLearnTopics()
    {
        return $this->belongsToMany(self::class, 'unknown_learn_topic_parent_id');
    }

    public function tags()
    {
        return $this->belongsToMany(Tag::class);
    }

}
