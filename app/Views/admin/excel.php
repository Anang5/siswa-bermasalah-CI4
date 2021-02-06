<?php

header("Content type: aplication/vnd-ms-excel");
header("Content-disposition: attachment; filename=Data Siswa Bermasalah.xls");

?>

<html>

<body>
    <table border="1">
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
</body>

</html>