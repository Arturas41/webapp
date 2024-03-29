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

$factory->define(App\CForumChannel::class, function ($faker) {
    $name = $faker->word;
    return [
        'name' => $name,
        'slug' => $name
    ];
});

$factory->define( App\CForumThread::class, function($faker){
    return[
        'user_id' => function(){
            return factory('App\User')->create()->id;
        },
        'c_forum_channel_id' => function(){
            return factory('App\CForumChannel')->create()->id;
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

$factory->define(\Illuminate\Notifications\DatabaseNotification::class, function ($faker) {
    return [
        'id' => \Ramsey\Uuid\Uuid::uuid4()->toString(),
        'type' => 'App\Notifications\CForum\ThreadWasUpdated',
        'notifiable_id' => function () {
            return auth()->id() ?: factory('App\User')->create()->id;
        },
        'notifiable_type' => 'App\User',
        'data' => ['foo' => 'bar']
    ];
});

$factory->define( App\CStudyMaterial::class, function($faker){
    return[
        'user_id' => function(){
            return factory('App\User')->create()->id;
        },
        'reference' => $faker->url,
        'title' => $faker->sentence
    ];
});

$factory->define( App\Rating::class, function ( $faker ) {
    return [
        'value' => 0,
        'rated_id' => 0,
        'rated_type' => 'App\Model'
    ];
});