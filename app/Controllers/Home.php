<?php

namespace App\Controllers;

use App\Models\BukuModel;

class Home extends BaseController
{
	protected $sembarang;
	public function __construct()
	{
		$this->sembarang = new BukuModel();
	}
	public function index()
	{
		$keyword = $this->request->getVar('keyword');
		if ($keyword) {
			$siswa = $this->sembarang->search($keyword);
		} else {
			$siswa = $this->sembarang;
		}
		$data = [
			'judul' => 'Halaman Admin',
			'siswa' => $siswa,
			'content' => 'admin/dashboard1',
			'daftarbuku' => $this->sembarang->getBuku()
		];
		echo view('menuawal/wrapper', $data);
	}


	public function chart()
	{

		$data = [
			'judul' => 'Halaman Tabel',
			'content' => 'admin/tabel'
		];

		echo view('layout/wrapper', $data);
	}


	public function home2()
	{

		$data = [
			'judul' => 'Halaman Home',
			'content' => 'admin/home'
		];

		echo view('layout/wrapper', $data);
	}


	public function about()
	{
		$data = [
			'judul' => 'Halaman About Me',
			'content' => 'admin/about'
		];

		return view('layout/wrapper', $data);
	}


	public function kontak()
	{

		$data = [
			'judul' => 'Halaman kontak',
			'content' => 'admin/contact'
		];

		echo view('layout/wrapper', $data);
	}





	//--------------------------------------------------------------------

}
