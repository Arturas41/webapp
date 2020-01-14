<?php
 
namespace App;
 
trait RecordsActivityTrait
{

    protected static function bootRecordsActivityTrait()
    {
        if(auth()->guest()) return;

        foreach (static::getActivitiesToRecord() as $event) {
            static::$event(function ($model) use ($event){
                $model->recordActivity($event);
            });
        }

        //static::deleting(function ($model) {
        //    $model->activity()->delete();
        //});
    }

    protected static function getActivitiesToRecord()
    {
        return ['created', 'deleted'];
    }

    protected function recordActivity($event)
    {
        $this->activity()->create([
            'type' => $this->getActivityType($event),
            'user_id' => auth()->id(),
        ]);
    }

    public function activity()
    {
        return $this->morphMany('App\Activity', 'subject');
    }
 
    protected function getActivityType($event)
    {
        return $event . '_' . (new \ReflectionClass($this))->getShortName();
    }
}