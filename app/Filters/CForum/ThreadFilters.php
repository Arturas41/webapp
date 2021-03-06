<?php

namespace App\Filters\CForum;

use App\User;
use App\Filters\Filters;

class ThreadFilters extends Filters
{
    protected $filters = ['by'];

    protected function by($username){
        $user = User::where('name', $username)->firstOrFail();

        return $this->builder->where('user_id', $user->id);
    }

    protected function popular()
    {
        $this->builder->getQuery()->orders = [];
        $this->builder->orderBy('replies_count', 'desc');
    }
}
