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
//// Display users, subs and front page
    Route::get('/', 'Angleslash\PostController@frontpage');
    Route::get('u/{user}', 'UserController@showAngleslashProfile');
    Route::get('r/{sub}', 'Angleslash\SubController@show');
// Checking if the user is signed in (using AJAX)
    Route::get('authcheck', function () {
        return json_encode(Auth::check());
    });
// Creating and storing a new sub
    Route::get('sub/new', [
        'middleware' => 'auth',
        'uses' => 'Angleslash\SubController@displayform'
    ]);

    Route::post('sub/new', [
        'middleware' => 'auth',
        'uses' => 'Angleslash\SubController@storesub'
    ]);
// Creating and storing a new post / link
    Route::get('post/new', [
        'middleware' => 'auth',
        'uses' => 'Angleslash\PostController@displayform',
    ]);

    Route::post('post/new', [
        'middleware' => 'auth',
        'uses' => 'Angleslash\PostController@storepost'
    ]);
// Voting on posts / links
    Route::post('vote', [
        'middleware' => 'auth',
        'uses' => 'Angleslash\VoteController@vote'
    ]);
});

Route::prefix('vue_playground')->group(function () {
    Route::get('/', [
        'uses' => 'VuePlayground\VuePlaygroundController@index'
    ]);
});

Route::prefix('general_playground')->group(function () {
    Route::get('/laravel_collections', [
        'uses' => 'GeneralPlayground\GeneralPlaygroundController@laravel_collections'
    ]);
    Route::get('/carbon', [
        'uses' => 'GeneralPlayground\GeneralPlaygroundController@carbon'
    ]);
    Route::get('/javascript_douglas_crockford', [
        'uses' => 'GeneralPlayground\GeneralPlaygroundController@javascriptDouglasCrockford'
    ]);
});

Route::prefix('html_parser')->group(function () {
    Route::get('/index', [
        'uses' => 'HtmlParser\HtmlParserController@index'
    ]);
});

Route::prefix('games')->group(function () {
    Route::get('/games', 'Games\GamesController@index');
    Route::get('/games/create',  'Games\GamesController@create');
    Route::get('/games/{id}', 'Games\GamesController@show');
    Route::post('/games', 'Games\GamesController@store');
});

