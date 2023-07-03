<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\BrandController;
use App\Http\Controllers\Api\MenuController;
use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\SliderController;
use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\PostController;
use App\Http\Controllers\Api\ContactController;
use App\Http\Controllers\Api\OrderController;
use App\Http\Controllers\Api\TopicController;
use App\Http\Controllers\Api\UserController;


#---------brand=====================
#Lấy ra danh sách thương hiệu
Route::get('brand/index', [BrandController::class, 'index']);

#Lấy ra một thương hiệu dựa vào id
Route::get('brand/show/{id}', [BrandController::class, 'show']);
#Thêm thương hiệu
Route::post('brand/store', [BrandController::class, 'store']);

#Cập nhật thương hiệu
Route::post('brand/update/{id}', [BrandController::class, 'update']);
#Xóa thương hiệu
Route::delete('brand/destroy/{id}', [BrandController::class, 'destroy']);

#-----------------------menu---------------
#Lấy dữ liệu cho menu
Route::get('menu_list/{position}/{parent_id?}', [MenuController::class, 'menu_list']);


#--------------category--------------------------
Route::get('category/index', [CategoryController::class, 'index']);
Route::get('category_list/{parent_id?}', [CategoryController::class, 'category_list']);
Route::post('category/store', [CategoryController::class, 'category']);
Route::delete('category/destroy/{id}', [CategoryController::class, 'destroy']);

#------------post---------------------------------

Route::get('post_list/{type}/{limit}', [PostController::class, 'post_list']);


#----------product-----------#

Route::get('product/index', [ProductController::class, 'index']);
#Lấy ra tất cả sản phẩm có phân trang
Route::get('product_all/{limit}/{page?}', [ProductController::class, 'product_all']);
#Lấy ra tất cả sản phẩm theo loại có phân trang

Route::get('product_detail/{id}', [ProductController::class, 'product_detail']);
Route::get('product_other/{id}/{limit}', [ProductController::class, 'product_other']);
Route::get('product_search/{key}', [ProductController::class, 'product_search']);
Route::get('product_category/{limit}/{category_id}', [ProductController::class, 'product_category']);
Route::get('product_brand/{limit}/{brand_id}', [ProductController::class, 'product_brand']);
Route::get('product_home/{limit}/{category_id}', [ProductController::class, 'product_home']);
Route::get('product_list/{limit}/{category_id}', [ProductController::class, 'product_list']);
#---------------------------
#slider--------------------
Route::get('slider_list/{position}', [SliderController::class, 'slider_list']);

#----------------------
#------post-------------------

Route::get('post_list/{limit}/{type}', [PostController::class, 'post_list']);
Route::get('post_all/{limit}/{page?}', [PostController::class, 'post_all']);
Route::get('post_topic/{limit}/{topic_id}', [PostController::class, 'post_topic']);
Route::get('post_detail/{id}', [PostController::class, 'post_detail']);
Route::get('post_other/{id}/{limit}', [PostController::class, 'post_other']);
Route::get('post_new', [PostController::class, 'post_new']);
#---------------------------------------------------------------


Route::get('topic_list/{parent_id?}', [TopicController::class, 'topic_list']);
Route::prefix('brand')->group(function () {
    Route::get('index', [BrandController::class, 'index']);
    Route::get('show/{id}', [BrandController::class, 'show']);
    Route::post('store', [BrandController::class, 'store']);
    Route::post('update/{id}', [BrandController::class, 'update']);
    Route::delete('destroy/{id}', [BrandController::class, 'destroy']);
});
Route::prefix('category')->group(function () {
    Route::get('index', [CategoryController::class, 'index']);
    Route::get('show/{id}', [CategoryController::class, 'show']);
    Route::post('store', [CategoryController::class, 'store']);
    Route::post('update/{id}', [CategoryController::class, 'update']);
    Route::delete('destroy/{id}', [CategoryController::class, 'destroy']);
});
Route::prefix('contact')->group(function () {
    Route::get('index', [ContactController::class, 'index']);
    Route::get('show/{id}', [ContactController::class, 'show']);
    Route::post('store', [ContactController::class, 'store']);
    Route::post('update/{id}', [ContactController::class, 'update']);
    Route::delete('destroy/{id}', [ContactController::class, 'destroy']);
});
Route::prefix('menu')->group(function () {
    Route::get('index', [MenuController::class, 'index']);
    Route::get('show/{id}', [MenuController::class, 'show']);
    Route::post('store', [MenuController::class, 'store']);
    Route::post('update/{id}', [MenuController::class, 'update']);
    Route::delete('destroy/{id}', [MenuController::class, 'destroy']);
});
Route::prefix('order')->group(function () {
    Route::get('index', [OrderController::class, 'index']);
    Route::get('show/{id}', [OrderController::class, 'show']);
    Route::post('store', [OrderController::class, 'store']);
    Route::post('update/{id}', [OrderController::class, 'update']);
    Route::delete('destroy/{id}', [OrderController::class, 'destroy']);
});
Route::prefix('post')->group(function () {
    Route::get('index', [PostController::class, 'index']);
    Route::get('show/{id}', [PostController::class, 'show']);
    Route::post('store', [PostController::class, 'store']);
    Route::post('update/{id}', [PostController::class, 'update']);
    Route::delete('destroy/{id}', [PostController::class, 'destroy']);
});
Route::prefix('product')->group(function () {
    Route::get('index', [ProductController::class, 'index']);
    Route::get('show/{id}', [ProductController::class, 'show']);
    Route::post('store', [ProductController::class, 'store']);
    Route::post('update/{id}', [ProductController::class, 'update']);
    Route::delete('destroy/{id}', [ProductController::class, 'destroy']);
});
Route::prefix('slider')->group(function () {
    Route::get('index', [SliderController::class, 'index']);
    Route::get('show/{id}', [SliderController::class, 'show']);
    Route::post('store', [SliderController::class, 'store']);
    Route::post('update/{id}', [SliderController::class, 'update']);
    Route::delete('destroy/{id}', [SliderController::class, 'destroy']);
});
Route::prefix('topic')->group(function () {
    Route::get('index', [TopicController::class, 'index']);
    Route::get('show/{id}', [TopicController::class, 'show']);
    Route::post('store', [TopicController::class, 'store']);
    Route::post('update/{id}', [TopicController::class, 'update']);
    Route::delete('destroy/{id}', [TopicController::class, 'destroy']);
});

Route::prefix('user')->group(function () {
    Route::get('index', [UserController::class, 'index']);
    Route::get('show/{id}', [UserController::class, 'show']);
    Route::post('store', [UserController::class, 'store']);
    Route::post('update/{id}', [UserController::class, 'update']);
    Route::delete('destroy/{id}', [UserController::class, 'destroy']);
});





Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
