<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CForumReply extends Model
{

    use FavoriteableTrait, RecordsActivityTrait;
    //protected $fillable = ['body', 'user_id'];
    protected $guarded = [];

    protected $with = ['owner', 'favorites'];

    public function owner(){
        return $this->belongsTo(User::class, 'user_id');
    }
}
