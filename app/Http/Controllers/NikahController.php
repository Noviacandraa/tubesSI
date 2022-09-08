<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NikahController extends Controller
{
    public function index3()
    {
    	$data_nikah = DB::table('data_nikah')->get();
    	return view('nikah',['data_nikah' => $data_nikah]);
 
    }
    public function tambah_nikah()
    {
        $penduduk= DB::table('penduduk')->get();
        return view('tambah_nikah',['penduduk' => $penduduk]);
    }
    public function store(Request $request)
    {
        DB::table('data_nikah') -> insert([
            'id'=>$request->id,
            'nik'=>$request->nik,
            'nama'=>$request->nama,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp,
            'tgl_nikah'=>$request->tgl_nikah
        ]);
        return redirect ('/nikah');
    }
    public function edit($id)
    {
        $data_nikah= DB::table('data_nikah')->where('id','=',$id)->get();
        $penduduk = DB::table('penduduk')->get();
        return view('edit_nikah',['penduduk' => $penduduk, 'data_nikah' => $data_nikah]);
    }
    public function update(Request $request)
    {
        DB::table('data_nikah')->where('id',$request->id)->update([
            'id'=>$request->id,
            'nik'=>$request->nik,
            'nama'=>$request->nama,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp,
            'tgl_nikah'=>$request->tgl_nikah
        ]);
        return redirect ('/nikah');
    }
	public function hapus($id)
    {
        DB::table('data_nikah')->where('id',$id)->delete();
        return redirect('/nikah');
    }
}
