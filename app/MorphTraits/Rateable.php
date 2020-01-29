<?php
 
namespace App\MorphTraits;
 
trait Rateable
{
    public function rating(){
        return $this->morphOne('App\Rating', 'rated');
    }

    public function updateRating($rating){
        $this->rating()->update(['value' => $rating]);
    }

    public function createRating($rating){
        $this->rating()->create(['value' => $rating]);
    }
}