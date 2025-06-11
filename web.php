<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InventoryController;

// Main page
Route::get('/', function () {
    return view('mainpage');
});

// RESTful routes for inventory
Route::resource('inventory', InventoryController::class);
