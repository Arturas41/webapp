<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\CForumThread' => 'App\Policies\CForum\ThreadPolicy',
        'App\CForumReply' => 'App\Policies\CForum\ReplyPolicy',
        'App\User' => 'App\Policies\UserPolicy',
        'App\CStudyMaterial' => 'App\Policies\CStudy\MaterialPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        //
    }
}
