<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    protected $fillable = ['name'];

    public function cStudyMaterials(){
        return $this->morphedByMany('App\CStudyMaterial', 'taggable');
    }

    public function cStudyTests(){
        return $this->morphedByMany('App\CStudyTest', 'taggable');
    }

}
