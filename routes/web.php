<?php

use Illuminate\Support\Facades\Route;

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
Route::get('/', 'WelcomeController@welcome')->name('welcome');
Route::get('/pagination/fetch_data', 'WelcomeController@fetch_data');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::post('/post', 'HomeController@post')->name('post');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
