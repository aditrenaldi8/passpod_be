<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();

Route::get('/', 'HomeController@index');

Route::group(['prefix' => 'order'], function () {
    Route::get('', 'OrderController@index')->middleware('auth');
	Route::post('', 'OrderController@create')->middleware('auth');
	Route::get('/insert', 'OrderController@insert')->middleware('auth');
	Route::get('/detail/{id}', 'OrderController@detail')->middleware('auth');
	Route::get('/add/{id}', 'OrderController@showAddForm')->middleware('auth');
	Route::post('/add', 'OrderController@add')->middleware('auth');
	Route::get('/history/{id}', 'OrderController@history')->middleware('auth');
	Route::get('/email/{id}', 'OrderController@email')->middleware('auth');
});

