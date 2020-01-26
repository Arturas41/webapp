<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CStudyMaterial extends Model
{

    protected $guarded = [];

    public function path(){
        return '/c_study/materials/' . $this->id;
    }

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
