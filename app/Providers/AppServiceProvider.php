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
        if ($this->app->isLocal()) {
            $this->app->register(\Barryvdh\Debugbar\ServiceProvider::class);
        }
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        \View::composer('c_forum.threads.*', function ($view) {
            $channels = \Cache::rememberForever('channels', function () {
                return CForumChannel::all();
            });
            $view->with('channels', $channels);
        });
    }
}
