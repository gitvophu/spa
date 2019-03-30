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

/* Client layout */

//Home layout
Route::get('/','HomeController@index');
//Product detail layout
Route::get('/product-detail','HomeController@product_detail');
//Blog detail layout
Route::get('/blog-detail','HomeController@blog_detail');

/* Admin layout */

//Home layout
Route::get('/admin', 'AdminController@index')->name('admin-index');