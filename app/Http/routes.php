<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', [
    'uses'  =>  'ProductsController@getIndex',
    'as'    =>  'product.index'
]);

Route::get('/add-to-cart/{id}', [
    'uses'  => 'ProductsController@getAddToCart',
    'as'    => 'product.addToCart'
]);

Route::get('/shopping-cart', [
    'uses'  => 'ProductsController@getCart',
    'as'    => 'product.shoppingCart'
]);

Route::get('/reduce/{id}', [
    'uses'  => 'ProductsController@getReduceByOne',
    'as'    => 'product.reduceByOne'
]);

Route::get('/remove/{id}', [
    'uses'  => 'ProductsController@getRemoveItem',
    'as'    => 'product.remove'
]);

Route::group(['middleware' => 'guest'], function(){
    Route::get('/signup', [
        'uses'  =>  'UserController@getSignup',
        'as'    =>  'user.signup'
    ]);

    Route::post('/signup', [
        'uses'  =>  'UserController@postSignup',
        'as'    =>  'user.signup'
    ]);


    Route::get('/signin', [
        'uses'  =>  'UserController@getSignin',
        'as'    =>  'user.signin'
    ]);

    Route::post('/signin', [
        'uses'  =>  'UserController@postSignin',
        'as'    =>  'user.signin'
    ]);
});

Route::group(['middleware' => 'auth'], function(){
    Route::get('/user/profile', [
        'uses'  =>  'UserController@getProfile',
        'as'    =>  'user.profile'
    ]);

    Route::get('/user/logout', [
        'uses'  =>  'UserController@getLogout',
        'as'    =>  'user.logout'
    ]);
    Route::get('/checkout', [
        'uses'  => 'ProductsController@getCheckout',
        'as'    => 'checkout'
    ]);

    Route::post('/checkout', [
        'uses'  => 'ProductsController@postCheckout',
        'as'    => 'checkout'
    ]);
});
