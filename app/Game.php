<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function reviews()
    {
        return $this->hasMany(Review::class);
    }

    public function scopePub2($query){
        return $query->where('publisher', '=', 'pub2');
    }

    public function addReview($body, $userid){
        $this->reviews()->create(['body' => $body, 'user_id' => $userid]);
    }
}
