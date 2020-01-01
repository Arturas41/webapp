<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
*/


Auth::routes();

Route::get('/', 'ComponentController@index')->name('components');

Route::get('learn_topic', 'LearnTopicController@index');
Route::get('learn_topic/create', 'LearnTopicController@create');
Route::get('/learn_topic/{learn_topic}', 'LearnTopicController@show');
Route::post('/learn_topic', 'LearnTopicController@store');

Route::prefix('angleslash')->group(function () {
// Display users, subs and front page
    Route::get('/', 'PostController@frontpage');
    Route::get('u/{user}', 'UserController@show');
    Route::get('r/{sub}', 'SubController@show');
// Checking if the user is signed in (using AJAX)
    Route::get('authcheck', function () {
        return json_encode(Auth::check());
    });
// Creating and storing a new sub
    Route::get('sub/new', [
        'middleware' => 'auth',
        'uses' => 'SubController@displayform'
    ]);

    Route::post('sub/new', [
        'middleware' => 'auth',
        'uses' => 'SubController@storesub'
    ]);
// Creating and storing a new post / link
    Route::get('post/new', [
        'middleware' => 'auth',
        'uses' => 'PostController@displayform',
    ]);

    Route::post('post/new', [
        'middleware' => 'auth',
        'uses' => 'PostController@storepost'
    ]);
// Voting on posts / links
    Route::post('vote', [
        'middleware' => 'auth',
        'uses' => 'VoteController@vote'
    ]);
});

