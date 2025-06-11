<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoyaltyController;

// Main Page Route
Route::get('/', function () {
    return view('mainpage');
})->name('home');

// Route::get('/', function () {
//     return redirect()->route('index');
// });

Route::prefix('loyalty')->group(function () {
    Route::get('/', [LoyaltyController::class, 'index'])->name('index');
    Route::get('/create', [LoyaltyController::class, 'create'])->name('create');
    Route::post('/', [LoyaltyController::class, 'store'])->name('store');
    Route::get('/{id}', [LoyaltyController::class, 'show'])->name('show');
    Route::post('/{customerId}/transaction', [LoyaltyController::class, 'addTransaction'])
        ->name('loyalty.addTransaction');
});