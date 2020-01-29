<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
    protected $fillable = ['value'];

    public $timestamps = false;

    protected $casts = [
        'value' => 'float',
    ];

    public function rated()
    {
        return $this->morphTo();
    }
}
