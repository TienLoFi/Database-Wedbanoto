<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
class SliderController extends Controller
{
     #Lấy ra danh sách slider
     public function index()
     {
         $sliders = Slider::all();
         return response()->json(
             ['success' => true, 'message' => 'Tải dữ liệu thành công', 'sliders' => $sliders],
             200
         );
         }
 
         #Lấy ra một slider dựa vào id
         public function show($id)
         {
             $slider = Slider::find($id);
             return response()->json(
                 ['success' => true, 'message' => 'Tải dữ liệu thành công', 'slider' => $slider],
                 200
             );
         }
     
 #Thêm slider
 public function store(Request $request)
 {
     $slider = new Slider();
     $slider->name = $request->name;
     $slider->link = $request->link; //form
     $files = $request->image;
     if ($files != null) {
         $extension = $files->getClientOriginalExtension();
         if (in_array($extension, ['jpg', 'png', 'gif', 'webp', 'jpeg'])) {
             $filename = $slider->name . '.' . $extension;
             $slider->image = $filename;
             $files->move(public_path('images/slider'), $filename);
         }
     }
     $slider->sort_order = $request->sort_order; //form
     $slider->position = $request->position; //form
     $slider->created_at = date('Y-m-d H:i:s');
     $slider->created_by = 1;
     $slider->status = $request->status; //form
     $slider->save(); //Luuu vao CSDL
     return response()->json(
         ['success' => true, 'message' => 'Thành công', 'slider' => $slider],
         201
     );
 }
 # cập nhật slider
 public function update(Request $request, $id)  
 {
     $slider = Slider::find($id);
     $slider->name = $request->name; //form
     $slider->link = $request->link; //form
         $slider->position = $request->position; //form

//upload image
$files = $request->image;
if ($files != null) {
  $extension = $files->getClientOriginalExtension();
  if (in_array($extension, ['jpg', 'png', 'gif', 'webp', 'jpeg'])) {
      $filename = $slider->slug . '.' . $extension;
      $slider->image = $filename;
      $files->move(public_path('images/slider'), $filename);
  }
}         $slider->sort_order = $request->sort_order; //form

     $slider->updated_at = date('Y-m-d H:i:s');
     $slider->updated_by = 1;
     $slider->status = $request->status; //form
     $slider->save(); //Luuu vao CSDL
     return response()->json(
         ['success' => true, 'message' => 'Thành công', 'data' => $slider],
         200
     );
 }

# xóa slider----------
public function destroy($id)
    {
        $slider = Slider::find($id);
       $slider->delete();
        return response()->json(
            ['message' => 'Thành công']
        
        );

    }   
    

    public function slider_list($position)
    {
        $args = [
            ['position', '=', $position],
            ['status', '=', 1]
        ];
        $sliders = Slider::where($args)
            ->orderBy('sort_order', 'ASC')
            ->get();
        return response()->json(
            [
                'success' => true,
                'message' => 'Tải dữ liệu thành công',
                'sliders' => $sliders
            ],
            200
        );
    }
} 


