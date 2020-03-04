<?php

namespace App\Filters\CStudy;

use App\Filters\Filters;

class MaterialFilters extends Filters
{

    protected function tags($tags){
        $tags = explode(",", $tags);
        $builder = $this->builder->whereHas('tags', function ($query) use ($tags) {
            $query->whereIn('name', $tags);
        });
        return $builder;
    }
    
    protected function priorities($priorities){
        $priorities = array_map('intval', explode(',', $priorities));
        $builder = $this->builder->whereHas('priority', function ($query) use ($priorities) {
            $query->whereIn('value', $priorities);
        });
        return $builder;
    }
    
    protected function ratings($ratings){
        $ratings = explode(',', $ratings);
        $builder = $this->builder->whereHas('rating', function ($query) use ($ratings) {
            $query->whereIn('value', $ratings);
        });
        return $builder;
    }
    
    protected function created_at_from($date){
        $builder = $this->builder->where('created_at', '>' , $date);
        return $builder;
    }
    
    protected function created_at_to($date){
        $builder = $this->builder->where('created_at', '<' , $date);
        return $builder;
    }
}
