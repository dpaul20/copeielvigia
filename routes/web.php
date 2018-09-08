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
Route::group(['middleware' => 'auth'], function() {
    Route::get('/noticia/lista', 'NoticiasListController@index');

	Route::get('/groups/{group}/lista', 'GroupListController@index');

	Route::get('/noticia/create', 'NoticiaController@create');

	Route::get('/noticia/nota/{noticia}/edit', 'NoticiaController@edit');

	Route::patch('/noticia/nota/{noticia}', 'NoticiaController@update');

	Route::delete('/noticia/nota/{noticia}', 'NoticiaController@destroy');

	Route::post('/noticia/nota', 'NoticiaController@store');
});

Route::get('/', 'CopeiController@index');

Route::post('/', 'AfiliadoController@store');

Route::get('/copei/nosotros', 'CopeiUsController@index');

Route::get('/noticias/', 'NoticiaController@index');

Route::get('/noticia/nota/{noticia}', 'NoticiaController@show');

Route::get('/contactos', 'CopeiContactController@index');

Route::get('/descargas', 'CopeiDownloadController@index');

Route::get('/jdc', 'CopeiJdcController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
