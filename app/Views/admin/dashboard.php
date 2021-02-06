<div class="container-fluid">

    <link rel="stylesheet" href="/css/style.css">
    <!-- <div class="container-fluid"> -->
    <h1 class="h3 my-4 text-gray-800 text-center">Daftar Siswa Bermasalah</h1>
    <div class="row">
        <div class="col-md mb-4">
            <button onclick="window.print()" class="btn btn-outline-dark shadow float-right ml-2"> Print <i class="fa fa-print"></i></button>

            <a href="/Buku/excel" class="btn btn-outline-success shadow float-right"> Excel <i class="fa fa-file-excel"></i></a>
        </div>
    </div>
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