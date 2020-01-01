<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AngleslashTag extends Model
{
    public function posts()
    {
        return $this->belongsToMany('App\AngleslashPost');
    }
}
