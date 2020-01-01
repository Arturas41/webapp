<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AngleslashPost extends Model
{
    protected $table = 'angleslash_posts';
    protected $fillable = ['title', 'url', 'sub_id', 'user_id'];

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function sub()
    {
        return $this->belongsTo('App\AngleslashSub','sub_id');
    }

    public function votes()
    {
        return $this->hasMany('App\AngleslashPostVote');
    }

    public function tags(){
        return $this->belongsToMany('App\AngleslashTag')->withTimestamps();
    }
}
