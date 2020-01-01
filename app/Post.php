<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table = 'posts';
    protected $fillable = ['title', 'url', 'sub_id', 'user_id'];

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function sub()
    {
        return $this->belongsTo('App\Sub');
    }

    public function votes()
    {
        return $this->hasMany('App\PostVote');
    }
}
