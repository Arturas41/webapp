<?php
 
namespace App\MorphTraits;

use App\Tag;
 
trait Taggable
{

    public function tags(){
        return $this->morphToMany('App\Tag', 'taggable');
    }

    public function updateTags($newTags){
        
        $oldTags = $this->tags()->get(['name'])->map(function($oldTags) {
            return $oldTags->name;
        });

        foreach ($newTags->toBase()->diff($oldTags->toBase()) as $key => $value){
            $tag = Tag::firstOrCreate(['name' => $value]);
            $this->tags()->attach([$tag->id]);
        }

        foreach ($oldTags->toBase()->diff($newTags->toBase()) as $key => $value){
            $tag = Tag::firstOrCreate(['name' => $value]);
            $this->tags()->detach([$tag->id]);
        }

    }
}