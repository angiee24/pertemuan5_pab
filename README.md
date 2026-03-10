# Angela Caroline Budiman (2409116008)  
### Sistem Informasi A'2024

## Struktur Folder
<img width="285" height="386" alt="image" src="https://github.com/user-attachments/assets/160239c3-1d1f-47d5-beeb-6a7448de3064" />

Struktur folder pada project ini terdiri dari folder **models**, **providers**, dan **pages**, serta file utama **main.dart** di dalam direktori **lib**.

Folder **models** berisi class yang menangani struktur data aplikasi seperti `registrant_model.dart` yang menyimpan informasi peserta registrasi.

Folder **providers** berisi class yang mengatur **state management menggunakan Provider**, yaitu `registration_provider.dart` yang bertanggung jawab mengelola daftar peserta yang terdaftar.

Folder **pages** berisi seluruh tampilan atau UI aplikasi seperti:

- halaman **TextField demo**
- halaman **Form Validation**
- halaman **Input Widgets**
- halaman **DatePicker**
- halaman **Registration Form**
- halaman **Registrant List**
- halaman **Registrant Detail**

Sedangkan **main.dart** berfungsi sebagai **entry point aplikasi** yang mengatur konfigurasi awal aplikasi Flutter dan menyediakan **ChangeNotifierProvider** agar state dapat diakses oleh seluruh halaman.

---

# 🧩 Widget yang Digunakan

StatelessWidget  
StatefulWidget  
Scaffold  
AppBar  
TextField  
TextFormField  
CheckboxListTile  
RadioListTile  
SwitchListTile  
Slider  
DropdownButtonFormField  
ListTile  
ListView  
Card  
CircleAvatar  
AlertDialog  
SnackBar  
Navigator  
Consumer  
ChangeNotifierProvider  

---

# 📝 Registration Form App: Flutter Form & Validation

Implementasi **form input dan validasi menggunakan Flutter serta state management Provider** untuk menyimpan data peserta registrasi.

Proyek ini merupakan bagian dari **materi perkuliahan Pemrograman Aplikasi Bergerak (PAB)** di **Universitas Mulawarman**.

---

# 📌 Deskripsi Singkat

Aplikasi ini mendemonstrasikan bagaimana cara:

- Menggunakan **TextField dan TextFormField**
- Melakukan **validasi input form**
- Menggunakan berbagai **widget input Flutter**
- Mengimplementasikan **DatePicker**
- Mengelola **state menggunakan Provider**
- Menampilkan data peserta dalam **ListView**
- Menampilkan detail peserta dalam halaman terpisah

---

# 🚀 Fitur Utama

### TextField Input
Menampilkan form sederhana untuk input **nama, email, dan password** menggunakan TextField.

### Form Validation
Menggunakan **Form widget dan validator** untuk memastikan input valid sebelum dikirim.

### Input Widgets Showcase
Menampilkan berbagai widget input seperti:

- Checkbox
- Radio button
- Switch
- Slider
- Dropdown

### DatePicker & TimePicker
Memungkinkan pengguna memilih **tanggal dan waktu** melalui dialog bawaan Flutter.

### Registration Form
Form registrasi lengkap yang terdiri dari:

- Nama
- Email
- Password
- Gender
- Program Studi
- Tanggal Lahir
- Persetujuan Terms & Conditions

### Registrant List
Menampilkan daftar peserta yang sudah melakukan registrasi menggunakan **ListView**.

### Registrant Detail
Menampilkan detail informasi peserta seperti:

- Nama
- Email
- Gender
- Program Studi
- Tanggal Lahir
- Umur

# 🧠 Konsep & Implementasi State

Aplikasi ini menggunakan **Provider dan ChangeNotifier** sebagai metode state management untuk memisahkan logika bisnis dari tampilan (UI). Dengan pendekatan ini, data aplikasi tidak dikelola langsung di dalam widget, tetapi disimpan pada class khusus yaitu **RegistrationProvider**. Class ini bertanggung jawab untuk menyimpan, menambah, dan menghapus data peserta registrasi yang disimpan dalam bentuk List<Registrant>. Setiap kali terjadi perubahan data, method **notifyListeners()** akan dipanggil sehingga seluruh widget yang mendengarkan perubahan state melalui **Consumer** atau **context.watch()** akan otomatis melakukan rebuild dan menampilkan data terbaru. Dengan cara ini, aplikasi menjadi lebih terstruktur, mudah dikelola, serta menghindari pengiriman data antar widget secara manual (prop drilling).

# Dokumentasi

<img width="1919" height="836" alt="image" src="https://github.com/user-attachments/assets/a9ed0671-5d66-4143-a438-30fe791e2c1c" />


Gambar tersebut menampilkan tampilan awal Form Registrasi Event pada aplikasi Flutter. Pada halaman ini terdapat beberapa field input yang harus diisi oleh pengguna, seperti Nama Lengkap, Email, Password, Jenis Kelamin, Program Studi, serta Tanggal Lahir. Setiap input dirancang menggunakan widget seperti TextFormField, RadioListTile, dan DropdownButtonFormField. Selain itu, terdapat juga checkbox untuk menyetujui syarat dan ketentuan sebelum melakukan registrasi. Halaman ini berfungsi sebagai tempat utama pengguna memasukkan data diri yang nantinya akan disimpan dan ditampilkan dalam daftar peserta.


<img width="1919" height="869" alt="image" src="https://github.com/user-attachments/assets/33ac84d1-396f-4b5d-b4ce-d41639cd3c63" />


Gambar tersebut menunjukkan tampilan form registrasi yang telah diisi oleh pengguna. Data seperti nama, email, password, jenis kelamin, program studi, serta tanggal lahir telah dimasukkan ke dalam field yang tersedia. Setelah semua data diisi dengan benar, pengguna dapat menekan tombol DAFTAR SEKARANG untuk memproses registrasi. Pada tahap ini, aplikasi akan melakukan proses validasi terlebih dahulu untuk memastikan bahwa semua data yang dimasukkan sesuai dengan aturan yang telah ditentukan.


<img width="338" height="285" alt="image" src="https://github.com/user-attachments/assets/a92bd0cd-ea04-4be5-a93b-336e0fd25937" />

Gambar tersebut memperlihatkan dialog notifikasi keberhasilan registrasi yang muncul setelah pengguna berhasil mengisi dan mengirimkan form registrasi. Dialog ini berisi pesan bahwa proses registrasi telah berhasil dilakukan. Pada dialog tersebut juga terdapat pilihan tombol seperti Daftar Lagi untuk kembali mengisi form registrasi baru, serta Lihat Daftar untuk menuju halaman daftar peserta yang telah terdaftar di dalam sistem.

<img width="185" height="39" alt="image" src="https://github.com/user-attachments/assets/fa84734e-5c87-4ce2-9c29-86e1fae93c86" />


Gambar tersebut menunjukkan badge jumlah peserta yang telah melakukan registrasi pada ikon daftar peserta di bagian AppBar. Badge ini menampilkan angka yang menunjukkan jumlah data peserta yang sudah tersimpan di dalam aplikasi. Fitur ini memanfaatkan state management menggunakan Provider, sehingga setiap kali ada peserta baru yang mendaftar, jumlah pada badge akan langsung diperbarui secara otomatis tanpa perlu memuat ulang halaman.


<img width="1919" height="965" alt="image" src="https://github.com/user-attachments/assets/d8b33aca-c7d5-4abe-b541-d0bad3399104" />


Gambar tersebut menampilkan halaman Daftar Peserta yang berisi seluruh data pengguna yang telah melakukan registrasi. Setiap peserta ditampilkan dalam bentuk Card atau ListTile yang memuat informasi seperti nama, program studi, dan alamat email. Pada setiap item juga terdapat tombol hapus (delete) yang memungkinkan pengguna untuk menghapus data peserta tertentu dari daftar. Selain itu, ketika salah satu item diklik, aplikasi akan menavigasi pengguna ke halaman detail peserta untuk melihat informasi yang lebih lengkap.


<img width="312" height="211" alt="image" src="https://github.com/user-attachments/assets/b82c9288-8db8-4886-ba62-9a9e0c0d32dc" />


Gambar tersebut memperlihatkan dialog konfirmasi penghapusan data peserta. Dialog ini muncul ketika pengguna menekan tombol hapus pada salah satu item di daftar peserta. Tujuan dari dialog ini adalah untuk memastikan bahwa pengguna benar-benar ingin menghapus data tersebut. Terdapat dua pilihan tombol yaitu Batal untuk membatalkan proses penghapusan dan Hapus untuk mengonfirmasi bahwa data peserta tersebut akan dihapus dari daftar.


<img width="1918" height="971" alt="image" src="https://github.com/user-attachments/assets/ab1f2304-ce7e-4e90-9ad4-0495f5e04885" />


Gambar tersebut menampilkan halaman Daftar Peserta pada aplikasi registrasi dalam kondisi belum terdapat data pendaftar. Pada bagian atas terdapat AppBar dengan judul “Daftar Peserta (0)” yang menunjukkan bahwa jumlah peserta yang terdaftar saat ini masih nol. Di bagian tengah layar ditampilkan ikon ilustrasi pengguna beserta teks “Belum ada pendaftar” dan keterangan tambahan “Daftar sekarang di halaman registrasi!”. Tampilan ini muncul ketika daftar peserta pada aplikasi masih kosong, sehingga sistem menampilkan pesan informatif kepada pengguna bahwa belum ada data yang tersimpan. Selain itu, di bagian kanan bawah terdapat tombol Floating Action Button (ikon +) yang dapat digunakan untuk kembali ke halaman registrasi atau menambahkan data peserta baru. Tampilan ini merupakan kondisi awal sebelum pengguna melakukan proses registrasi pada aplikasi.
