<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PerangkatController extends Controller
{
    public function index2()
    {
    	// mengambil data dari table pegawai
    	$perangkat_desa = DB::table('perangkat_desa')->get();
 
    	// mengirim data pegawai ke view index
    	return view('perangkat',['perangkat_desa' => $perangkat_desa]);
 
    }
	public function tambah_perangkat()
    {
        $penduduk= DB::table('penduduk')->get();
        return view('tambah_perangkat',['penduduk' => $penduduk]);
    }
    public function store(Request $request)
    {
        DB::table('perangkat_desa') -> insert([
            'id'=>$request->id,
            'nik'=>$request->nik,
            'nama'=>$request->nama,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp,
            'jabatan'=>$request->jabatan
        ]);
        return redirect ('/perangkat');
    }
    public function edit($id)
    {
        $perangkat_desa = DB::table('perangkat_desa')->where('id','=',$id)->get();
        $penduduk = DB::table('penduduk')->get();
        return view('edit_perangkat',['penduduk' => $penduduk, 'perangkat_desa' => $perangkat_desa]);
    }
    public function update(Request $request)
    {
        DB::table('perangkat_desa')->where('id',$request->id)->update([
            'id'=>$request->id,
            'nik'=>$request->nik,
            'nama'=>$request->nama,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp,
            'jabatan'=>$request->jabatan
        ]);
        return redirect ('/perangkat');
    }
    public function hapus($id)
    {
        DB::table('perangkat_desa')->where('id',$id)->delete();
        return redirect('/perangkat');
    }
}
