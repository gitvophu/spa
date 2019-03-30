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
// Route::get('/posts', 'PostController@index')->name('admin-posts');
// Route::get('/messages', 'MessageController@index')->name('admin-messages');

// Route::group(['middleware' => ['admin_logged', 'can_see']], function () {
// });