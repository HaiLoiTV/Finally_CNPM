create database QLNhaSach
go
use QLNhaSach
go
CREATE TABLE KhachHang
(
  MaKH VARCHAR(4),
  TenKH NVARCHAR(50),
  SDT VARCHAR(10),
  Email VARCHAR(50),
  PRIMARY KEY (MaKH)
);

CREATE TABLE TK_KhachHang
(
  TKKH VARCHAR(10),
  MKKH VARCHAR(16),
  PRIMARY KEY (TKKH)
)
CREATE TABLE NhanVien
(
  MaNV VARCHAR(4),
  TenNV NVARCHAR(50),
  SDTNV VARCHAR(10),
  ChucVu NVARCHAR(30),
  NgayVaoLam DATE,
  NguoiQL VARCHAR(4),
  PRIMARY KEY (MaNV),
  FOREIGN KEY (NguoiQL) REFERENCES NhanVien(MaNV)
);

CREATE TABLE TK_NhanVien
(
  TKNV VARCHAR(10),
  MKNV VARCHAR(16),
  PRIMARY KEY (TKNV)  
);
CREATE TABLE HoaDon
(
  MaHD VARCHAR(4),
  TongTien INT,
  NgayLap DATE,
  MaKH VARCHAR(4),
  MaNV VARCHAR(4),
  PRIMARY KEY (MaHD),
  FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
  FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

CREATE TABLE CaLamViec
(
  MaNV VARCHAR(4),
  MaCa VARCHAR(4),
  PRIMARY KEY (MaCa, MaNV),
  FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);
CREATE TABLE Sach
(
  MaSach CHAR(4),
  TenSach NVARCHAR(30),
  TacGia NVARCHAR(30),
  TheLoai NVARCHAR(20),
  NXB NVARCHAR(30),
  QuocGia NVARCHAR(20),
  SL INT,
  GiaBan Money,
  PRIMARY KEY(MaSach)
);
CREATE TABLE HoaDon_Sach
(
  MaHD VARCHAR(4),
  MaSach CHAR(4),
  SoLuong int,
  PRIMARY KEY (MaHD, MaSach),
  FOREIGN KEY (MaHD) REFERENCES HoaDon(MaHD),
  FOREIGN KEY (MaSach) REFERENCES Sach(MaSach)
);
-------------------------------------------------------------------
INSERT INTO Sach VALUES
('MS01', N'Call me by your name', N'André Aciman', N'Tiểu thuyết', N'Nhà Xuất Bản Trẻ', N'Hoa Kỳ', 50, 360000),
('MS02', N'Hoàng tử bé', N'Antoine de Saint-Exupéry', N'Tiểu thuyết', N'Nhà Xuất Bản Hội Nhà Văn', N'Pháp', 100, 56000),
('MS03', N'Tiếng gọi nơi hoang dã', N'Jack London', N'Tiểu thuyết', N'Nhà Xuất Bản Văn Học', N'Hoa Kỳ', 50, 65000),
('MS04', N'Chí Phèo', N'Nam Cao', N'Truyện ngắn', N'Nhà Xuất Bản Văn Học', N'Việt Nam', 110, 690000),
('MS05', N'Dế Mèn phiêu lưu ký', N'Tô Hoài', N'Truyện ngắn', N'Nhà Xuất Bản Kim Đồng', N'Việt Nam', 66, 180000),
('MS06', N'Số đỏ', N'Vũ Trọng Phụng', N'Truyện ngắn', N'Nhà Xuất Bản Văn Học', N'Việt Nam', 40, 224000),
('MS07', N'One piece tập 1', N'Oda Eiichiro', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS08', N'One piece tập 2', N'Oda Eiichiro', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS09', N'One piece tập 3', N'Oda Eiichiro', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS10', N'One piece tập 4', N'Oda Eiichiro', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS11', N'One piece tập 5', N'Oda Eiichiro', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS12', N'One piece tập 6', N'Oda Eiichiro', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS13', N'One piece tập 7', N'Oda Eiichiro', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS14', N'One piece tập 8', N'Oda Eiichiro', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS15', N'One piece tập 9', N'Oda Eiichiro', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS16', N'One piece tập 10', N'Oda Eiichiro', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 54, 19000),
('MS17', N'Tạp chí Tuổi trẻ số 1', N'Báo tuổi trẻ', N'Tạp chí', N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 53, 20000),
('MS18', N'Tạp chí Tuổi trẻ số 2', N'Báo tuổi trẻ', N'Tạp chí', N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 52, 20000),
('MS19', N'Tạp chí Tuổi trẻ số 3', N'Báo tuổi trẻ', N'Tạp chí', N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 51, 20000),
('MS20', N'Tạp chí Tuổi trẻ số 4', N'Báo tuổi trẻ', N'Tạp chí', N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 50, 20000),
('MS21', N'Tạp chí Tuổi trẻ số 5', N'Báo tuổi trẻ', N'Tạp chí', N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 51, 20000),
('MS22', N'Tạp chí Tuổi trẻ số 6', N'Báo tuổi trẻ', N'Tạp chí', N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 52, 20000),
('MS23', N'Tạp chí Tuổi trẻ số 7', N'Báo tuổi trẻ', N'Tạp chí', N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 53, 20000),
('MS24', N'Tạp chí Tuổi trẻ số 8', N'Báo tuổi trẻ', N'Tạp chí', N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 54, 20000),
('MS25', N'Tạp chí Tuổi trẻ số 9', N'Báo tuổi trẻ', N'Tạp chí', N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 55, 20000),
('MS26', N'Tạp chí Tuổi trẻ số 10', N'Báo tuổi trẻ', N'Tạp chí', N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 56, 25000)
--('MS27', N'Doraemon tập 1', N'Fujiko F. Fujio', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 53, 16000),
--('MS28', N'Doraemon tập 2', N'Fujiko F. Fujio', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 52, 16000),
--('MS29', N'Doraemon tập 3', N'Fujiko F. Fujio', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 51, 16000),
--('MS30', N'Doraemon tập 4', N'Fujiko F. Fujio', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 50, 16000),
--('MS31', N'Doraemon tập 5', N'Fujiko F. Fujio', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 51, 16000),
--('MS32', N'Doraemon tập 6', N'Fujiko F. Fujio', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 52, 16000),
--('MS33', N'Doraemon tập 7', N'Fujiko F. Fujio', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 53, 16000),
--('MS34', N'Doraemon tập 8', N'Fujiko F. Fujio', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 54, 16000),
--('MS35', N'Doraemon tập 9', N'Fujiko F. Fujio', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 16000),
--('MS36', N'Doraemon tập 10', N'Fujiko F. Fujio', N'Truyện tranh', N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 56, 16000),
--('MS37', N'Truyện Kiều', N'Nguyễn Du', N'Truyện ngắn', N'Nhà Xuất Bản Văn Học', N'Việt Nam', 50, 60000),
--('MS38', N'Tắt đèn', N'Ngô Tất Tố', N'Truyện ngắn', N'Nhà Xuất Bản Văn Học', N'Việt Nam', 52, 50000),
--('MS39', N'Chiếc lá cuối cùng', N'O. Henry', N'Truyện ngắn', N'Nhà Xuất Bản Văn Học', N'Hoa Kỳ', 42, 48000),
--('MS40', N'Vỡ đê', N'Vũ Trọng Phụng', N'Tiểu thuyết', N'Nhà Xuất Bản Văn Học', N'Việt Nam', 53, 65000)

INSERT INTO KhachHang VALUES
('KH01', N'Thắng', '0125364798', 'anhon123@gmail.com'),
('KH02', N'Thuận', '0987456321', 'lebakasf66@gmail.com')
--('KH03', N'Nguyên', '0524198763', 'xinhg537ahg@gmail.com'),
--('KH04', N'Trung', '0874569321', 'ngheankhanhhoa5566@gmail.com'),
--('KH05', N'Long', '0145236987', 'dongthamxinxan@gmail.com'),
--('KH06', N'Lợi', '0321456987', 'coban143@gmail.com'),
--('KH07', N'Kiệt', '0362591478', 'ngyachyagionbao334@gmail.com'),
--('KH08', N'Khoa', '0987654321', 'kiatudnet552008sa@gmail.com'),
--('KH09', N'An', '0192837465', 'cgayr2g2525@gmail.com'),
--('KH10', N'Trang', '0784512369', 'fv5353sdssinhg@gmail.com')
  
INSERT INTO TK_KhachHang VALUES
('KH01', '1234'),
('KH02', '1234')
--('KH03', 'xinhg537ahg'),
--('KH04', 'ngheankhanhhoa5566'),
--('KH05', 'dongthamxinxan'),
--('KH06', 'coban143'),
--('KH07', 'ngyachyagionbao334'),
--('KH08', 'kiatudnet552008sa'),
--('KH09', 'cgayr2g2525'),
--('KH10', 'fv5353sdssinhg')
  
INSERT INTO NhanVien VALUES
('QL01', N'Lê Trọng Nghĩa', '0842156397', 'Quản lý', '2021/5/31', null),
('NV11', N'Võ Văn Vĩ', '0147852963', 'Thu ngân', '2020/5/31', 'QL01'),
('NV12', N'Ngô Quốc Thiên Ân', '0159847263', 'Thu ngân', '2020/5/31', 'QL01')
--('NV01', N'Nguyễn Trường Giang', '0147852369', 'Bảo vệ', '2021/5/31', 'NV10'),
--('NV02', N'Trần Huy Cảnh', '0321456987', 'Bảo vệ', '2021/5/31', 'NV10'),
--('NV03', N'Lê Võ Cường Thịnh', '0365214789', 'Bảo vệ', '2021/5/31', 'NV11'),
--('NV04', N'Mai Chiêu Hoàng', '0145236987', 'Bảo vệ', '2021/5/31', 'NV12'),
--('NV05', N'Trần Trung Tín', '0987456321', 'Bảo vệ', '2021/5/31', 'NV18'),
--('NV06', N'Nguyễn Đại Nam', '0521364789', 'Bảo vệ', '2021/5/31', 'NV11'),
--('NV07', N'Ngô Thị Mỹ Liên', '0365214987', 'Trực Quầy', '2021/5/31', 'NV10'),
--('NV08', N'Phan Huỳnh Thảo Tâm', '0632598741', 'Trực Quầy', '2020/5/31', 'NV12'),
--('NV09', N'Nguyễn Đức Hi', '0125364798', 'Trực Quầy', '2020/5/31', 'NV18'),
--('NV13', N'Lê Kỳ Nguyên', '0654321987', 'Giao hàng', '2020/5/31', 'NV11'),
--(NV14', N'Trần Hoàng Trúc Nhân', '0623159874', 'Giao hàng', '2020/5/31', 'NV10'),
--('NV15', N'Nguyễn Hạo', '0874569321', 'Trực quầy', '2020/5/31', 'NV12'),
--('NV16', N'Nguyễn Đại Nghĩa', '0857412369', 'Bảo vệ', '2020/5/31', 'NV10'),
--('NV17', N'Ngô Liên Hoa', '0213546879', 'Trực Quầy', '2020/5/31', 'NV18'),
--('NV19', N'Trần Toàn', '0123654978', 'Giao Hàng', '2021/5/31', 'NV11')

INSERT INTO TK_NhanVien VALUES
('TN01', '1234'),
('TN02', '1234')

INSERT INTO CaLamViec VALUES
('NV11', 'CA01'),
('NV12', 'CA02')

INSERT INTO HoaDon VALUES
('HD01', 25000, '2022/5/31', 'KH01', 'NV11'),
('HD02', 25000, '2022/6/2', 'KH02', 'NV11'),
('HD03', 25000, '2022/6/4', 'KH01', 'NV12'),
('HD06', 25000, '2022/5/31', 'KH02', 'NV12')

INSERT INTO HoaDon_Sach VALUES
('HD01', 'MS26',1),
('HD02', 'MS26',1),
('HD03', 'MS26',1),
('HD06', 'MS26',1)
