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
Route::get('/','HomeController@index')->name('/');
//Product layout
Route::get('/san-pham','ProductController@view_product')->name('view_product');
//Post layout
Route::get('/bai-viet','PostController@view_post')->name('view_post');
//Product detail layout
Route::get('/chi-tiet-san-pham/{id}','ProductController@product_detail')->name('product-detail');
Route::post('/product-detail/comment-ajax','ProductController@comment_ajax');
//Blog detail layout
Route::get('/chi-tiet-bai-viet/{slug}','PostController@post_detail')->name('post-detail');
Route::post('/post-detail/comment-ajax','PostController@comment_ajax');

Route::group(['prefix'=>'comments'],function(){
    Route::post('/update-status','CommentController@update_status');
});

/* Admin layout */
Route::group(['prefix' => '/admin', 'middleware' => array('can_see')], function () {
    Route::get('/ad-login', 'AdminController@ad_login')->name('ad-login');
    Route::post('/ad-login', 'AdminController@doLogin')->name('ad-login');
    Route::get('/forget-password', 'AdminController@forget_password')->name('forget-password');
    Route::post('/sendMail','AdminController@sendMail')->name('send-mail');
    Route::get('/reset-pass/{token}/{email}','AdminController@reset_link')->name('reset-link');
    Route::post('/do-reset','AdminController@do_reset')->name('do-reset');
    Route::get('/logout', 'AdminController@logout')->name('logout');
});

Route::group(['prefix' => '/admin', 'middleware' => array('admin','can_see')], function () {
    //Home layout
    Route::get('/', 'AdminController@index')->name('admin-index');
    Route::get('/change-password/{id}', 'AdminController@change_password')->name('change-password');
    Route::post('/change-password', 'AdminController@change_password_')->name('change-password_');
});

Route::group(['prefix' => '/admin/comments', 'middleware' => array('admin','can_see')], function () {
    //Comments layout
    Route::get('/list-comment', 'CommentController@index')->name('list-comment');
    
});
Route::post('admin/message/create-message', 'MessageController@create')->name('create-message');
Route::group(['prefix' => '/admin/message', 'middleware' => array('admin','can_see')], function () {
    //message layout
    Route::get('/list-message', 'MessageController@index')->name('list-message');
  
    Route::get('/delete-message/{id}', 'MessageController@delete_message')->name('delete-message');
});

Route::group(['prefix' => '/admin/banners', 'middleware' => array('admin','can_see')], function () {
    //banner layout
    Route::get('/list-banner', 'BannerController@index')->name('list-banner');
    Route::get('/create-banner', 'BannerController@create_banner')->name('create-banner');
    Route::post('/store-banner', 'BannerController@store_banner')->name('store-banner');
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