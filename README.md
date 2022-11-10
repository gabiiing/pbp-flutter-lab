# Tugas 7: Elemen Dasar Flutter

Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

## Creator
Nama : Gabriel Zebaoth Krisopras Putra  

NPM : 2106751480

Kelas : PBP-D


# Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

- ```STATELESS WIDGET```
  widget statis adalah widget yang berfungsi untuk menampilkan hal-hal yang sifatnya statis atau tidak berubah. 
  
- ```STATEFUL WIDGET```
    Stateful widget adalah suatu widget yang berfungsi untuk menampilkan data-data yang dinamis atau data yang dengan pengaturan/function tertentu dapat kita ubah sewaktu-waktu.
- ```PERBEDAAN STATELESS WIDGET DAN STATEFUL WIDGET```
  Stateless merupakan widget yang tidak berubah, sedangkan stateful widget merupakan widget yang berubah/dinamis.

  Stateful widget terdapat ```setState()``` sedangkan stateless widget tidak

  

# Sebutkan widget apa saja yang kamu pakai di proyek kali in dan jelaskan fungsinya.
Adapun widget yang saya gunakan untuk menyelesaikan tugas 7  atau ```counter_7``` adalah:
- ```MaterialApp```: Merupakan main atau core component dari flutter. Widget ini merupakan landasan untuk widget lain, seperti Scaffold, Text, TextStyle, Row, dan sebagainya. Widget ini menerapkan style *material design*
- ```Scaffold``` merupakan pengatur struktur visual layout yang mengimplementasikan *material design* dari ```MaterialApp```.
- ```Container``` merupakan widget yang berfungsi sebagai pembungkus widget lain 
- ```Row``` merupakan widget yang digunakan untuk mengatur tata letak kumpulan widget atau container dalam baris-baris.
- ```Column``` merupakan widget yang digunakan untuk mengatur tata letak kumpulan widget atau container dalam kolom-kolom.
- ```Center``` merupakan widget yang berfungsi untuk memposisikan child-widget di posisi center dari parent-widget/container
- ```Expanded``` merupaan widget yang digunakan untu meng-*extend*  widget Row, Column, dan sejenisnya.
- ```Text``` merupakan widget yang berfungsi untuk menampilkan text pada appBar, home, atau widget container lainnya.
- ```TextStyle``` merupakan widget yang berfungsi untuk menambahkan *design/styling* pada test: bisa berupa warna atau hal lain.
- ```FloatingActionButton``` merupakan widget yang berfungsi sebagai tombol.
- ```Visibillity``` merupakan widget yang berfungsi untuk *hide/show* widget tertentu


# Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

```setState()``` merupakan fungsi untuk memberitahukan bahwa keadaan atau state suatu objek telah berubah sehingga berpengaruh pada *user intreface* dalam subtreenya. Akibatnya, *framework* menjadwalkan *build* ulang untuk state objek tersebut. State dapat berubah bisa saja karena nilai variabel berubah. Biasanya variabel yang berubah adalah variabel yang dapat diakses (mengacu ketentuan accesor di dart dan/atau variabel global)


# Jelaskan perbedaan antara const dan final
final dan const merupakan tipe data yang tidak dapat diubah datanya. Perbedaannya:
const harus diinisialisasi saat kompilasi, nilai bersifat konstan dan secara langsung/eksplisit pada saat kompilasi variabel. Sedangkan, final tidak mengharuskan variabel memiliki bilai secara eksplisit pada kompilasi

# Jelaskan bagaimana cara kamu mengimplementasikan checlist diatas
1. Membuat flutter app baru ```flutter create counter_7```
2. Buka folder counter_7 dan jalankan IDE kesayangan Anda
3. Membuat variabel _counter sebagai penghitung dan isVisible(berfungsi untuk menampilkan atau menghilangkan tombol (-), nilai default= false) pada class _MyHomePageState
4. Membuat fungsi incrementCounter() dan decrementCounter() pada class _MyHomePageState. Dalam kedua fungsi tersebut, saya menambahkan kondisi: jika counter == 0, isVisible= false,jika counter>0 isVisible=True
5. Membuat widget FloatingActionButton > Row > Visibility >>  FloatingActionButton : decrementButton |  Expanded >> Container | FloatingActionButton (incrementButton())
6. Untuk menampilkan ganjil-genap, pertama-tama saya menambahkan widget text pada body, isi dari text tersebut adalah hasil return dari fungsi showResult() pada class _MyHomePageState.
7. Fungsi showResult(), jika ganjil menampilkan kata GANJIL dan mengatur TextStyle menjadi warna biru. Jika genp menampilkan kata GENAP dan mengatur TextStyle manjadi warna merah.
8. DONE !



Made with <> by [gabiiing](https://github.com/gabiiing/)
