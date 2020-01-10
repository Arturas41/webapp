<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CForumThread extends Model
{
    public function path(){
        return '/c_forum/threads/' . $this->id;
    }

    public function replies(){
        return $this->hasMany(CForumReply::class);
    }
}
