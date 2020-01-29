<?php
 
namespace App\MorphTraits;
 
trait Prioritable
{
    public function priority(){
        return $this->morphOne('App\Priority', 'prioritized');
    }

    public function updatePriority($priority){
        $this->priority()->update(['value' => $priority]);
    }

    public function createPriority($priority){
        $this->priority()->create(['value' => $priority]);
    }
}