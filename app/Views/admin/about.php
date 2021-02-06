<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $judul; ?></title>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col">
                </button>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal_besar">
                    Tampil Tentang Aplikasi
                </button>

                <div class="modal fade" id="modal_besar">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">

                            <!-- Ini adalah Bagian Header Modal -->
                            <div class="modal-header">
                                <h4 class="modal-title">Tentang Aplikasi</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Ini adalah Bagian Body Modal -->
                            <div class="modal-body">
                                <p> Selamat datang di website daftar siswa bermasalah SMA N 17 JEPARA. Website ini dbuat oleh <b>KELOMPOK 10</b> guna memenuhi tugas RPL.Ini adalah sebuah aplikasi berbasis web sederhana bertema daftar siswa bermasalah yang ada di SMA N 17 Jepara. </p>
                            </div>

                            <!-- Ini adalah Bagian Footer Modal -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>