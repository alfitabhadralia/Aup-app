<?php

namespace App\Http\Controllers;

use App\Models\Kegiatan;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\DataTables;

class BeritaController extends Controller
{
    //
    public function index(Request $request){
        $berita = Kegiatan::where('kategori', 'berita')->get();
        $beritaToday = Kegiatan::where('kategori', 'berita')->whereDate('created_at', Carbon::today())->get();
        
        if ($request->ajax()) {
            return DataTables::of($berita)
                ->addIndexColumn()
                ->editColumn('gambar', function($row) {
                    $gambar = ($row->gambar) ? asset("assets/media/kegiatan/".$row->gambar) : asset("assets/media/avatars/avatar0.jpg");

                    return '<img src="'. $gambar .'" class=" border bg-secondary" style="max-width: 100px" alt="'.$row->gambar.'">';
                })
                ->editColumn('headline', function($row) {
                    $gambar = ($row->headline == 1) ? '<span class="badge badge-success">True</span>' : '<span class="badge badge-danger">False</span>';

                    return $gambar;
                })
                ->editColumn('created_at', function($row){
                    return $row->created_at->diffForHumans();
                })
                ->addColumn('action', function ($row) {
                    $actionBtn = '<div class="row"><a class="btn btn-sm btn-secondary m-5" href="'.route('admin.kegiatan.show', $row->id).'">
                            <i class="fa fa-pencil text-primary mr-5"></i> Edit
                        </a>
                        <form id="form-delete-'.$row->id.'" action="'.route('admin.kegiatan.delete', $row->id).'" method="post">
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
                ->rawColumns(['action', 'deskripsi', 'gambar', 'kategori', 'created_at', 'judul', 'penulis', 'headline'])
                ->make(true);
        }


        return view('page.admin.berita.index', compact('berita', 'beritaToday'));
    }
    public function create(Request $request){
        return view('page.admin.berita.create');
    }

    public function store(Request $request){
        $valid = Validator::make($request->all(), [
            'judul' => 'required',
            'headline' => 'required',
            'deskripsi' => 'required',
            'gambar' => 'required',
        ]);

        if ($valid->fails()) {
            toast($valid->messages()->all()[0], 'error');
            return redirect()->back()->withInput();
        }
        // dd($request->all());
        $new_image = $request->file('gambar');
        $file_name = time() . $request->nama_product.'.' . $new_image->extension();

        $new_image->move('assets/media/kegiatan', $file_name);

        $save = Kegiatan::create([
            'judul' => $request->judul,
            'penulis' => 'admin',
            'headline' => $request->headline,
            'kategori' => 'berita',
            'deskripsi' => $request->deskripsi,
            'gambar' => $file_name,
        ]);

        if ($save) {
            toast("Success Add Data", 'success');
            return redirect()->route('admin.berita');
        }
        toast("Failed Add Data", 'error');
        return redirect()->route('admin.berita');
    }
    public function show($id,Request $request){
        $berita = Kegiatan::find($id);
        if ($request->ajax()) {
            return $berita;
        }
        return view('page.admin.berita.edit', compact('berita'));
    }

    public function update($id,Request $request){

        $valid = Validator::make($request->all(), [
            'judul' => 'required',
            'headline' => 'required',
            'deskripsi' => 'required',
        ]);

        if ($valid->fails()) {
            toast($valid->messages()->all()[0], 'error');
            return redirect()->back()->withInput();
        }
        
        $berita = Kegiatan::find($id);
        $berita->judul = $request->judul;
        $berita->headline = $request->headline;
        $berita->deskripsi = $request->deskripsi;
        
        if ($request->file('gambar')) {
            File::delete('assets/media/kegiatan/'.$berita->gambar);
            
            $new_image = $request->file('gambar');
            $file_name = time() . $berita->nama.'.' . $new_image->extension();
            $new_image->move('assets/media/kegiatan', $file_name);

            $berita->gambar = $file_name;
        }
        $save = $berita->update();
        
        if ($save) {
            toast("Success Updated Data", 'success');
            return redirect()->route('admin.berita');
        }
        toast("Failed Updated Data", 'error');
        return redirect()->route('admin.berita');
    }
    public function delete($id){
        $product = Kegiatan::find($id);
        File::delete('assets/media/kegiatan/'.$product->gambar);
        $delete = $product->delete($id);

        if ($delete) {
            return ['msg' => 'Success Delete Data', 'code' => 200];
        }
        return ['msg' => 'Error Delete Data','code' => 500];
    }

    public function home(){
        $berita = Kegiatan::paginate(8);
        $beritaHeadline = Kegiatan::where('headline', 1)->limit(3)->get();
        // return $berita;
        return view('page.frontend.berita', compact('berita', 'beritaHeadline'));
    }
    public function detail($id){
        $berita = Kegiatan::find($id);
        $beritaHeadline = Kegiatan::where('headline', 1)->limit(3)->get();

        return view('page.frontend.Detailberita', compact('berita', 'beritaHeadline'));
    }
}
