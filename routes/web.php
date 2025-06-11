<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MenuController;

// Main Page Route
Route::get('/', function () {
    return view('mainpage');
})->name('home');

Route::resource('menu', MenuController::class);
Route::get('/add-menu', [MenuController::class, 'create'])->name('menu.add');

