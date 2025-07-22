create database manufacture;
use manufacture;
create table pelanggan(
idPelanggan char(10) primary key, 
namaPelanggan varchar(20) not null,
teleponPelanggan varchar(20) not null, 
emailPelanggan varchar(50) not null, 
alamatPelanggan varchar(50) not null, 
kodeposPelanggan char(10)not null);
insert into pelanggan(idPelanggan, namaPelanggan, teleponPelanggan, emailPelanggan, alamatPelanggan, kodeposPelanggan)values
('144','Via Vindiana','087771129191','viaa@yahoo.com','Cilegon','42437'),
('145','Muhammad Islam','081167852997','fafaaja@yahoo.com','BuahBatu','40287'),
('143','Febi Fasya','081870783682','febia@yahoo.com','Cilegon','42431'), 
('155','Raisa','085563548273','rusdyy@yahoo.com','BuahBatu','40287'),
('156','Puspita Sari','087775235438','vivinppt@yahoo.com','Cilegon','42422'),
('157','Anggun Permata','087653423879','vichav@yahoo.com','Tanggerang','15138');

create table pembayaran(
kodePembayaran char(10)primary key,
tanggalPembayaran date,
totalPembayaran int not null);
insert into pembayaran(kodePembayaran, tanggalPembayaran, totalPembayaran)values
('BYR11','2022-10-13', 35000),
('BYR22','2022-10-21', 39000),
('BYR33','2022-11-16', 12000),
('BYR34','2022-11-16', 14000),
('BYR44','2022-11-17', 33000),
('BYR55','2022-11-21', 36000),
('BYR66','2022-11-22', 18000);

create table ekspedisi(
kodeEkspedisi char(10)primary key,
idKurir char(10)not null,
namaKurir varchar(20)not null);
insert into ekspedisi(kodeEkspedisi, idKurir, namaKurir)values
('JNE', '111', 'Simon'),
('Kargo', '222', 'Mican'),
('Si Cepat', '333', 'Ale'),
('J&T', '444', 'Mumun'),
('Exspress', '555', 'Asep');

create table pesanan(
kodePesanan char(10) primary key,
tanggalPesanan date not null,
kodePembayaran char(10),
tanggalPengiriman date not null,
statusPesanan char(10) not null,
jumlahProduk int not null,
kodeProduk char(10),
idPelanggan char(10),
kodeEkspedisi char(10),
foreign key(kodePembayaran) references pembayaran(kodePembayaran),
foreign key(kodeProduk) references produk(kodeProduk),
foreign key(idPelanggan) references pelanggan(idPelanggan),
foreign key(kodeEkspedisi) references ekspedisi(kodeEkspedisi));
insert into pesanan(kodePesanan, tanggalPesanan, kodePembayaran, tanggalPengiriman, statusPesanan, jumlahProduk, kodeProduk, idPelanggan, kodeEkspedisi)values
('P11','2022-10-12','BYR11','2022-10-15','shipped', 1,'R0T1','144','JNE'),
('P12','2022-10-12','BYR11','2022-10-15','shipped', 2,'S14Y','144','JNE'),
('P22','2022-10-20','BYR22','2022-10-23','shipped', 1,'R0T1','145','Kargo'),
('P23','2022-10-20','BYR22','2022-10-23','shipped', 1,'M74K','145','Kargo'),
('P33','2022-11-15','BYR33','2022-11-18','cancelled',1,'GU14','143','Si Cepat'),
('P34','2022-11-15','BYR34','2022-11-18','shipped',2,'C43E','143','Si Cepat'),
('P44','2022-11-16','BYR44','2022-11-19','cancelled',1,'S37L','155','J&T'),
('P45','2022-11-16','BYR44','2022-11-19','cancelled',1,'R0T1','155','J&T'),
('P55','2022-11-20','BYR55','2022-11-23','shipped',2,'S37L','156','Kargo'),
('P66','2022-11-21','BYR66','2022-11-24','shipped',1,'S37L','157','Exspress');

create table produk(
kodeProduk char(10)primary key,
namaProduk varchar(15) not null,
hargaProduk int not null,
tanggalProduksi date not null,
alamatPenyimpanan char(10),
foreign key(tanggalProduksi) references manufaktur(tanggalProduksi),
foreign key(alamatPenyimpanan) references penyimpanan(alamatPenyimpanan));
insert into produk(kodeProduk, namaProduk, hargaProduk,tanggalProduksi, alamatPenyimpanan)values
('R0T1', 'Roti', 15000, '2022-10-10', 'RAK1'),
('S14Y', 'Selai', 10000, '2022-09-09', 'RAK8'),
('M74K', 'Minyak', 22000, '2022-02-02', 'RAK10'),
('GU14', 'Gula', 12000, '2022-10-10', 'RAK12'),
('C43E', 'Sambal', 7000, '2022-03-03', 'RAK15'),
('S37L', 'Sereal', 18000, '2022-09-09', 'RAK20');

create table penyimpanan(
alamatPenyimpanan char(10)primary key,
nomorGudang int not null,
foreign key(nomorGudang) references gudang(nomorGudang));
insert into penyimpanan(alamatPenyimpanan, nomorGudang) values
('RAK1', 1),
('RAK8', 2),
('RAK10', 3),
('RAK12', 3),
('RAK15', 4),
('RAK20', 5);

create table gudang(
nomorGudang int primary key,
kapasitasGudang int not null);
insert into gudang(nomorGudang, kapasitasGudang) values
(1, 120),
(2, 150),
(3, 120),
(4, 125),
(5, 145);

create table manufaktur(
tanggalProduksi date primary key,
batchProduksi int, 
kodeBahan char(10),
foreign key(kodeBahan) references bahanBaku(kodeBahan));
insert into manufaktur(tanggalProduksi, batchProduksi, kodeBahan)values
('2022-02-02', 1, 'SAW'),
('2022-03-03', 1, 'CAB'),
('2022-09-09', 2, 'BUA'),
('2022-09-10', 2, 'TEP'),
('2022-10-10', 3, 'TEB'),
('2022-10-11', 3, 'GAN');

create table bahanBaku(
kodeBahan char(10) primary key,
namaBahan varchar(20) not null,
kodePemasok char(10),
foreign key(kodePemasok) references pemasok(kodePemasok));
insert into bahanBaku(kodeBahan, namaBahan, kodePemasok)values
('GAN', 'gandum', 'SHT'),
('BUA', 'buah', 'MNS'),
('SAW', 'sawit', 'LCN'),
('TEB', 'tebu', 'SGR'),
('CAB', 'cabe', 'PDS'),
('TEP', 'tepung', 'ENK');

create table pemasok(
kodePemasok char(10)primary key,
PTpemasok varchar(15),
teleponPemasok varchar(20)not null); 
insert into pemasok(kodePemasok, PTpemasok, teleponPemasok)values
('SHT', 'PT.SEHAT', '15076'),
('MNS', 'PT.MANIS', '14062'),
('LCN', 'PT.LICIN', '13082'),
('SGR', 'PT.SEGAR', '12072'),
('PDS', 'PT.PEDAS', '11087'),
('ENK', 'PT.ENAK', '10028');

