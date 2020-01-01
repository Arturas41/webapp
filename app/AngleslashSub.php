<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AngleslashSub extends Model
{
    protected $table = 'angleslash_subs';
    protected $fillable = ['name', 'owner_id'];

    public function posts()
    {
        return $this->hasMany('App\AngleslashPost', 'sub_id');
    }

    public function owner()
    {
        return $this->belongsTo('App\User');
    }
}
