<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\MorphTraits\Taggable;
use App\MorphTraits\Rateable;
use App\MorphTraits\Prioritable;
use App\MorphTraits\ToDoable;

class CStudyMaterial extends Model
{
    use Taggable, Rateable, Prioritable, ToDoable;

    protected $guarded = [];

    protected static function boot()
    {
        parent::boot();

        static::deleting(function($model) {
            $model->tags()->detach();
        });

        static::deleting(function($model) {

            $model->toDos()->each(function($toDos) {
                $toDos->delete();
            });

            $model->toDos()->detach();
        });

        static::deleting(function($model) {
            $model->rating()->delete();
        });

        static::deleting(function($model) {
            $model->priority()->delete();
        });
    }

    public function path(){
        return '/c_study/materials/' . $this->id;
    }

    public function user(){
        return $this->belongsTo(User::class, 'user_id')->select(array('id', 'name'));
    }

    public function previousMaterials(){
        return $this->belongsToMany('App\CStudyMaterial', 'c_study_material_previous_current', 'current_id', 'previous_id');
    }

    public function nextMaterials(){
        return $this->belongsToMany('App\CStudyMaterial', 'c_study_material_previous_current', 'previous_id', 'current_id');
    }
}
