const swal = $('.swal').data('swal');
if (swal) {
    Swal.fire({
        title : 'Data Siswa',
        text :  swal,
        icon : 'success'
    });
    
    $(document).on('click', '.btn-hapus', function (e) {

        // hentikan aksi default
        e.preventDefault();
        const href = $(this).attr('href');

        Swal.fire({
            title: 'Apakah Anda Yakin ?',
            text: "Data yang dihapus tidak bisa dikembalikan",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Iya, Hapus'
          }).then((result) => {
            if (result.value) {
              document.location.href = href;
            }
          })
    })
    
}