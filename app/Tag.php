<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    public function learnTopics()
    {
        return $this->belongsToMany(LearnTopic::class);
    }
}
