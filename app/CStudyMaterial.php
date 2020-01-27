<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\MorphTraits\Taggable;

class CStudyMaterial extends Model
{

    use Taggable;

    protected $guarded = [];

    public function path(){
        return '/c_study/materials/' . $this->id;
    }

}
