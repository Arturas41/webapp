<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
*/
Route::get('/', 'ComponentController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
