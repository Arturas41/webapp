<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\CForumChannel;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        \View::composer('c_forum.threads.*', function ($view) {
            $view->with('channels', CForumChannel::all());
        });
    }
}
