<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    public function reviews()
    {
        return $this->hasMany(Review::class);
    }

    public function scopePub2($query){
        return $query->where('publisher', '=', 'pub2');
    }

    public function addReview($body){
        $this->reviews()->create(['body' => $body]);
    }
}
