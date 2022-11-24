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

# Tugas 8: Flutter Form
Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

## Creator
Nama : Gabriel Zebaoth Krisopras Putra  

NPM : 2106751480

Kelas : PBP-D


# Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Navigator.push adalah suatu method yang digunakan untuk menimpa page baru diatas current page.

Navigator.pushReplacement mengganti ke page baru dan menghapus/menghilangkan page sebelumnya dari stack navigasi. 

Perbedaan lainnya:
Navigator.push dapat revert ke page sebelum navigator pindah ke page baru. sedangkan, Navigator.pushReplacement tidak bisa.

# Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Adapun widget yang saya gunakan untuk menyelesaikan tugas 9  ini adalah:
- ```form``` widget untuk menampilkan form pada page.
- ```TextFormField``` widget untuk implementasi input pada form berupa text
-  ```DropdownButton``` dan ```DropdownMenuItem``` untuk implementasi input pilihan dengan dropdown button
- ```card``` widget untuk menampilkan data watchlist dalam bentuk bar.
- ```Text```  merupakan sebuah widget untuk menampilkan tulisan.
- ```Padding``` merupakan sebuah widget untuk memberikan jarak/space antara content dengna border dari content tersebut.
- ```Scaffold``` merupakan pengatur struktur visual layout yang mengimplementasikan *material design* dari ```MaterialApp```.
- ```Listtile``` merupakan widget untuk menampilkan fixed-height row untuk menampung title, subtitle, dan trailing.
- ```Column``` merupakan widget yang digunakan untuk mengatur tata letak kumpulan widget atau container dalam kolom-kolom.
- ```Center``` merupakan widget yang berfungsi untuk memposisikan child-widget di posisi center dari parent-widget/container
- ```Expanded``` merupaan widget yang digunakan untu meng-*extend*  widget Row, Column, dan sejenisnya.
- ```ButtonText``` merupakan sebuah widget untuk membuat button dengan text
- ```ButtonStyle``` merupakan widget unutk mengubah atau melakukan styling pada button

#  Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)
- onChange: menambahkan state atau fungsionalitas pada widget ketika di-*tap*.
- onPressed: menambahkan state atau fungsionalitas pada widget ketika di-tekan.
- onChanged: menambahkan state atau fungsionalitas ketika terjadi perubahan pada widget. misalnya, ketika input form diisi, etc.
- onSaved: menambahkan state atau fungsionalitas ketika widget di save.

#  Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Implementasi navigator pada flutter menggunakan tipe data stack. Setiap page yangakan dikunjungi akan di push ke top of stack. Ini tergantung method yang digunakan: bisa menggunakan method Navigator.pushReplacement dan Navigator.push sesuai penjelasan sebelumnya. Untuk kembali ke page sebelumnya, flutter menggunakan navigator.pop. Lalu, page akan dinavigasi ke page pada top of stack saat ini(setelah di pop).


# Jelaskan bagaimana cara kamu mengimplementasikan checlist diatas
1. Refactor Drawer ke widgets/drawer/drawer_menu.
2. Menambahkan page budget_form dan budget_list pada widget ke ListTile.
3. Membuat model Budget agar instance dari model ini dapat ditampilkan ke budget_list
4.  Membuat class baru: BudgetList untuk menyimpan semua data instance Budget dalam struktur data list.
5.  Membuat form: input text, dropdown button, dan datepicker. Membuat fungsionalitas membuat instance budget baru saat form disave.
6.  Membuat budget_list.dart. Mengamil data dari BudgetList. Lalu, menampilkan data di setiap index listnya dalam widget ListTile.
  



# Tugas 9: Integrasi Web Service pada Flutter
Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

## Creator
Nama : Gabriel Zebaoth Krisopras Putra  

NPM : 2106751480

Kelas : PBP-D


# Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?.

Kita dapat fetch sebuah data JSON tanpa membuat model atau class datanya terlebih dahulu. Alih-alih, kita dapat membuat sebuah map, dengan pasangan key value. Hal ini bisa saja dan mungkin berhasil untuk kasus tertentu. Namun, jika data JSON kosong atau fields pada JSON tersebut tidak sesuai dengan harapan, misalnya fieldsnya memiliki nama yang berubah-ubah, maka hal terebut hanya membuat aplikasi yang kita buat error dan tidak berfungsi dengan baik pada waktu tertentu
  

# Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Adapun widget yang saya gunakan untuk menyelesaikan tugas 9  ini adalah:
- ```card``` widget untuk menampilkan data watchlist dalam bentuk bar.
- ```Text```  merupakan sebuah widget untuk menampilkan tulisan.
- ```Padding``` merupakan sebuah widget untuk memberikan jarak/space antara content dengna border dari content tersebut.
- ```ListTile``` Merupakan main atau core component dari flutter. Widget ini merupakan landasan untuk widget lain, seperti Scaffold, Text, TextStyle, Row, dan sebagainya. Widget ini menerapkan style *material design*
- ```Scaffold``` merupakan pengatur struktur visual layout yang mengimplementasikan *material design* dari ```MaterialApp```.
- ```Column``` merupakan widget yang digunakan untuk mengatur tata letak kumpulan widget atau container dalam kolom-kolom.
- ```Center``` merupakan widget yang berfungsi untuk memposisikan child-widget di posisi center dari parent-widget/container
- ```Expanded``` merupaan widget yang digunakan untu meng-*extend*  widget Row, Column, dan sejenisnya.
- ```TextStyle``` merupakan widget yang berfungsi untuk menambahkan *design/styling* pada test: bisa berupa warna atau hal lain.
- ```floatingActionButton``` merupakan sebuah widget untuk membuat button dengan text
- ```FutureBuilder`` merupakan widget yang mendukung proses asinkronus. Widget yang dapat membangun children berdasarkan snapshot terakhir yang pada data Future.

# Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter

Membuat Model sesuai dengan fields pada data JSON yang akan diambil. Pada Model tersebut, sudah terdapat function untuk : mengubah data JSON menjadi instance class model tersebut dan juga mengubah instance  class model tersebut menjadi data JSON. Karena kita akan melakukan method GET, maka kita bisa langsung gunakan function asynchronus untuk mengambil data JSON, kemudian gunakan function ```fromJSON(String d)``` -> untuk membuat instance object dari class model ```Watchlist```. Kemudian, model tersebut akan ditambahkan pada sebuah list ```Future<List<Watchlist>>```


# Jelaskan bagaimana cara kamu mengimplementasikan checlist diatas
1. Membuat watchlist_view.dart, kemudian menambahkan path atau route pada DrawerMenu(). 
2. Membuka website tugas PBP Heroku, ambil path /mywatchlist/JSON/ dan copy data pada web tersebut. Lalu, paste data tersebut pada QuickType untuk membuat dart class : ```Watchlist```
3. Membuat data/watchlist_data.dart untuk membuat sebuah function yang dapat mengambil data dari page heroku dan mengubahnya menjadi instance class dari Watchlist.
4. Membuat MyWatchListViewState. Di dalamnya, saya membuat function setInit() -> untuk mengambil data dari watchlist_data. Lalu disimpan dalam tipe data Future<List<Watchlist>>. Setelah itu, saya menggunakan FutureBuilder yang didalamnya terdapat ListView. Didalam listview, ada informasi terkait dengan watchlist saya. FutureBuilder inilah yang otomatis membangung listview sesuai dengan snapshot yang diambil dari data Future.
5. Selanjutnya, saya membuat sebuah file watchlist_detail.dart, yaitu page untuk menampilkan data watchlist saya. Disini, saya hanya menggunakan widget text dan stylingtext saja.
6. Agar setiap item listview yang diklik langsung pindah ke page detail_movie, maka saya menambahkan attribut onTap: panggil MaterialPageRoute yang mengarah ke Detail(attribute_movie).
7.  Pada halaman detail movie, saya menambahkan back button agar pengguna dapat kembali ke page watchlist_view.

