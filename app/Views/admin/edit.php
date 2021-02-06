<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 class="my-4"><i>Form Ubah Data Siswa</i></h2>
            <form action="/Buku/update/<?= $daftarbuku['id']; ?>" method="POST" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <input type="hidden" name="slug" value="<?= $daftarbuku['slug']; ?>">
                <div class="form-group row">
                    <label for="nama_siswa" class="col-sm-2 col-form-label">Nama Siswa</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="nama_siswa" name="nama_siswa" autofocus value="<?= (old('nama_siswa')) ? old('nama_siswa') : $daftarbuku['nama_siswa']; ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="nim" class="col-sm-2 col-form-label">nim</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="nim" name="nim" value="<?= (old('nim')) ? old('nim') : $daftarbuku['nim']; ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="kelas" class="col-sm-2 col-form-label">kelas</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="kelas" name="kelas" value="<?= (old('kelas')) ? old('kelas') : $daftarbuku['kelas']; ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="orangtua" class="col-sm-2 col-form-label">orangtua</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="orangtua" name="orangtua" value="<?= (old('orangtua')) ? old('orangtua') : $daftarbuku['orangtua']; ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="walikelas" class="col-sm-2 col-form-label">walikelas</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control <?= ($validation->hasError('walikelas')) ? 'is-invalid' : ''; ?>" id="walikelas" name="walikelas" value="<?= (old('walikelas')) ? old('walikelas') : $daftarbuku['walikelas']; ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="jenis_pelanggaran" class="col-sm-2 col-form-label">jenis pelanggaran</label>
                    <div class="col-sm-8">
                        <select class="form-control" id="jenis_pelanggaran" name="jenis_pelanggaran">
                            <option value="Terlambat">Terlambat</option>
                            <option value="Bolos Sekolah">Bolos sekolah</option>
                            <option value="Berkelahi">Berkelahi</option>
                            <option value="Bawa Senjata Tajam">Bawa Senjata Tajam</option>
                            <option value="Merokok / Minum-minuman Keras">Merokok / Minum-minuman Keras</option>
                            <option value="Tindakan Asusila">Tindakan Asusila</option>
                            <option value="Atribut tidak Lengkap">Atribut tidak Lengkap</option>
                            <option value="Lain-lain">Lain - lain</option>

                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="point" class="col-sm-2 col-form-label">point</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="point" name="point" value="<?= (old('point')) ? old('point') : $daftarbuku['point']; ?>">
                    </div>
                </div>

                <div class=" form-group row">
                    <div class="col-sm-10">
                        <button type="submit" class="btn btn-success">Ubah Data Siswa</button>
                    </div>

                    <a href="/buku" class="btn btn-outline-dark mt-5"><i>Kembali ke Daftar Siswa</i></a>


                </div>
            </form>
        </div>
    </div>
</div>