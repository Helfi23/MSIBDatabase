# Penjelasan relasi tabel:

Satu kegiatan pelatihan dapat memiliki banyak daftar pelatihan (one-to-many, dari Tabel Kegiatan Pelatihan ke Tabel Daftar Pelatihan).
Satu peserta pelatihan dapat memiliki banyak daftar pelatihan (one-to-many, dari Tabel Peserta Pelatihan ke Tabel Daftar Pelatihan).
Satu daftar pelatihan hanya dapat terdaftar pada satu kegiatan pelatihan (one-to-one, dari Tabel Daftar Pelatihan ke Tabel Kegiatan Pelatihan).
Satu daftar pelatihan hanya dapat diikuti oleh satu peserta pelatihan (one-to-one, dari Tabel Daftar Pelatihan ke Tabel Peserta Pelatihan).
Satu narasumber dapat mengajar banyak materi pelatihan (one-to-many, dari Tabel Narasumber ke Tabel Narasumber-Materi Pelatihan).
Satu materi pelatihan dapat diajarkan oleh banyak narasumber (one-to-many, dari Tabel Materi Pelatihan ke Tabel Narasumber-Materi Pelatihan).
Satu daftar pelatihan dapat memiliki banyak presensi pelatihan (one-to-many, dari Tabel Daftar Pelatihan ke Tabel Presensi Pelatihan).
Satu presensi pelatihan hanya dapat terdaftar pada satu daftar pelatihan (one-to-one, dari Tabel Presensi Pelatihan ke Tabel Daftar Pelatihan).
