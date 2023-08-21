<?php

use App\Models\Listing;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ListingController;

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

//All listings calling the controller
Route::get('/', [ListingController::class, 'index']);

//Single listing calling the controller 
Route::get('/listing/{listing}', [ListingController::class, 'show']);

//show create form
Route::get('/listings/create', [ListingController::class, 'create'])->middleware('auth');

//store listing data
Route::post('/listings', [ListingController::class, 'store'])->middleware('auth');

//show edit form
Route::get('/listings/{listing}/edit', [ListingController::class, 'edit'])->middleware('auth');

//Update listing data
Route::put('/listings/{listing}', [ListingController::class, 'update'])->middleware('auth');

//Delete listing data
Route::delete('/listings/{listing}', [ListingController::class, 'destroy'])->middleware('auth');

//Display Manage Listings page
Route::get('/listings/manage', [ListingController::class, 'manage'])->middleware('auth');

//show register create form
Route::get('/register', [UserController::class, 'create'])->middleware('guest');

//Creates a new user
Route::post('/users', [UserController::class, 'store']);

//Log User Out
Route::post('/logout', [UserController::class, 'logout'])->middleware('auth');

//Log User In 
Route::get('/login', [UserController::class, 'login'])->name('login')->middleware('guest');

// Log In User
Route::post('/users/authenticate', [UserController::class, 'authenticate']);





//These are for testing purposes only
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


//testing DB connection
Route::get('/testdb', function () {
    return view('testdb');
});
