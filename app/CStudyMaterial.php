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

    public function user(){
        return $this->belongsTo(User::class, 'user_id')->select(array('id', 'name'));
    }

}
