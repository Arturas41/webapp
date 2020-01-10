<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */
use App\User;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(User::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'email_verified_at' => now(),
        'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
        'remember_token' => Str::random(10),
    ];
});

$factory->define( App\Tag::class, function ( $faker ) {
    return [
        'name' => $faker->name
    ];
});

$factory->define( App\LearnTopic::class, function ( $faker ) {
    return [
        'user_id' => function () {
            return factory( 'App\User' )->create()->id;
        },
        'title' => $faker->sentence
    ];
} );

$factory->define( App\Component::class, function ( $faker ) {
    return [
        'url' => '/test',
        'title' => $faker->sentence,
        'description' => $faker->sentence
    ];
} );

$factory->define( App\CForumThread::class, function($faker){
    return[
        'user_id' => function(){
            return factory('App\User')->create()->id;
        },
        'title' => $faker->sentence,
        'body' => $faker->paragraph
    ];
});

$factory->define( App\CForumReply::class, function($faker){
    return[
        'c_forum_thread_id' => function(){
            return factory('App\CForumThread')->create()->id;
        }, 
        'user_id' => function(){
            return factory('App\User')->create()->id;
        },
        'body' => $faker->paragraph
    ];
});
