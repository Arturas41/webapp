<?php
 
namespace App\MorphTraits;

use App\Tag;
 
trait Taggable
{
    public function tags(){
        return $this->morphToMany('App\Tag', 'taggable');
    }

    public function addTags($tags){
        foreach ((array)$tags as $key => $value){
            $tag = Tag::firstOrCreate(['name' => $value]);
            
            if(!$this->hasTag($value)){
                $this->tags()->attach([$tag->id]);
            }
        }
    }

    public function hasTag($tagName){
        return $this->tags()->where('name', $tagName)->first();
    }
}