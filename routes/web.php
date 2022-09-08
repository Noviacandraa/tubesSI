<?php

use App\Http\Controllers\PendidikanController;
use App\Http\Controllers\UrusanController;
use App\Http\Controllers\PembayaranController;
use App\Http\Controllers\PerangkatController;
use App\Http\Controllers\PendudukController;
use App\Http\Controllers\NikahController;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
//route CRUD
Route::get('/penduduk', [PendudukController::class, 'index']);
Route::get('/penduduk/tambah', [PendudukController::class, 'tambah']);
Route::post('/penduduk/store',[PendudukController::class, 'store']);
Route::get('/penduduk/edit/{nik}',[PendudukController::class, 'edit']);
Route::post('/penduduk/update',[PendudukController::class, 'update']);
Route::get('/penduduk/hapus/{nik}',[PendudukController::class,'hapus']);
Route::get('/perangkat', [PerangkatController::class, 'index2']);
Route::get('/perangkat/tambah_perangkat', [PerangkatController::class, 'tambah_perangkat']);
Route::post('/perangkat/store', [PerangkatController::class, 'store']);
Route::get('/perangkat/edit/{id}',[PerangkatController::class, 'edit']);
Route::post('/perangkat/update',[PerangkatController::class, 'update']);
Route::get('/perangkat/hapus/{id}',[PerangkatController::class,'hapus']);
Route::get('/nikah', [NikahController::class, 'index3']);
Route::get('/nikah/tambah_nikah', [NikahController::class, 'tambah_nikah']);
Route::post('/nikah/store', [NikahController::class, 'store']);
Route::get('/nikah/edit/{id}',[NikahController::class, 'edit']);
Route::post('/nikah/update',[NikahController::class, 'update']);
Route::get('/nikah/hapus/{id}',[NikahController::class,'hapus']);
Route::get('/pembayaran', [PembayaranController::class, 'index4']);
Route::get('/pembayaran/tambah_pembayaran', [PembayaranController::class, 'tambah_pembayaran']);
Route::post('/pembayaran/store', [PembayaranController::class, 'store']);
Route::get('/pembayaran/edit/{id}',[PembayaranController::class, 'edit']);
Route::post('/pembayaran/update',[PembayaranController::class, 'update']);
Route::get('/pembayaran/hapus/{id}',[PembayaranController::class,'hapus']);
Route::get('/urusan', [UrusanController::class, 'index5']);
Route::get('/urusan/tambah_urusan', [UrusanController::class, 'tambah_urusan']);
Route::post('/urusan/store', [UrusanController::class, 'store']);
Route::get('/urusan/edit/{id}',[UrusanController::class, 'edit']);
Route::post('/urusan/update',[UrusanController::class, 'update']);
Route::get('/urusan/hapus/{id}',[UrusanController::class,'hapus']);
Route::get('/pendidikan', [PendidikanController::class, 'index6']);
Route::get('/pendidikan/tambah_pendidikan', [PendidikanController::class, 'tambah_pendidikan']);
Route::post('/pendidikan/store', [PendidikanController::class, 'store']);
Route::get('/pendidikan/edit/{id}',[PendidikanController::class, 'edit']);
Route::post('/pendidikan/update',[PendidikanController::class, 'update']);
Route::get('/pendidikan/hapus/{id}',[PendidikanController::class,'hapus']);