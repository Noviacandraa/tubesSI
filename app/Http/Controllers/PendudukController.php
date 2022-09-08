<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PendudukController extends Controller
{
    public function index()
    {
    	$penduduk = DB::table('penduduk')->get();
    	return view('penduduk', ['penduduk' => $penduduk]);
    }
    public function tambah()
    {
        return view('tambah');
    }
    public function store (Request $request)
    {
        DB::table('penduduk')->insert([
            'nik'=>$request->nik,
            'nama'=>$request->nama,
            'ttl'=>$request->ttl,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp,
        ]);
        return redirect('/penduduk');
    }
    public function edit($nik)
    {
        $penduduk = DB::table('penduduk')->where('NIK','=',$nik)->get();
        return view('edit',['penduduk'=>$penduduk]);
    }
    public function update(Request $request)
    {
        DB::table('penduduk')->where('nik',$request->nik)->update([
            'nik'=>$request->nik,
            'nama'=>$request->nama,
            'ttl'=>$request->ttl,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp
        ]);
        return redirect ('/penduduk');
    }
    public function hapus($nik)
    {
        DB::table('penduduk')->where('nik',$nik)->delete();
        return redirect('/penduduk');
    }

}