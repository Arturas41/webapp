<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
*/

Auth::routes();
Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');

Route::get('/', 'ComponentController@index')->name('components');

//Route::get('/learn_topic', 'LearnTopicController@index');
//Route::get('/learn_topic/create', 'LearnTopicController@create');
//Route::get('/learn_topic/{learn_topic}', 'LearnTopicController@show');
//Route::post('/learn_topic', 'LearnTopicController@store');

Route::get('api/users', 'Api\UsersController@index')->middleware('auth');
Route::post('api/users/{user}/avatar', 'Api\UserAvatarController@store')->middleware('auth')->name('avatar');

Route::prefix('angleslash')->group(function () {

    Route::get('users/{user}', 'UserController@showAngleslashProfile');
    Route::get('posts', 'Angleslash\PostController@index');
    Route::post('posts', 'Angleslash\PostController@store');
    Route::post('subs', 'Angleslash\SubController@store');
    Route::get('subs/{sub}', 'Angleslash\SubController@show');

});

Route::prefix('general_playground')->group(function () {
    Route::get('/laravel_string_helpers', [
        'uses' => 'GeneralPlayground\GeneralPlaygroundController@laravelStringHelpers'
    ]);
    Route::get('/laravel_collections', [
        'uses' => 'GeneralPlayground\GeneralPlaygroundController@laravel_collections'
    ]);
    Route::get('/carbon', [
        'uses' => 'GeneralPlayground\GeneralPlaygroundController@carbon'
    ]);
});

Route::prefix('html_parser')->group(function () {
    Route::post('/crawl_url', [
        'uses' => 'HtmlParser\HtmlParserController@crawlUrl'
    ]);
});

Route::prefix('games')->group(function () {
    Route::get('/games', 'Games\GamesController@index');
    Route::get('/games/create',  'Games\GamesController@create');
    Route::get('/games/{id}', 'Games\GamesController@show');
    Route::post('/games', 'Games\GamesController@store');

    Route::get('/reviews', 'Games\ReviewsController@index');
    Route::get('/reviews/{game}/create', 'Games\ReviewsController@create');
    Route::post('/games/{game}/reviews', 'Games\ReviewsController@store');
    Route::get('/reviews/{review}', 'Games\ReviewsController@show');
});

Route::prefix('c_forum')->group(function(){
    Route::get('/threads', 'CForum\ThreadsController@index');
    Route::get('/threads/create', 'CForum\ThreadsController@create');
    Route::get('/threads/{channel}/{thread}', 'CForum\ThreadsController@show');
    Route::delete('/threads/{channel}/{thread}', 'CForum\ThreadsController@destroy');
    Route::post('/threads', 'CForum\ThreadsController@store');
    Route::get('/threads/{channel}', 'CForum\ThreadsController@index');

    Route::get('/threads/{channel}/{thread}/replies', 'CForum\RepliesController@index');
    Route::post('/threads/{channel}/{thread}/replies', 'CForum\RepliesController@store');

    Route::patch('/replies/{reply}', 'CForum\RepliesController@update');
    Route::post('/replies/{reply}/favorites', 'FavoritesController@store');
    Route::delete('/replies/{reply}/favorites', 'FavoritesController@destroy');
    Route::delete('/replies/{reply}', 'CForum\RepliesController@destroy');

    Route::get('/user_profiles/{user}', 'CForum\UserProfilesController@show');
    Route::get('/user_profiles/{user}/notifications', 'CForum\UserNotificationsController@index');
    Route::delete('/user_profiles/{user}/notifications/{notification}', 'CForum\UserNotificationsController@destroy');

    Route::post('/threads/{channel}/{thread}/subscriptions', 'CForum\ThreadSubscriptionsController@store')->middleware('auth');
    Route::delete('/threads/{channel}/{thread}/subscriptions', 'CForum\ThreadSubscriptionsController@destroy')->middleware('auth');
});

Route::prefix('c_study')->group(function(){
    
    Route::get('/', function(){
        return redirect()->route('asdf');
    });
    Route::get('/materials', [
            'as' => 'asdf',
            'uses' => 'CStudy\MaterialController@index'
        ]
    );
    Route::post('/materials', 'CStudy\MaterialController@store');

});


