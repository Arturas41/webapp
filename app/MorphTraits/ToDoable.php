<?php
 
namespace App\MorphTraits;

use App\ToDo;
 
trait ToDoable
{

    public function toDos(){
        return $this->morphToMany('App\ToDo', 'to_doable');
    }

    public function updateToDos($newToDos){

        $ids = [];

        foreach ($newToDos as $key => $value){
            if(array_key_exists('id', $value)){
                $toDoId = ToDo::where('id',$value['id'])->update(['name' => $value['name']]);
                $toDo = ToDo::where('id',$value['id'])->first();
                $toDo->updatePriority($value['priority']['value']);
                array_push($ids, $toDo->id);
            }else{
                $toDo = ToDo::create(['name' => $value['name']]);
                $this->toDos()->attach([$toDo->id]);
                $toDo->createPriority($value['priority']['value']);
                array_push($ids, $toDo->id);
            }
        }

        //$this->toDos()->whereNotIn('to_dos.id', $ids)->delete(); //this one doesnt trigger static deleting method
        $this->toDos()->whereNotIn('to_dos.id', $ids)->each(function($toDos) {
            $toDos->delete();
        });
        $this->toDos()->wherePivotNotIn('to_do_id', $ids)->detach();
        
    }

}