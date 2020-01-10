<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CForumThread extends Model
{

    protected $guarded = ['body'];

    public function path(){
        return '/c_forum/threads/' . $this->id;
    }

    public function replies(){
        return $this->hasMany(CForumReply::class);
    }

    public function creator(){
        return $this->belongsTo(User::class, 'user_id');
    }

    public function addReply($reply){
        $this->replies()->create($reply);
    }
}
