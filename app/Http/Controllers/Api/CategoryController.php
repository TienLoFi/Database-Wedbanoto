<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
class CategoryController extends Controller
{
    #Lấy ra danh sách danh mục
    public function index()
    {
        $categories = Category::orderBy('created_at', 'DESC')->get();
        return response()->json(
            [
                'success' => true, 
                'message' => 'Tải dữ liệu thành công',
                'categories' => $categories
            ],
            200
        );
    }
    public function show($id)
    {
        if(is_numeric($id)){
            $category = Category::find($id);
        }
        else{
            $category = Category::where('slug', $id)->first();
        }
        return response()->json(
            ['success' => true, 
             'message' => 'Tải dữ liệu thành công',
             'category' => $category],
            200
        );
    }
    
#Thêm danh mục
public function store(Request $request)
    {
        $category = new Category();
        $category->name = $request->name; //form
        $category->slug = Str::of($request->name)->slug('-');
        //upload image
        $files = $request->image;
        if ($files != null) {
            $extension = $files->getClientOriginalExtension();
            if (in_array($extension, ['jpg', 'png', 'gif', 'webp', 'jpeg'])) {
                $filename = $category->slug . '.' . $extension;
                $category->image = $filename;
                $files->move(public_path('images/category'), $filename);
            }
        } 
        $category->parent_id = $request->parent_id;
        $category->sort_order = $request->sort_order; //form
        $category->metakey = $request->metakey; //form
        $category->metadesc = $request->metadesc; //form
        $category->created_at = date('Y-m-d H:i:s');
        $category->created_by = 1;
        $category->status = $request->status; //form
        $category->save(); //Luuu vao CSDL
        return response()->json(
            [
'success' => true, 
'message' => 'Thành công', 
'category' => $category
],
            201
        );
    }

# cập nhật danh mục
public function update(Request $request, $id)
    {
        $category = Category::find($id);
        $category->name = $request->name; //form
        $category->slug = Str::of($request->name)->slug('-');
 //upload image
 $files = $request->image;
 if ($files != null) {
     $extension = $files->getClientOriginalExtension();
     if (in_array($extension, ['jpg', 'png', 'gif', 'webp', 'jpeg'])) {
         $filename = $category->slug . '.' . $extension;
         $category->image = $filename;
         $files->move(public_path('images/category'), $filename);
     }
 }         $category->sort_order = $request->sort_order; //form
        $category->metakey = $request->metakey; //form
        $category->metadesc = $request->metadesc; //form
        $category->updated_at = date('Y-m-d H:i:s');
        $category->updated_by = 1;
        $category->status = $request->status; //form
        $category->save(); //Luuu vao CSDL
        return response()->json(
            ['success' => true, 'message' => 'Thành công', 'data' => $category],
            200
        );
    }
# xóa danh mục
public function destroy($id)
    {
        $category = Category::find($id);
       $category->delete();
        return response()->json(
            ['message' => 'Thành công']
        
        );
    }

    public function category_list($parent_id = 0)
    {
        $args = [
            ['parent_id', '=', $parent_id],
            ['status', '=', 1]
        ];
        $categories = Category::where($args)
            ->orderBy('sort_order', 'ASC')
            ->get();
        return response()->json(
            [
                'success' => true,
                'message' => 'Tải dữ liệu thành công',
                'categories' => $categories
            ],
            200
        );
    }
    }


 