<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InventoryController;
use App\Http\Controllers\MenuController;

// Main page
Route::get('/', function () {
    return view('mainpage');
});

// // RESTful routes for inventory
Route::resource('inventory', InventoryController::class);

Route::resource('menu', MenuController::class);
Route::get('/add-menu', [MenuController::class, 'create'])->name('menu.add');

