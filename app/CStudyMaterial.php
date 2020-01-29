<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\MorphTraits\Taggable;
use App\MorphTraits\Rateable;
use App\MorphTraits\Prioritable;

class CStudyMaterial extends Model
{
    use Taggable, Rateable, Prioritable;

    protected $guarded = [];

    protected static function boot()
    {
        parent::boot();

        static::deleting(function($model) {
            $model->tags()->detach();
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

}
