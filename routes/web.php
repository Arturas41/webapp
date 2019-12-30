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
