<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AngleslashPostVote extends Model
{
    protected $table = 'angleslash_post_votes';
    protected $fillable = ['type', 'user_id', 'post_id'];

    public function post()
    {
        return $this->belongsTo('App\AngleslashPost', 'vote_id');
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
