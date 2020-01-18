<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CStudyMaterial extends Model
{

    protected $guarded = [];

    public function tags(){
        return $this->morphToMany('App\Tag', 'taggable');
    }

}
