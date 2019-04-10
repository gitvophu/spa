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
Route::get('/post-detail/{post_id}','PostController@post_detail')->name('post-detail');
Route::post('/post-detail/comment-ajax','PostController@comment_ajax');

/* Admin layout */
Route::group(['prefix' => '/admin', 'middleware' => array('can_see')], function () {
    Route::get('/ad-login', 'AdminController@ad_login')->name('ad-login');
    Route::post('/ad-login', 'AdminController@doLogin')->name('ad-login');
    Route::get('/logout', 'AdminController@logout')->name('logout');
});

Route::group(['prefix' => '/admin', 'middleware' => array('admin','can_see')], function () { 
    //Home layout
    Route::get('/', 'AdminController@index')->name('admin-index');
});

Route::group(['prefix' => '/admin/comments', 'middleware' => array('admin','can_see')], function () {
    //Comments layout
    Route::get('/list-comment', 'CommentController@index')->name('list-comment');
});

Route::group(['prefix' => '/admin/message', 'middleware' => array('admin','can_see')], function () {
    //message layout
    Route::get('/list-message', 'MessageController@index')->name('list-message');
});

Route::group(['prefix' => '/admin/banners', 'middleware' => array('admin','can_see')], function () {
    //banner layout
    Route::get('/list-banner', 'BannerController@index')->name('list-banner');
    Route::get('/create-banner', 'BannerController@create_banner')->name('create-banner');
    Route::post('/create-banner', 'BannerController@store_banner')->name('store-banner');
    Route::get('/delete-banner/{id}', 'BannerController@delete_banner')->name('delete-banner');
    Route::get('/edit-banner/{id}', 'BannerController@edit_banner')->name('edit-banner');
    Route::post('/update-banner', 'BannerController@update_banner')->name('update-banner');
});

//product
Route::group(['prefix' => '/admin/products', 'middleware' => array('admin','can_see')], function () {
    Route::get('/list-product', 'ProductController@index')->name('list-product');
    Route::get('/create-product', 'ProductController@create')->name('create');
    Route::post('/create-product', 'ProductController@create_product')->name('create-product');
    Route::get('delete/{id}', 'ProductController@delete_product')->name('delete-product');
    Route::get('/update/{id}', 'ProductController@update')->name('update');
    Route::post('update', 'ProductController@update_product')->name('update-product');
});

Route::group(['prefix' => '/admin/posts', 'middleware' => array('admin','can_see')], function () {
    //Comments layout
    Route::get('/', 'PostController@list_post')->name('list-post');
    Route::get('/create', 'PostController@create')->name('create-post');
    Route::post('/store', 'PostController@store')->name('store-post');
    Route::get('/detele/{id}', 'PostController@delete')->name('delete-post');
    Route::get('/edit/{post_id}', 'PostController@edit')->name('edit-post');
    Route::post('/update', 'PostController@update')->name('update-post');
    
});