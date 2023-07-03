<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Menu;


class MenuController extends Controller
{
    public function menu_list($position, $parent_id = 0)
    {
        $args = [
            ['position', '=', $position],
            ['parent_id', '=', $parent_id],
            ['status', '=', 1]
        ];
        $menus = Menu::where($args)
            ->orderBy('created_at', 'ASC')
            ->get();
        if(count($menus)){
            return response()->json(
                [
                    'success' => true,
                    'message' => 'Tải dữ liệu thành công',
                    'menus' => $menus
                ],
                200
            );
        }
        else{
            return response()->json(
                [
                    'success' => false,
                    'message' => 'Không có dữ liệu',
                    'menus' => null
                ],
                200
            );
        }
    }
    public function index()
    {
        $menus = Menu::orderBy('created_at', 'DESC')->get();
        return response()->json(
            [
                'success' => true, 
                'message' => 'Tải dữ liệu thành công',
                'menus' => $menus
            ],
            200
        );
    }
    public function show($id)
    {
        $menu = Menu::find($id);
        return response()->json(
            ['success' => true, 'message' => 'Tải dữ liệu thành công', 'menu' => $menu],
            200
        );
    }
    public function store(Request $request)
    {
        $menu = new Menu();
        $menu->name = $request->name; //form
        $menu->link = $request->link; //form
        $menu->parent_id = $request->parent_id; //form
        $menu->type = $request->type; //form
        $menu->created_at = date('Y-m-d H:i:s');
        $menu->created_by = 1;
        $menu->status = $request->status; //form
        $menu->position = $request->position; //form
        $menu->save(); //Luuu vao CSDL
        return response()->json(
            [
                'success' => true, 
                'message' => 'Thành công', 
                'menu' => $menu
            ],
            201
        );
    }
    public function update(Request $request, $id)
    {
        $menu = Menu::find($id);
        $menu->name = $request->name; //form
        $menu->link = $request->link; //form
        $menu->parent_id = $request->parent_id; //form
        $menu->type = $request->type; //form
        $menu->updated_at = date('Y-m-d H:i:s');
        $menu->updated_by = 1;
        $menu->status = $request->status; //form
        $menu->position = $request->position; //form
        $menu->save(); //Luuu vao CSDL
        return response()->json(
            [
                'success' => true, 
                'message' => 'Thành công', 
                'menu' => $menu
            ],
            200
        );
    }
    public function destroy($id)
    {
        $menu = Menu::findOrFail($id);
        $menu->delete();
        return response()->json(
            [
                'success' => true,
                'message' => 'Xóa thành công',
                'menu' => null
            ],
            200
        );
    }

}
