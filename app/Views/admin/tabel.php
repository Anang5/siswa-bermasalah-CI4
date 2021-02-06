<!-- Begin Page Content -->

<link rel="stylesheet" href="/css/style.css">

<div class="container-fluid">

    <div class="row">
        <div class="col-md">
            <a href="/Buku/create" class="btn btn-outline-success shadow mt-4"> <i class="fa fa-plus"> </i> Tambah Data Siswa</a>

        </div>

    </div>
    <h1 class="h3 my-4 text-gray-800 text-center">Daftar Siswa Bermasalah</h1>

    <!-- <?php if (session()->getFlashdata('pesan')) : ?>
        <div class="alert alert-success" role="alert">
            <?= session()->getFlashdata('pesan'); ?>
        </div>

    <?php endif; ?> -->

    <div class="swal" data-swal="<?= session()->getFlashdata('pesan'); ?>"></div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Data Tables</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive table-bordered table-hover">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead class="thead-dark">
                        <tr>
                            <th>No</th>
                            <th>Nama Siswa</th>
                            <th>Nim</th>
                            <th>Orang Tua</th>
                            <th>Wali Kelas</th>
                            <th>Jenis Pelanggaran</th>
                            <th>Point</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = 1; ?>
                        <?php foreach ($daftarbuku as $b) : ?>
                            <tr>
                                <th scope="row"><?= $i++; ?></th>
                                <td><?= $b['nama_siswa']; ?></td>
                                <td><?= $b['nim']; ?></td>
                                <td><?= $b['orangtua']; ?></td>
                                <td><?= $b['walikelas']; ?></td>
                                <td><?= $b['jenis_pelanggaran']; ?></td>
                                <td><?= $b['point']; ?></td>
                                <td>
                                    <a href="/Buku/edit/<?= $b['slug']; ?>" class="badge badge-primary">Edit</a>

                                    <a href="/Buku/hapus/<?= $b['id']; ?>" class="badge badge-danger btn-hapus" ">Hapus</a>
                                </td>

                            </tr>
                        <?php endforeach; ?>
                        </thead>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->