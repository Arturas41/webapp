<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CForumThreadSubscription extends Model
{
    protected $guarded = [];
 
    public function thread()
    {
        return $this->belongsTo(CForumThread::class);
    }
}
