# MySQL Database Project - Sistem Manufaktur

Repositori ini berisi perancangan dan implementasi sistem basis data relasional untuk proses manufaktur. Proyek ini mencakup berbagai entitas seperti pelanggan, pesanan, produk, bahan baku, pemasok, dan distribusi produk, yang dirancang menggunakan MySQL.

## Deskripsi Proyek

Database ini dibuat untuk menangani proses bisnis sebuah perusahaan manufaktur, mulai dari pencatatan pelanggan hingga distribusi produk yang melibatkan banyak entitas dan relasi seperti:

- Pelanggan & Pemesanan
- Pembayaran
- Produk & Produksi
- Penyimpanan & Gudang
- Bahan baku & Pemasok
- Ekspedisi pengiriman

Struktur dan logika database telah diatur agar relasi antar tabel saling terhubung dan mendukung integrity constraint melalui foreign key.

## Teknologi yang Digunakan

- MySQL
- MySQL Workbench
- SQL (DDL & DML)

## Struktur Tabel Utama

Berikut adalah tabel-tabel utama dalam database:

- `pelanggan`
- `pembayaran`
- `ekspedisi`
- `pesanan`
- `produk`
- `manufaktur`
- `penyimpanan`
- `gudang`
- `bahanBaku`
- `pemasok`

Relasi antar tabel mengacu pada konsep **normalisasi** dan **integritas referensial**, dengan foreign key menghubungkan tabel-tabel yang saling terkait.

## Cara Menjalankan

1. Buka MySQL Workbench.
2. Jalankan `SQL Script.sql` untuk membuat database dan seluruh tabel.
3. Jalankan perintah `USE manufacture;` untuk memilih database.
4. Semua data contoh akan otomatis terisi melalui query `INSERT`.

## Tujuan Proyek

- Memahami struktur database relasional
- Menerapkan konsep ERD, DDL, DML, dan integritas data
- Membangun portofolio database untuk keperluan akademik maupun profesional

## Tentang Saya

Proyek ini dibuat oleh **Via Vindiana**, mahasiswa Sains Data yang memiliki ketertarikan terhadap pengembangan database dan pengelolaan data bisnis untuk analisis lebih lanjut. Proyek ini merupakan bagian dari latihan mandiri dalam membangun sistem backend berbasis SQL.

---

> Silakan fork, kloning, atau gunakan bagian dari proyek ini untuk pembelajaran, referensi, atau pengembangan pribadi.
