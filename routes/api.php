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

Route::post('login', 'Auth\API\AuthController@login');
Route::post('register', 'Auth\API\AuthController@register');


Route::middleware('auth:api')->group(function () {
    Route::get('books', 'BookController@index');
    Route::get('special_offer_books', 'BookController@special_offers');
    Route::get('show', 'UserController@show');

    Route::group(['prefix' => 'admin', 'as' => 'admin'], function() {
        Route::get('allusers', 'AdminController@allusers');
        Route::get('user/{user_id}', 'AdminController@editUser');
        Route::get('user/delete/{id}', 'AdminController@deleteUser');
    });
});