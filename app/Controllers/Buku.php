<?php

namespace App\Controllers;

use App\Models\BukuModel;

class Buku extends BaseController
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
        // $daftarbuku = $this->buku->findAll();
        $data = [
            'judul' => 'Daftar Siswa Bermasalah',
            'siswa' => $siswa,
            'content' => 'admin/tabel',
            'daftarbuku' => $this->sembarang->getBuku()
        ];

        echo view('layout/wrapper', $data);
    }


    public function create()
    {
        // session();
        $data = [
            'judul' => 'Tambah Data Siswa',
            'content' => 'admin/create',
            'validation' => \Config\Services::validation()
        ];

        return view('layout/wrapper', $data);
    }


    public function tambah()
    {
        $slug = url_title($this->request->getVar('nama_siswa'), '-', true);
        $this->sembarang->save([
            'nama_siswa' => $this->request->getVar('nama_siswa'),
            'slug' => $slug,
            'nim' => $this->request->getVar('nim'),
            'kelas' => $this->request->getVar('kelas'),
            'orangtua' => $this->request->getVar('orangtua'),
            'walikelas' => $this->request->getVar('walikelas'),
            'jenis_pelanggaran' => $this->request->getVar('jenis_pelanggaran'),
            'point' => $this->request->getVar('point'),
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil Ditambahkan.');

        return redirect()->to('/Buku/index');
    }


    public function hapus($id)
    {
        $this->sembarang->delete($id);
        session()->setFlashdata('pesan', 'Data Berhasil Dihapus.');
        return redirect()->to('/buku');
    }


    public function edit($slug)
    {
        $data = [
            'judul' => 'Ubah Data Siswa',
            'content' => 'admin/edit',
            'validation' => \Config\Services::validation(),
            'daftarbuku' => $this->sembarang->getBuku($slug)
        ];

        return view('layout/wrapper', $data);
    }


    public function update($id)
    {
        $slug = url_title($this->request->getVar('nama_siswa'), '-', true);
        $this->sembarang->save([
            'id' => $id,
            'nama_siswa' => $this->request->getVar('nama_siswa'),
            'slug' => $slug,
            'nim' => $this->request->getVar('nim'),
            'kelas' => $this->request->getVar('kelas'),
            'orangtua' => $this->request->getVar('orangtua'),
            'walikelas' => $this->request->getVar('walikelas'),
            'jenis_pelanggaran' => $this->request->getVar('jenis_pelanggaran'),
            'point' => $this->request->getVar('point'),
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil DiUbah.');

        return redirect()->to('/buku');
    }

    public function dashboard()
    {
        $search = $this->request->getVar('search');
        if ($search) {
            $siswa1 = $this->sembarang->search($search);
        } else {
            $siswa1 = $this->sembarang;
        }
        // $daftarbuku = $this->buku->findAll();
        $data = [
            'judul' => 'Daftar Siswa',
            'siswa' => $siswa1,
            'content' => 'admin/dashboard',
            'daftarbuku' => $this->sembarang->getBuku()
        ];

        echo view('layout/wrapper', $data);
    }


    public function menu2($slug)
    {
        $data = [
            'judul' => 'Detail Buku',
            'content' => 'admin/menu2',
            'daftarbuku' => $this->sembarang->getBuku($slug)
        ];
        echo view('layout/wrapper', $data);
    }

    public function dashboard1()
    {
        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $siswa = $this->sembarang->search($keyword);
        } else {
            $siswa = $this->sembarang;
        }

        $data = [
            'judul' => ' Daftar Data Siswa 2',
            'siswa' => $siswa,
            'content' => 'admin/dashboard1',
            'daftarbuku' => $this->sembarang->getBuku()
        ];

        echo view('menuawal/wrapper', $data);
    }

    public function excel()
    {
        $data = [
            'daftarbuku' => $this->sembarang->getBuku()
        ];

        return view('admin/excel', $data);
    }
}
