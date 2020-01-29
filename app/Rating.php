<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
    protected $fillable = ['value'];

    public $timestamps = false;

    public function rated()
    {
        return $this->morphTo();
    }
}
