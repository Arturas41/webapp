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
    Route::get('/highlight_your_code', [
        'uses' => 'GeneralPlayground\GeneralPlaygroundController@highlightYourCode'
    ]);
});

Route::prefix('html_parser')->group(function () {
    Route::post('/crawl_url', [
        'uses' => 'HtmlParser\HtmlParserController@crawlUrl'
    ]);
});

Route::prefix('test_regex')->group(function () {
    Route::post('/test_regex', [
        'uses' => 'TestRegex\TestRegexController@testRegex'
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
    
    Route::get('/materials', 'CStudy\MaterialController@index');
    Route::get('/materials/{material}', 'CStudy\MaterialController@show');
    Route::post('/materials', 'CStudy\MaterialController@store');
    Route::delete('/materials/{material}', 'CStudy\MaterialController@destroy');
    Route::patch('/materials/{material}', 'CStudy\MaterialController@update');

});


Route::get('/angular_local_api', function () {
    return [["gameId" => 1,
        "gameName" => "Castlevania",
        "gameCode" => "AAA-0101",
        "releaseDate" => "September 26, 1986",
        "description" => "Action-adventure game series created and developed by Konami.",
        "price" => 19.99,
        "thumbRating" => 5.0,
        "imageUrl" => "./assets/images/castlevania.png"
    ],
        [
            "gameId" => 2,
            "gameName" => "Dr Mario",
            "gameCode" => "AAA-1100",
            "releaseDate" => "July 27, 1990",
            "description" => "Action puzzle game produced by Gunpei Yokoi and published by Nintendo.",
            "price" => 15.99,
            "thumbRating" => 3,
            "imageUrl" => "./assets/images/drmario.png"
        ],
        [
            "gameId" => 3,
            "gameName" => "Kid Icarus",
            "gameCode" => "AAA-0048",
            "releaseDate" => "December 19, 1986",
            "description" => "Kid Icarus revolves around protagonist Pit's quest for three sacred treasures.",
            "price" => 20.99,
            "thumbRating" => 4,
            "imageUrl" => "./assets/images/kidicarus.png"
        ],
        [
            "gameId" => 4,
            "gameName" => "Legend Of Zelda",
            "gameCode" => "AAA-0049",
            "releaseDate" => "February 21, 1986",
            "description" => "Link is often given the task of rescuing Princess Zelda and the kingdom of Hyrule from Ganon.",
            "price" => 29.95,
            "thumbRating" => 5,
            "imageUrl" => "./assets/images/legendofzelda.png"
        ],
        [
            "gameId" => 5,
            "gameName" => "Mega Man",
            "gameCode" => "AAA-1042",
            "releaseDate" => "December 17, 1987",
            "description" => "Mega Man is an android originally named Rock, created as a lab assistant by the scientist Dr. Light.",
            "price" => 15.95,
            "thumbRating" => 4.5,
            "imageUrl" => "./assets/images/megaman.png"
        ],
        [
            "gameId" => 6,
            "gameName" => "Metroid",
            "gameCode" => "AAA-4511",
            "releaseDate" => "August 6, 1986",
            "description" => "Metroid follows space-faring bounty hunter Samus Aran, who protects the galaxy from the Space Pirates.",
            "price" => 10.95,
            "thumbRating" => 3,
            "imageUrl" => "./assets/images/metroid.png"
        ],
        [
            "gameId" => 7,
            "gameName" => "Super Mario Bros",
            "gameCode" => "AAA-3325",
            "releaseDate" => "September 13, 1985",
            "description" => "Mario finds power-ups and items that give him special magic powers such as fireball-throwing and size-changing into giant and miniature sizes.",
            "price" => 40.95,
            "thumbRating" => 5,
            "imageUrl" => "./assets/images/supermariobros.png"]];
});