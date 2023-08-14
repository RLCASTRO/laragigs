<?php

use App\Models\Listing;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

//All listings
Route::get('/', function () {
    return view('listings', [
        //this data usually comes from a database.
        'heading' => 'Latest Listings',
        'listings' => Listing::all()
    ]);
});

//Single listing
Route::get('/listing/{id}', function ($id) {
    return view('listing', [
        'listing' => Listing::find($id)
    ]);
});

Route::get('/test', function () {
    // echo 'This is my first route';
    return response('<h1>Welcome!</h1>', 200)
        ->header('Content-Type', 'text/html')
        ->header('test', true);
});

Route::get('/user/{id}', function ($id) {
    return response('The user id is ' . $id);
})->where('id', '[0-9]+');

Route::get('/search', function (Request $request) {
    // return $request;
    dd($request);
});


Route::get('/testdb', function () {
    return view('testdb');
});