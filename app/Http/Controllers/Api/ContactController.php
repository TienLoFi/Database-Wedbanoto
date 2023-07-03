<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;

class ContactController extends Controller
{
    public function index()
    {
        $contacts = Contact::orderBy('created_at', 'DESC')->get();
        return response()->json(
            [
                'success' => true,
                'message' => 'Tải dữ liệu thành công',
                'contacts' => $contacts
            ],
            200
        );
    }
    public function show($id)
    {
        $contact = Contact::find($id);
        return response()->json(
            ['success' => true, 'message' => 'Tải dữ liệu thành công', 'contact' => $contact],
            200
        );
    }
    public function update(Request $request, $id)
    {
        $contact = Contact::find($id);
      
        $contact->name = $request->name; //form
        $contact->email = $request->email; //form
        $contact->phone = $request->phone; //form
        $contact->title = $request->title; //form
     
        $contact->replaydetail = $request->replaydetail; //form
        $contact->updated_at = date('Y-m-d H:i:s');
        $contact->updated_by = 1;
        $contact->status = $request->status; //form
        $contact->save(); //Luuu vao CSDL
        return response()->json(
            [
                'success' => true, 
                'message' => 'Thành công', 
                'contact' => $contact
            ],
            200
        );
    }
    public function store(Request $request) 
    {
        $contact = new Contact();

        $contact->name = $request->name; //form
        $contact->email = $request->email; //form
        $contact->phone = $request->phone; //form
        $contact->title = $request->title; //form
        $contact->detail = $request->detail; //form
    
        $contact->created_at = date('Y-m-d H:i:s');
        $contact->status = $request->status; //form
        $contact->save(); //Luu vao CSDL
        return response()->json(
            [
                'success' => true, 
                'message' => 'Thành công', 
                'contact' => $contact
            ],
            201
        );
    }
    public function destroy($id)
    {
        $contact = Contact::findOrFail($id);
        $contact->delete();
        return response()->json(
            [
                'success' => true,
                'message' => 'Xóa thành công',
                'contact' => null
            ],
            200
        );
    }

}
