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

}
