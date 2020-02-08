<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();

// });

Route::post('login', 'Auth\API\AuthController@login')->middleware('cors');
Route::post('register', 'Auth\API\AuthController@register')->middleware('cors');


Route::middleware(['auth:api', 'cors'])->group(function () {
    Route::get('books', 'BookController@index');
    Route::get('special_offer_books', 'BookController@special_offers');
    Route::get('show', 'UserController@show');

    Route::group(['prefix' => 'admin', 'middleware' => ['admin', 'cors'], 'as' => 'admin'], function() {
        Route::get('allusers', 'AdminController@allusers');
        Route::get('user/{user_id}', 'AdminController@editUser');
        Route::post('update/user/{user_id}', 'AdminController@updateUser');
        Route::get('user/delete/{id}', 'AdminController@deleteUser');

        Route::post('create/book', 'AdminController@createBook');
        Route::get('book/{book_id}', 'AdminController@editBook');
        Route::post('update/book/{user_id}', 'AdminController@updateBook');
        Route::get('delete/book/{id}', 'AdminController@deleteBook');
    });
});