<?php
 
namespace App\MorphTraits;

use App\Tag;
 
trait Rateable
{
    public function rating(){
        return $this->morphOne('App\Rating', 'rated');
    }

    public function updateRating($rating = 2.5){
        $this->rating()->update(['value' => $rating]);
    }

    public function createRating($rating = 2.5){
        $this->rating()->create(['value' => $rating]);
    }
}