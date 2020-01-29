<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Priority extends Model
{
    protected $fillable = ['value'];

    public $timestamps = false;

    protected $table = 'priorities';

    public function prioritized()
    {
        return $this->morphTo();
    }
}
