<?php

namespace App\Filters;

use Illuminate\Http\Request;

abstract class Filters
{
    protected $request;
    protected $builder;
    protected $filters; //only child methods are set
 
    public function __construct(Request $request)
    {
        $this->request = $request;
        $this->setFilters();
    }
 
    public function apply($builder)
    {
        $this->builder = $builder;

        foreach ($this->getFilters() as $filter => $value) {
            if (method_exists($this, $filter)) {
                $this->$filter($this->request->$filter);
            }
        }
 
        return $builder;
    }

    protected function setFilters(){
        $child_methods = get_class_methods($this);
        $parent_methods = get_class_methods(get_parent_class($this));

        $this->filters = array_diff($child_methods, $parent_methods);
    }

    protected function getFilters() : array {
        return $this->request->only($this->filters);
    }
}
