<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BeritaController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\KegiatanController;
use App\Http\Controllers\KerjasamaController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SettingController;
use App\Models\Kegiatan;
use App\Models\Kerjasama;
use App\Models\Product;
use App\Models\Setting;
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
    $setting = Setting::all();
    $kerjasama = Kerjasama::all();
    $product = Product::limit(4)->get();
    $kegiatan = Kegiatan::whereNot('kategori', 'berita')->get();
    $berita = Kegiatan::where('kategori', 'berita')->limit(3)->orderBy('id','desc')->get();
    $gallery = Kegiatan::all();

    return view('page.frontend.home',compact('setting', 'kegiatan', 'product', 'berita', 'gallery', 'kerjasama'));
});
// Route::get('/example', function () {
//     return view('page.admin.example');
// });
// Route::get('/kegiatan', function () {
//     return view('page.frontend.kegiatan');
// });
Route::get('/kegiatan', [KegiatanController::class, 'home'])->name('kegiatan');
Route::get('/kegiatan/{id}', [KegiatanController::class, 'detail'])->name('kegiatan.detail');

Route::get('/product', [ProductController::class, 'home'])->name('product');
Route::get('/product/{id}', [ProductController::class, 'detail'])->name('product.detail');



Route::get('/login', [AuthController::class, 'login'])->name('login');
Route::post('/login', [AuthController::class, 'login_action'])->name('login.action');
Route::get('/register', [AuthController::class, 'register'])->name('register');
Route::post('/register', [AuthController::class, 'register_action'])->name('register.action');


Route::prefix('admin')->middleware('auth')->group(function(){
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::get('product', [ProductController::class, 'index'])->name('admin.product');
    Route::get('/product/create', [ProductController::class, 'create'])->name('admin.product.create');
    Route::post('/product/store', [ProductController::class, 'store'])->name('admin.product.store');
    Route::get('/product/show/{id}', [ProductController::class, 'show'])->name('admin.product.show');
    Route::post('/product/update/{id}', [ProductController::class, 'update'])->name('admin.product.update');
    Route::post('/product/delete/{id}', [ProductController::class, 'delete'])->name('admin.product.delete');

    Route::get('kegiatan', [KegiatanController::class, 'index'])->name('admin.kegiatan');
    Route::get('/kegiatan/create', [KegiatanController::class, 'create'])->name('admin.kegiatan.create');
    Route::post('/kegiatan/store', [KegiatanController::class, 'store'])->name('admin.kegiatan.store');
    Route::get('/kegiatan/show/{id}', [KegiatanController::class, 'show'])->name('admin.kegiatan.show');
    Route::post('/kegiatan/update/{id}', [KegiatanController::class, 'update'])->name('admin.kegiatan.update');
    Route::post('/kegiatan/delete/{id}', [KegiatanController::class, 'delete'])->name('admin.kegiatan.delete');

    Route::get('berita', [BeritaController::class, 'index'])->name('admin.berita');
    Route::get('/berita/create', [BeritaController::class, 'create'])->name('admin.berita.create');
    Route::post('/berita/store', [BeritaController::class, 'store'])->name('admin.berita.store');
    Route::get('/berita/show/{id}', [BeritaController::class, 'show'])->name('admin.berita.show');
    Route::post('/berita/update/{id}', [BeritaController::class, 'update'])->name('admin.berita.update');
    Route::post('/berita/delete/{id}', [BeritaController::class, 'delete'])->name('admin.berita.delete');

    //Kerjasama
    Route::get('kerjasama', [KerjasamaController::class, 'index'])->name('admin.kerjasama');
    Route::get('/kerjasama/create', [KerjasamaController::class, 'create'])->name('admin.kerjasama.create');
    Route::post('/kerjasama/store', [KerjasamaController::class, 'store'])->name('admin.kerjasama.store');
    Route::get('/kerjasama/show/{id}', [KerjasamaController::class, 'show'])->name('admin.kerjasama.show');
    Route::post('/kerjasama/update/{id}', [KerjasamaController::class, 'update'])->name('admin.kerjasama.update');
    Route::post('/kerjasama/delete/{id}', [KerjasamaController::class, 'delete'])->name('admin.kerjasama.delete');

    Route::get('setting', [SettingController::class, 'index'])->name('admin.setting');
    Route::post('/setting/update', [SettingController::class, 'update'])->name('admin.setting.update');

    Route::post('/logout', [AuthController::class, 'logout'])->name('logout.action');

});