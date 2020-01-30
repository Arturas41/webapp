<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\MorphTraits\Prioritable;

class ToDo extends Model
{
    use Prioritable;

    protected $fillable = ['name'];

    protected $table = 'to_dos';

    protected $with = ['priority'];

    protected static function boot()
    {
        parent::boot();

        static::deleting(function($model) {
            $model->priority()->delete();
        });
    }

    public function cStudyMaterials(){
        return $this->morphedByMany('App\CStudyMaterial', 'to_doable');
    }

    public function cStudyTests(){
        return $this->morphedByMany('App\CStudyTest', 'to_doable');
    }

}
