<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class UrusanController extends Controller
{
public function index5()
{
    	$urusan = DB::table('urusan')->get();
    	return view('urusan',['urusan' => $urusan]);
 
    }
    public function tambah_urusan()
    {
        $penduduk= DB::table('penduduk')->get();
        return view('tambah_urusan',['penduduk' => $penduduk]);
    }
    public function store(Request $request)
    {
        DB::table('urusan')-> insert([
            'id'=>$request->id,
            'nik'=>$request->nik,
            'nama'=>$request->nama,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp,
            'urusan'=>$request->urusan,
        ]);
        return redirect ('/urusan');
    }
    public function edit($id)
    {
        $urusan= DB::table('urusan')->where('id','=',$id)->get();
        $penduduk = DB::table('penduduk')->get();
        return view('edit_urusan',['penduduk' => $penduduk, 'urusan' => $urusan]);
    }
    public function update(Request $request)
    {
        DB::table('urusan')->where('id',$request->id)->update([
            'id'=>$request->id,
            'nik'=>$request->nik,
            'nama'=>$request->nama,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp,
            'urusan'=>$request->urusan,
        ]);
        return redirect ('/urusan');
    }
	public function hapus($id)
    {
        DB::table('urusan')->where('id',$id)->delete();
        return redirect('/urusan');
    }
}
