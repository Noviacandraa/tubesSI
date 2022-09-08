<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class PendidikanController extends Controller
{
    public function index6()
    {
    	$pendidikan_penduduk = DB::table('pendidikan_penduduk')->get();
    	return view('pendidikan',['pendidikan_penduduk' => $pendidikan_penduduk]);
    }
    public function tambah_pendidikan()
    {
        $penduduk= DB::table('penduduk')->get();
        return view('tambah_pendidikan',['penduduk' => $penduduk]);
    }
    public function store(Request $request)
    {
        DB::table('pendidikan_penduduk') -> insert([
            'id'=>$request->id,
            'nik'=>$request->nik,
            'nama'=>$request->nama,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp,
            'pendidikan_terakhir'=>$request->pendidikan_terakhir
        ]);
        return redirect ('/pendidikan');
    }
    public function edit($id)
    {
        $pendidikan_penduduk= DB::table('pendidikan_penduduk')->where('id','=',$id)->get();
        $penduduk = DB::table('penduduk')->get();
        return view('edit_pendidikan',['penduduk' => $penduduk, 'pendidikan_penduduk' => $pendidikan_penduduk]);
    }
    public function update(Request $request)
    {
        DB::table('pendidikan_penduduk')->where('id',$request->id)->update([
            'id'=>$request->id,
            'nik'=>$request->nik,
            'nama'=>$request->nama,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp,
            'pendidikan_terakhir'=>$request->pendidikan_terakhir
        ]);
        return redirect ('/pendidikan');
    }
    public function hapus($id)
    {
        DB::table('pendidikan_penduduk')->where('id',$id)->delete();
        return redirect('/pendidikan');
    }
}
