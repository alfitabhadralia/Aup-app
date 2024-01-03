<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\KegiatanController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SettingController;
use App\Models\Kegiatan;
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
    $product = Product::limit(4)->get();
    $kegiatan = Kegiatan::where('headline', 1)->limit(4)->get();

    return view('page.frontend.home',compact('setting', 'kegiatan', 'product'));
});
Route::get('/example', function () {
    return view('page.admin.example');
});
// Route::get('/kegiatan', function () {
//     return view('page.frontend.kegiatan');
// });
Route::get('/kegiatan', [KegiatanController::class, 'home'])->name('kegiatan');

Route::get('/product', function () {
    return view('page.frontend.product');
})->name('product');


Route::get('/login', [AuthController::class, 'login'])->name('login');
Route::post('/login', [AuthController::class, 'login_action'])->name('login.action');
Route::get('/register', [AuthController::class, 'register'])->name('register');


Route::prefix('admin')->group(function(){
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

    Route::get('setting', [SettingController::class, 'index'])->name('admin.setting');
    Route::post('/setting/update', [SettingController::class, 'update'])->name('admin.setting.update');
});