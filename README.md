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