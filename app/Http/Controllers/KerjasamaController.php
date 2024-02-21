<?php

namespace App\Http\Controllers;

use App\Models\Kerjasama;
use App\Models\Setting;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use RealRashid\SweetAlert\Facades\Alert;
use Yajra\DataTables\Facades\DataTables;

class KerjasamaController extends Controller
{
    // public function __construct() {
    //     // $this->var = $var;
    //     $setting = Setting::all();
    // }
    //
    public function index(Request $request) {
        $kerjasama = kerjasama::all();
        $kerjasamaToday = kerjasama::whereDate('created_at', Carbon::today())->get();

        if ($request->ajax()) {
            # code...
            return DataTables::of($kerjasama)
                ->addIndexColumn()
                ->editColumn('gambar', function($row) {
                    $gambar = ($row->gambar) ? asset("assets/media/kerjasama/".$row->gambar) : asset("assets/media/avatars/avatar0.jpg");

                    return '<img src="'. $gambar .'" class=" border bg-secondary" style="max-width: 100px" alt="'.$row->gambar.'">';
                })
                ->editColumn('created_at', function($row){
                    return $row->created_at->diffForHumans();
                })
                ->addColumn('action', function ($row) {
                    $actionBtn = '<div class="row"><a class="btn btn-sm btn-secondary m-5" href="'.route('admin.kerjasama.show', $row->id).'">
                            <i class="fa fa-pencil text-primary mr-5"></i> Edit
                        </a>
                        <form id="form-delete-'.$row->id.'" action="'.route('admin.kerjasama.delete', $row->id).'" method="post">
                        '.csrf_field().'
                            <button type="button" class="btn btn-sm btn-secondary m-5" onclick="return confirm('.$row->id.')">
                                <i class="fa fa-times text-danger mr-5"></i> Delete
                            </button>
                        </form>
                        <button type="button" class="btn btn-sm btn-secondary m-5" onclick="return edit('.$row->id.')">
                            <i class="fa fa-eye text-info mr-5"></i> Detail
                        </button>
                        </div>';
                    return $actionBtn;
                })
                ->rawColumns(['action', 'no', 'nama', 'harga', 'deskripsi', 'gambar'])
                ->make(true);
        }

        return view('page.admin.kerjasama.index', compact('kerjasama', 'kerjasamaToday'));
    }

    public function create(Request $request){
        return view('page.admin.kerjasama.create');
    }

    public function store(Request $request){
        $valid = Validator::make($request->all(), [
            'nama_kerjasama' => 'required',
            'gambar' => 'required',
        ]);

        if ($valid->fails()) {
            toast($valid->messages()->all()[0], 'error');
            return redirect()->back()->withInput();
        }

        $new_image = $request->file('gambar');
        $file_name = time() . '.' . $new_image->extension();
        // $path_save = base_path('assets/media/kerjasama');
        $new_image->move('assets/media/kerjasama', $file_name);

        $save = kerjasama::create([
            'nama' => $request->nama_kerjasama,
            'gambar' => $file_name,
            'website_link' => $request->website_link,
        ]);

        if ($save) {
            toast("Success Add Data", 'success');
            return redirect()->route('admin.kerjasama');
        }
        toast("Failed Add Data", 'error');
        return redirect()->route('admin.kerjasama');
    }
    public function show($id,Request $request){
        $kerjasama = kerjasama::find($id);
        if ($request->ajax()) {
            return $kerjasama;
        }
        return view('page.admin.kerjasama.edit', compact('kerjasama'));
    }

    public function update($id,Request $request){

        $valid = Validator::make($request->all(), [
            'nama_kerjasama' => 'required',
        ]);

        if ($valid->fails()) {
            toast($valid->messages()->all()[0], 'error');
            return redirect()->back()->withInput();
        }
        
        $kerjasama = kerjasama::find($id);
        $kerjasama->nama = $request->nama_kerjasama;
        $kerjasama->website_link = $request->website_link;
        
        if ($request->file('gambar')) {
            File::delete('assets/media/kerjasama/'.$kerjasama->gambar);
            
            $new_image = $request->file('gambar');
            $file_name = time() . $kerjasama->nama.'.' . $new_image->extension();
            $new_image->move('assets/media/kerjasama', $file_name);

            $kerjasama->gambar = $file_name;
        }
        $save = $kerjasama->update();
        
        if ($save) {
            toast("Success Updated Data", 'success');
            return redirect()->route('admin.kerjasama');
        }
        toast("Failed Updated Data", 'error');
        return redirect()->route('admin.kerjasama');
    }
    public function delete($id){
        $kerjasama = kerjasama::find($id);
        File::delete('assets/media/kerjasama/'.$kerjasama->gambar);
        $delete = $kerjasama->delete($id);

        if ($delete) {
            return ['msg' => 'Success Delete Data', 'code' => 200];
        }
        return ['msg' => 'Error Delete Data','code' => 500];
    }
    public function home(){
        $kerjasama = kerjasama::paginate(8);
        $setting = Setting::all();

        return view('page.frontend.kerjasama', compact('kerjasama', 'setting'));
    }
    public function detail($id){
        $kerjasama = kerjasama::find($id);
        $setting = Setting::all();
        
        return view('page.frontend.Detailkerjasama', compact('kerjasama', 'setting'));
    }
}
