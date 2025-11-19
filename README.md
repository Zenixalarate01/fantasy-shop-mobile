# fantasy_shop_mobile

Tugas 7
Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
widget tree merupakan struktur heriarkiyang menunjukkan cara widget tersusun dan terdiri atas parent dan child. Parent merupakan
widget yang berada di tingkat tertinggi yang menutupi widget lain. Sedangkan child merupakan widget yang berada dalam widget lain.

Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
- MaterialApp: widget root dan mengatur struktur, tema, dan routing aplikasi
- Stateless Widget: widget yang tidak memiliki state dan UI statisnya diubah hanya ketika data dari luar berubah
- Scaffold: Kerangka halaman
- AppBar: menampilkan bar di atas halaman (mirip navbar)
- Text: menampilkan tulisan dilayar
- Row & Column: menampilkan widget secara horizontal dan vertikal
- SizedBox: jarak antara widget
- Container: Membungkus widget, mendukung styling, padding, dll.
- Center, padding, Gridview: child di tengah parent widget, jarak dalam sekitar widget, layout grid dengan jumlah tertentu
- Card: tampilan kartu untuk Infocard
- MediaQuerry: mengambil info layar untuk responsive
- Material: memberikan efek untuk di klik
- InkWell: membuat widget bisa ditekan
- Snackbar: notifikasi di bawah layar ketika menekan tombol
- BoxDecoration: dekorasi container(warna, border, dll.)
- List.generate: membuat list widget secara dinamis


Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
Fungsi dari MaterialApp merupakan widget yang menyediakan desain tema material, navigasi, Localizations, struktur berdasarkan UI
Flutter material. MaterialApp digunakan sebagai widget root karena memberikan style android/material lain secara default,
mempermudah navigasi antar halaman, dan menyediakan tema sehingga stylingnya lebih mudah.

Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
Perbedaannya yaitu StatelessWidget yaitu tidak menyimpan state sehingga UI tidak berubah, sedangkan Stateful memiliki state dan
UI bisa berubah dimana kita bisa set statenya. Tidak hanya itu, stateless juga hanya sekali build untuk lifecycle sedangkan
stateful memiliki lifecycle yang lebih kompleks. Penggunaan stateless digunakan ketika tampilan tidak berubah atau hanya
menampilkan data statis sedangkan stateful digunakan ketika UI berubah karena aksi pengguna atau perubahan data, misalnya saat
input form, animasi, atau update data dari server.

Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
BuildContext merupakan objek yang menyimpan informasi tentang lokasi widget di dalam widget tree Flutter. Bisa dikatakan
BuildContext ini semacam posisi widget dalam UI yang membantu widget menemukan data dan widget lainnya di parent. BuildContext
ini penting karena memiliki banyak kegunaan seperti mengakses widget parent, membangun UI sesuai posisi widget, melakukan
navigasi antar halaman, menampilakan snackbar, dan juga mencari inheritance widget(contoh: tema, navigasi, ukuran layar, dll.).
Penggunaannya di metode build seperti: "Widget build(BuildContext context)" untuk membangun UI berdasarkan posisi widget di tree.
Ketika kode di atas dipanggil, misalnya kita ingin memanggil warna tema, context akan dipakai untuk ambil tema warna dari
MaterialApp. 

Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
Hot reload merupakan fitur di Flutter yang memungkinkan kita melihat perubahan kode secara langsung tanpa menghentikan aplikas
(state tidak dihilangkan). Sedangkan hot restart merupakan fitur yang menjalankan ulang aplikasi dari awal dan menghapus seluruh
state, sehingga kondisi aplikasi kembali ke awal.

Jelaskan bagaimana kamu menambahkan navigasi untuk berpindah antar layar di aplikasi Flutter.
Cara untuk menambahkan navigasi antar layar yaitu menggunakan navigator. Ketika tombol ditekan, nanti push() akan membuka halaman
baru dengan MaterialPageRoute dan pop untuk kembali. Navigator ini bekerja seperti stack sehingga halaman dapat ditambah atau
dihapus sesuai urutan.


Tugas 8
Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
Navigator.push() --> Menambahkan halaman baru di atas stack halaman
Kasus: Saat pengguna tetap boleh kembali ke halaman sebelumnya seperti membuka form atau detail produk

Navigator.pushReplacement() --> Mengganti halaman saat ini dengan halaman baru
Kasus: Saat navigasi ke halaman utama dan tidak ingin kembali ke halaman sebelumnya seperti pindah menu lewat drawer

Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?


Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
Kelebihan penggunaan Padding, SingleChildScrollView, dan ListView yaitu:

Padding dapat memberikan jarak antara elemen sehingga terlihat tidak menempel
contoh penggunaan: Di form, tiap field memiliki jarak agar terlihat tidak menempel. Di home (menu) juga elemet my product, create item, dan
all item terlihat memiliki jarak

SingleChildScrollView membuat halaman bisa di scroll
contoh penggunaan: Di form, kita menggunakannya karena urutan pengisian semua field di form it vertikal, jadi penggunaan
SingleChildScrollVIew ini sangat membantu dalam bentuk tampilan

ListView menampilkan daftar widget dalam scroll otomatis
contoh penggunaan: Menu Drawer dan list produk

Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
Cara saya menyesuaikan warna tema football shop saya yaitu mencari 1 warna dasar, di kasus ini saya memilih warna ungu. Tidak hanya itu,
saya juga memakai website untuk sebagai color generator untuk membantu dalam menentukan warna yang cocok dengan warna dasar saya.



Tugas 9
Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
- Alasannya yaitu untuk memvalidasi tipe data, Null-Safety, dan Maintainability. Validasi tipe data Model Dart dapat memastikan setiap field memiliki tipe yang sesuai, misal String, double, atau bool. Hal ini membantu mendeteksi kesalahan sejak awal. Untuk Null-safety, dengan model, kita bisa menentukan field mana yang boleh null dan mana yang wajib ada, sehingga mengurangi potensi crash. Maintainability membuat kode model lebih rapi dan mudah dirawat. Semua mapping JSON ke objek Dart sudah tersentralisasi di model, yang memudahkan refactoring atau perubahan API.
Konsekuensi jika langsung menggunakan Map<String, dynamic> tanpa model:
- Risiko typo atau field yang tidak ada di JSON
- Tidak ada jaminan tipe sehingga rentan bug
- Sulit membaca kode, terutama untuk proyek besar.


Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
- http
http merupakan library dasar untuk melakukan HTTP request seperti GET, POST, PUT, DELETE. http tidak secara otomatis menangani session/cookie. Sehingga cocok untuk API stateless.

- CookieRequest (package: pbp_django_auth)
CookieRequest merupakan turunan http client yang sudah mengelola cookie secara otomatis. package ini akan menyimpan session login Django di cookie. CookieRequest dapat dipakai di banyak widget tanpa harus login ulang. misalnya ketika login di satu page, page lain bisa langsung mengakses API yang butuh autentikasi.


Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
- Karena semua widget yang butuh data login atau akses API aman harus pakai session yang sama. Jika tidak dibagikan maka setiap widget akan membuat request baru yang membuat session hilang sehingga request gagal karena tidak terautentikasi. Solusinya yaitu menggunakan Provider agar semua widget dapat akses session login yang sama.



Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
Agar Flutter bisa berkomunikasi dengan Django, kita perlu menambahkan 10.0.2.2 ke ALLOWED_HOSTS, mengaktifkan CORS, mengatur secure cookie, dan memberi izin internet di Android supaya request dan session login bisa berjalan. Jika konfigurasinya salah, request bisa ditolak, cookie tidak tersimpan, dan autentikasi gagal. Dengan pengaturan yang benar, Flutter dapat mengirim dan menerima data JSON serta menggunakan session login secara konsisten di semua widget.


Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
- User input di Flutter seperti input form, nanti inputnya akan dikonversi menjadi JSON yang akan dikirim ke Django lewat CookieRequest.post. Django menerima request tersebut lalu akan memvalidasi form / data. Data disimpan di database lalu akan direspon oleh Django dengan JSON/status sukses. Flutter FutureBuilder/provider menerima JSON lalu mapping ke model Dart ItemEntry kemudian ditampilkan.


Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
1. Register
Flutter mengirim username & password ke Django di aplikasi authentikasi. Django validasi form lalu menyimpan user kemudian dikembalikan status sukses. Terakhir, flutter menampilkan snack bar / redirect ke login.

2. Login
Flutter mengirim username & password ke views authenticate django. Jika benar maka Django akan membuat session cookie.Flutter menyimpan session via CookieRequest yang akan digunakan untuk semua request berikutnya pakai session.

3. Logout
Flutter request ke Django di aplikasi authenticate yang akan melakukan delete session cookie. Sehingga Flutter reset state login lalu redirect ke login page.


Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
- Membuat app authentication
- Buat function untuk register, login, dan logout
- Melalukan git add, commit, dan push ke PWS untuk base 
- Melakukan integrasi authentication ke flutter dengan membuat page untuk registrasi dan login
- Membuat model kustom untuk model flutter
- Membuat List Item, Card untuk item, dan Detail untuk item
- Menambahkan back button untuk semua yang dibutuhkan (myproduct, dan item detail)
- Membuat integrasi form untuk flutter
- Membuat filter untuk My product