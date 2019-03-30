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
Route::group(['prefix' => '/admin', 'middleware' => array('can_see')], function () {
    //Home layout
    Route::get('/', 'AdminController@index')->name('admin-index');
});
Route::group(['prefix' => '/admin/comments', 'middleware' => array('can_see')], function () {
    //Comments layout
    Route::get('/list-comment', 'CommentController@index')->name('list-comment');
});

Route::group(['prefix' => '/admin/message', 'middleware' => array('can_see')], function () {
    //message layout
    Route::get('/list-message', 'MessageController@index')->name('list-message');
});

Route::group(['prefix' => '/admin/banners', 'middleware' => array('can_see')], function () {
    //banner layout
    Route::get('/list-banner', 'BannerController@index')->name('list-banner');
});
Route::group(['prefix' => '/admin/products', 'middleware' => array('can_see')], function () {
    //banner layout
    Route::get('/list-product', 'ProductController@index')->name('list-product');
    Route::get('/create-product', 'ProductController@create')->name('create');
    Route::post('/create-product', 'ProductController@create_product')->name('create-product');
    Route::get('delete/{id}', 'ProductController@delete_product')->name('delete-product');
    Route::get('update/{id}', 'ProductController@update')->name('update');
    Route::post('update', 'ProductController@update_product')->name('update-product');
Route::group(['prefix' => '/admin/posts', 'middleware' => array('can_see')], function () {
    //Comments layout
    Route::get('/', 'PostController@index')->name('list-post');
    Route::get('/create', 'PostController@create')->name('create-post');
    Route::get('/detele', 'PostController@delete')->name('delete-post');
    Route::get('/edit', 'PostController@edit')->name('edit-post');

});