<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Setting;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use RealRashid\SweetAlert\Facades\Alert;
use Yajra\DataTables\Facades\DataTables;

class ProductController extends Controller
{
    // public function __construct() {
    //     // $this->var = $var;
    //     $setting = Setting::all();
    // }
    //
    public function index(Request $request) {
        $product = Product::all();
        $productToday = Product::whereDate('created_at', Carbon::today())->get();

        if ($request->ajax()) {
            # code...
            return DataTables::of($product)
                ->addIndexColumn()
                ->editColumn('gambar', function($row) {
                    $gambar = ($row->gambar) ? asset("assets/media/product/".$row->gambar) : asset("assets/media/avatars/avatar0.jpg");

                    return '<img src="'. $gambar .'" class=" border bg-secondary" style="max-width: 100px" alt="'.$row->gambar.'">';
                })
                ->editColumn('created_at', function($row){
                    return $row->created_at->diffForHumans();
                })
                ->editColumn('harga', function($row){
                    return number_format($row->harga, 0,',','.');
                })
                ->addColumn('action', function ($row) {
                    $actionBtn = '<div class="row"><a class="btn btn-sm btn-secondary m-5" href="'.route('admin.product.show', $row->id).'">
                            <i class="fa fa-pencil text-primary mr-5"></i> Edit
                        </a>
                        <form id="form-delete-'.$row->id.'" action="'.route('admin.product.delete', $row->id).'" method="post">
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

        return view('page.admin.product.index', compact('product', 'productToday'));
    }

    public function create(Request $request){
        return view('page.admin.product.create');
    }

    public function store(Request $request){
        $valid = Validator::make($request->all(), [
            'nama_product' => 'required',
            'harga' => 'required',
            'deskripsi' => 'required',
            'gambar' => 'required',
        ]);

        if ($valid->fails()) {
            toast($valid->messages()->all()[0], 'error');
            return redirect()->back()->withInput();
        }

        $new_image = $request->file('gambar');
        $file_name = time() . '.' . $new_image->extension();
        // $path_save = base_path('assets/media/product');
        $new_image->move('assets/media/product', $file_name);

        $save = Product::create([
            'nama' => $request->nama_product,
            'harga' => $request->harga,
            'deskripsi' => $request->deskripsi,
            'gambar' => $file_name,
        ]);

        if ($save) {
            toast("Success Add Data", 'success');
            return redirect()->route('admin.product');
        }
        toast("Failed Add Data", 'error');
        return redirect()->route('admin.product');
    }
    public function show($id,Request $request){
        $product = Product::find($id);
        if ($request->ajax()) {
            return $product;
        }
        return view('page.admin.product.edit', compact('product'));
    }

    public function update($id,Request $request){

        $valid = Validator::make($request->all(), [
            'nama_product' => 'required',
            'harga' => 'required',
            'deskripsi' => 'required',
        ]);

        if ($valid->fails()) {
            toast($valid->messages()->all()[0], 'error');
            return redirect()->back()->withInput();
        }
        
        $product = Product::find($id);
        $product->nama = $request->nama_product;
        $product->harga = $request->harga;
        $product->deskripsi = $request->deskripsi;
        
        if ($request->file('gambar')) {
            File::delete('assets/media/product/'.$product->gambar);
            
            $new_image = $request->file('gambar');
            $file_name = time() . $product->nama.'.' . $new_image->extension();
            $new_image->move('assets/media/product', $file_name);

            $product->gambar = $file_name;
        }
        $save = $product->update();
        
        if ($save) {
            toast("Success Updated Data", 'success');
            return redirect()->route('admin.product');
        }
        toast("Failed Updated Data", 'error');
        return redirect()->route('admin.product');
    }
    public function delete($id){
        $product = Product::find($id);
        File::delete('assets/media/product/'.$product->gambar);
        $delete = $product->delete($id);

        if ($delete) {
            return ['msg' => 'Success Delete Data', 'code' => 200];
        }
        return ['msg' => 'Error Delete Data','code' => 500];
    }
    public function home(){
        $product = Product::paginate(8);
        $setting = Setting::all();

        return view('page.frontend.product', compact('product', 'setting'));
    }
    public function detail($id){
        $product = Product::find($id);
        $setting = Setting::all();
        
        return view('page.frontend.Detailproduct', compact('product', 'setting'));
    }
}
