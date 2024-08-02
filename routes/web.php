<?php

use App\Http\Controllers\ContactController;
use Illuminate\Support\Facades\Route;;

Route::get('/contacts',[ContactController::class,'index'])->name('contact.index');
Route::get('/contacts/create',[ContactController::class,'create'])->name('contact.create');
Route::get('/contacts/show/{id}',[ContactController::class,'show'])->name('contact.show');
Route::post('/contacts/store',[ContactController::class,'store'])->name('contact.store');
Route::get('/contacts/edit/{id}',[ContactController::class,'edit'])->name('contact.edit');
Route::put('/contacts/update/{id}',[ContactController::class,'update'])->name('contact.update');
Route::delete('/contacts/{id}',[ContactController::class,'destroy'])->name('contact.delete');
