<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;

class SettingController extends Controller
{
    public function index()
    {
        $setting = Setting::all();

        return view('page.admin.setting.index', compact('setting'));
    }
    public function update(Request $request)
    {
        $rules = [
            'about' => [
                'title_about' => 'required',
                'deskripsi_about' => 'required',
            ],
            'kontak' => [
                'email_kontak' => 'required',
                'phone_kontak' => 'required',
                'phone_product' => 'required',
                'alamat_kontak' => 'required',
            ],
            'sosialmedia' => [
                'facebook' => 'required',
                'instagram' => 'required',
                'twitter' => 'required',
                'website' => 'required',
            ],
        ];
        // $valid = $request->validate($rules[$request->tab]);
        $valid = Validator::make($request->all(), $rules[$request->tab]);
        if ($valid->fails()) {
            toast($valid->messages()->all()[0], 'error');
            return redirect()->back();
        }
        $fields = [
            'about' => [
                'gambar_about', 'title_about', 'deskripsi_about', 
            ],
            'kontak' => [
                'email_kontak', 'phone_kontak', 'alamat_kontak', 'phone_product'
            ],
            'sosialmedia' => [
                'facebook', 'instagram', 'twitter', 'website'
            ],
        ];
        foreach ($fields[$request->tab] as $field) {
            $setting = Setting::where('nama', $field)->first();

            if ($request->file() != null && $request->file($field) != null) {
                File::delete('assets/media/kegiatan/'.$setting->gambar);

                $new_image = $request->file($field);
                $new_image->move('assets/media/setting', time() . $field.'.' . $new_image->getClientOriginalExtension());
                $request->$field = time() . $field.'.' . $new_image->getClientOriginalExtension();
                
                $setting->value = $request->$field;
            } else if ($field != null) {
                
                $setting->value = $request->$field;
            } else {
                break;
            } 
            $setting->update();
        }

        toast("Success Updated Data", 'success');
        return view('page.admin.setting.index', compact('setting'));
    }
}
