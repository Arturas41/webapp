<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    public function scopePub2($query){
        return $query->where('publisher', '=', 'pub2');
    }
}
