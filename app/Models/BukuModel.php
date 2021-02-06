<?php

namespace App\Models;

use CodeIgniter\Model;

class BukuModel extends Model
{
    protected $table      = 'pelanggaran';
    protected $useTimestamps = true;
    protected $allowedFields = ['nama_siswa', 'slug', 'nim', 'kelas', 'orangtua', 'walikelas', 'jenis_pelanggaran', 'point'];


    public function getBuku($slug = false)
    {
        if ($slug == false) {
            return $this->findAll();
        }

        return $this->where(['slug' => $slug])->first();
    }

    public function search($keyword)
    {
        $builder = $this->table('pelanggaran');
        $builder->like('nama_siswa', $keyword);
        return $builder;
    }

}



//  public function getBuku($slug=false)
// {
//     if ($slug == false){
//         return $this->findAll();
//     }

// return $this->bukuModel->where(['slug' => $slug])->first();
    
// }