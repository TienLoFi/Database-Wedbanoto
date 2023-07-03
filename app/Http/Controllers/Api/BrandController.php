<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
class BrandController extends Controller
{
    #Lấy ra danh sách thương hiệu
    public function index()
    {
        $brands = Brand::orderBy('created_at', 'DESC')->get();
        return response()->json(
            [
                'success' => true, 
                'message' => 'Tải dữ liệu thành công',
                'brands' => $brands
            ],
            200
        );
    }

        #Lấy ra một thương hiệu dựa vào id
 public function show($id)
    {
        if(is_numeric($id)){
            $brand = Brand::find($id);        }
        else{
            $brand = Brand::where('slug', $id)->first();
        }
        
        return response()->json(
            ['success' => true, 'message' => 'Tải dữ liệu thành công', 'brand' => $brand],
            200
        );
    }
    
#Thêm thương hiệu
public function store(Request $request)
{
    $brand = new Brand();
    $brand->name = $request->name; //form
    $brand->slug = Str::of($request->name)->slug('-');
    //upload image
    $files = $request->image;
    if ($files != null) {
        $extension = $files->getClientOriginalExtension();
        if (in_array($extension, ['jpg', 'png', 'gif', 'webp', 'jpeg'])) {
            $filename = $brand->slug . '.' . $extension;
            $brand->image = $filename;
            $files->move(public_path('images/brand'), $filename);
        }
    }
    //
    $brand->sort_order = $request->sort_order; //form
    $brand->metakey = $request->metakey; //form
    $brand->metadesc = $request->metadesc; //form
    $brand->created_at = date('Y-m-d H:i:s');
    $brand->created_by = 1;
    $brand->status = $request->status; //form
    $brand->save(); //Luuu vao CSDL
    return response()->json(
        [
            'success' => true, 
            'message' => 'Thành công', 
            'brand' => $brand
        ],
        201
    );
}

# cập nhật tên thương hiệu 
public function update(Request $request, $id)
    {
        $brand = Brand::find($id);
        $brand->name = $request->name; //form
        $brand->slug = Str::of($request->name)->slug('-');
        // $brand->image = $request->name;
        $brand->sort_order = $request->sort_order; //form
        $brand->metakey = $request->metakey; //form
        $brand->metadesc = $request->metadesc; //form
        $brand->updated_at = date('Y-m-d H:i:s');
        $brand->updated_by = 1;
        $brand->status = $request->status; //form
        $brand->save(); //Luuu vao CSDL
        return response()->json(
            ['success' => true, 'message' => 'Thành công', 'data' => $brand],
            200
        );
    }
# xóa thương hiệu 
public function destroy($id)
    {
        $brand = Brand::find($id);
       $brand->delete();
        return response()->json(
            ['message' => 'Thành công']
        
        );
    }


 }

