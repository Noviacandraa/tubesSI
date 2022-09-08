<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class PembayaranController extends Controller
{
    public function index4()
    {
    	$keuangan_desa = DB::table('keuangan_desa')->get();
    	return view('pembayaran',['keuangan_desa' => $keuangan_desa]);
    }
    public function tambah_pembayaran()
    {
        $penduduk= DB::table('penduduk')->get();
        return view('tambah_pembayaran',['penduduk' => $penduduk]);
    }
    public function store(Request $request)
    {
        DB::table('keuangan_desa') -> insert([
            'id'=>$request->id,
            'nik'=>$request->nik,
            'nama'=>$request->nama,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp,
            'tgl_pembayaran'=>$request->tgl_pembayaran,
            'jumlah_pembayaran'=>$request->jumlah_pembayaran,
        ]);
        return redirect ('/pembayaran');
    }
    public function edit($id)
    {
        $keuangan_desa = DB::table('keuangan_desa')->where('id','=',$id)->get();
        $penduduk = DB::table('penduduk')->get();
        return view('edit_pembayaran',['penduduk' => $penduduk, 'keuangan_desa' => $keuangan_desa]);
    }
    public function update(Request $request)
    {
        DB::table('keuangan_desa')->where('id',$request->id)->update([
            'id'=>$request->id,
            'nik'=>$request->nik,
            'nama'=>$request->nama,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp,
            'tgl_pembayaran'=>$request->tgl_pembayaran,
            'jumlah_pembayaran'=>$request->jumlah_pembayaran,
        ]);
        return redirect ('/pembayaran');
    }
	public function hapus($id)
    {
        DB::table('keuangan_desa')->where('id',$id)->delete();
        return redirect('/pembayaran');
    }
}
