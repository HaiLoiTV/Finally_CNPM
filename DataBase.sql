create database QLNhaSach
go
use QLNhaSach
go
CREATE TABLE CaLamViec
(
  MaCa CHAR(10),
  GioVao Time,
  GioRa Time,
  PRIMARY KEY (MaCa)
);

CREATE TABLE Sach
(
  MaSach CHAR(10),
  TenSach NVARCHAR(30),
  TacGia NVARCHAR(30),
  NXB NVARCHAR(30),
  GiaBan Money,
  SL INT,
  QuocGia NVARCHAR(20),
  TheLoai NVARCHAR(20),
  PRIMARY KEY (MaSach)
);

CREATE TABLE KhachHang
(
  TenKH NVARCHAR(30),
  SDT CHAR(12),
  Email CHAR(20),
  MaKH CHAR(10),
  PRIMARY KEY (MaKH)
);

CREATE TABLE NhanVien
(
  MaNV CHAR(10),
  TenNV NVARCHAR(30),
  SDTNV INT,
  NgayTruc INT,
  ChucVu INT,
  NguoiQL CHAR(10),
  PRIMARY KEY (MaNV),
  FOREIGN KEY (NguoiQL) REFERENCES NhanVien(MaNV)
);

CREATE TABLE HoaDon
(
  MaHD CHAR(10),
  TongTien Money,
  NgayLap DATE,
  MaKH CHAR(10),
  MaNV CHAR(10),
  PRIMARY KEY (MaHD),
  FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
  FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

CREATE TABLE NhanVien_CaLamViec
(
  MaCa CHAR(10),
  MaNV CHAR(10),
  PRIMARY KEY (MaCa, MaNV),
  FOREIGN KEY (MaCa) REFERENCES CaLamViec(MaCa),
  FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

CREATE TABLE HoaDon_Sach
(
  MaHD CHAR(10),
  MaSach CHAR(10),
  PRIMARY KEY (MaHD, MaSach),
  FOREIGN KEY (MaHD) REFERENCES HoaDon(MaHD),
  FOREIGN KEY (MaSach) REFERENCES Sach(MaSach)
);