<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
*/


Auth::routes();

Route::get('/', 'ComponentController@index')->name('components');

Route::get('learn_topic', 'LearnTopicController@index')->name('learn_topic.index');
Route::get('learn_topic/create', 'LearnTopicController@create')->name('learn_topic.create');
