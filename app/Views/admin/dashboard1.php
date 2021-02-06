<div class="container-fluid">

    <link rel="stylesheet" href="/css/style.css">
    <!-- <div class="container-fluid"> -->
    <h1 class="h1 mb-3 text-gray-800 text-center"><b>Daftar Siswa Bermasalah</b></h1>
    <h6 class="h4 mb-5 text-gray-700 text-center">Tahun Ajaran 2020 / 2021</h6>
    <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search" method="POST">
        <div class="input-group">
            <input type="text" class="form-control bg-light border-0 small" placeholder="Pencarian...." name="keyword" aria-label="Search" aria-describedby="basic-addon2">
            <div class="input-group-append">
                <button class="btn btn-primary" type="submit" name="submit">
                    <i class="fas fa-search fa-sm"></i>
                </button>
            </div>
        </div>
    </form>
    <div class="container">

    </div>
    <div class="card shadow my-4">
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