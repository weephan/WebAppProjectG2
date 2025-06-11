<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InventoryController;

// Main page
Route::get('/', function () {
    return view('mainpage');
});

// // RESTful routes for inventory
Route::resource('inventory', InventoryController::class);
// Route::get('/inventory', [InventoryController::class, 'index'])->name('inventory.index');
// For Resourceful Routes (Recommended)
// Route::resource('inventory', 'App\Http\Controllers\InventoryController');

// // OR Manually Define Each Route
// Route::get('/inventory', [InventoryController::class, 'index'])->name('inventory.index');
// Route::get('/inventory/create', [InventoryController::class, 'create'])->name('inventory.create');
// Route::post('/inventory', [InventoryController::class, 'store'])->name('inventory.store');
// Route::get('/inventory/{id}/edit', [InventoryController::class, 'edit'])->name('inventory.edit');
// Route::put('/inventory/{id}', [InventoryController::class, 'update'])->name('inventory.update');
// Route::delete('/inventory/{id}', [InventoryController::class, 'destroy'])->name('inventory.destroy');
