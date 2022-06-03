
CREATE TABLE Sach
(
  MaSach VARCHAR(4),
  TenSach NVARCHAR(100),
  TacGia NVARCHAR(50),
  TheLoai NVARCHAR(30),
  NXB NVARCHAR(50),
  QuocGia NVARCHAR(50),
  GiaBan INT,
  SoLuong INT,
  PRIMARY KEY (MaSach)
);

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
  MaKH VARCHAR(4),
  MatKhau VARCHAR(16) UNIQUE,
  PRIMARY KEY (MaKH)
  
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
  MaNV VARCHAR(4),
  MatKhau VARCHAR(16) UNIQUE,
  PRIMARY KEY (MaNV)  
  
CREATE TABLE HoaDon
(
  MaHD VARCHAR(4),
  TongTien INT,
  NgayLap DATE,
  MaKH VARCHAR(4),
  MaNV VARCHAR(4),
  PRIMARY KEY (MaHD, MaSach, MaKH),
  FOREIGN KEY REFERENCES SACH(MASACH),
  FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
  FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

CREATE TABLE CaLamViec
(
  MaNV VARCHAR(4),
  MaCa VARCHAR(4),
  NgayTruc DATE,
  PRIMARY KEY (MaCa, MaNV, NgayTruc),
  FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

CREATE TABLE HoaDon_Sach
(
  MaHD VARCHAR(4),
  MaSach VARCHAR(4),
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
('MS26', N'Tạp chí Tuổi trẻ số 10', N'Báo tuổi trẻ', N'Tạp chí', N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 56, 20000),
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
('KH02', N'Thuận', '0987456321', 'lebakasf66@gmail.com'),
--('KH03', N'Nguyên', '0524198763', 'xinhg537ahg@gmail.com'),
--('KH04', N'Trung', '0874569321', 'ngheankhanhhoa5566@gmail.com'),
--('KH05', N'Long', '0145236987', 'dongthamxinxan@gmail.com'),
--('KH06', N'Lợi', '0321456987', 'coban143@gmail.com'),
--('KH07', N'Kiệt', '0362591478', 'ngyachyagionbao334@gmail.com'),
--('KH08', N'Khoa', '0987654321', 'kiatudnet552008sa@gmail.com'),
--('KH09', N'An', '0192837465', 'cgayr2g2525@gmail.com'),
--('KH10', N'Trang', '0784512369', 'fv5353sdssinhg@gmail.com')
  
  INSERT INTO TK_KhachHang VALUES
('KH01', 'anhon123'),
('KH02', 'lebakasf66'),
--('KH03', 'xinhg537ahg'),
--('KH04', 'ngheankhanhhoa5566'),
--('KH05', 'dongthamxinxan'),
--('KH06', 'coban143'),
--('KH07', 'ngyachyagionbao334'),
--('KH08', 'kiatudnet552008sa'),
--('KH09', 'cgayr2g2525'),
--('KH10', 'fv5353sdssinhg')
  
INSERT INTO NhanVien VALUES
('NV10', N'Lê Trọng Nghĩa', '0842156397', 'Quản lý', '2021/5/31', null),
('NV11', N'Võ Văn Vĩ', '0147852963', 'Quản lý', '2020/5/31', null),
('NV12', N'Ngô Quốc Thiên Ân', '0159847263', 'Quản lý', '2020/5/31', null),
('NV18', N'Lê Thị Mộng Cát', '0524198763', 'Quản lý', '2020/5/31', null),
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
('NV01', 'anhoasasn123'),
('NV02', 'leba234kasf66'),
--('NV03', 'xinhg235537ahg'),
--('NV04', 'ng234heankhanhhoa5566'),
--('NV05', 'dongtha234mxinxan'),
--('NV06', 'cob45an143'),
--('NV07', '56fdfhfdh'),
--('NV08', '564557hfhđf'),
--('NV09', '6688sdfhdfjd'),
--('NV10', 'fv53343n53sdssinhg')
--('NV11', 'a234235on123'),
--('NV12', 'lebaghydrf66'),
--('NV13', 'xi679537ahg'),
--('NV14', 'nghsdgsdghhoa5566'),
--('NV15', 'donshshxinxan'),
--('NV16', 'cob780780143'),
--('NV17', 'ngyac789679bao334'),
--('NV18', 'kiatu00008sa'),
--('NV19', 'cga1225')
  
INSERT INTO CaLamViec VALUES
('NV01', 'CA01', '2022/5/31'),
('NV02', 'CA02', '2022/5/31'),
('NV03', 'CA03', '2022/5/31'),
('NV04', 'CA01', '2022/6/1'),
--('NV05', 'CA02', '2022/6/1'),
--('NV06', 'CA03', '2022/6/1'),
--('NV07', 'CA01', '2022/5/31'),
--('NV08', 'CA02', '2022/5/31'),
--('NV09', 'CA03', '2022/5/31'),
--('NV10', 'CA01', '2022/5/31'),
--('NV11', 'CA02', '2022/5/31'),
--('NV12', 'CA03', '2022/5/31'),
--('NV13', 'CA02', '2022/5/31'),
--('NV14', 'CA02', '2022/6/1'),
--('NV15', 'CA02', '2022/6/2'),
--('NV16', 'CA03', '2022/6/2'),
--('NV17', 'CA01', '2022/6/3'),
--('NV18', 'CA02', '2022/6/3'),
--('NV19', 'CA03', '2022/6/4')
  
INSERT INTO HoaDon VALUES
('HD01', 25000, '2022/5/31', 'KH01', 'NV07'),
('HD02', 25000, '2022/6/2', 'KH02', 'NV08'),
('HD03', 25000, '2022/6/4', 'KH03', 'NV08'),
('HD06', 25000, '2022/5/31', 'KH04', 'NV07'),
--('HD07', 25000, '2022/6/3', 'KH04', 'NV09'),
--('HD01', 25000, '2022/6/4', 'KH05', 'NV09'),
--('HD02', 25000, '2022/6/2', 'KH05', 'NV17'),
--('HD08', 25000, '2022/5/31', 'KH06', 'NV07'),
--('HD04', 25000, '2022/6/2', 'KH07', 'NV07'),
--('HD05', 25000, '2022/5/31','KH08', 'NV07'),
--('HD06', 25000, '2022/6/2', 'KH02', 'NV08'),
--('HD07', 25000, '2022/6/3', 'KH01', 'NV17'),
--('HD08', 25000, '2022/6/2', 'KH08', 'NV08'),
--('HD01', 25000, '2022/5/31', 'KH01', 'NV09'),
--('HD02', 25000, '2022/6/4', 'KH01', 'NV17'),
--('HD09', 25000, '2022/6/2', 'KH03', 'NV07'),
--('HD10', 25000, '2022/6/3', 'KH10', 'NV17'),
--('HD11', 25000, '2022/5/31', 'KH04', 'NV08'),
--('HD12', 25000, '2022/5/31', 'KH10', 'NV07'),
--('HD13', 25000, '2022/6/2', 'KH09', 'NV17'),
--('HD14', 25000, '2022/6/4', 'KH01', 'NV17'),
--('HD15', 25000, '2022/5/31', 'KH09', 'NV09'),
--('HD10', 25000, '2022/6/2', 'KH01', 'NV08'),
--('HD11', 25000, '2022/6/3', 'KH01', 'NV17'),
--('HD12', 25000, '2022/5/31', 'KH02', 'NV09'),
--('HD16', 25000, '2022/6/4', 'KH02', 'NV17')

INSERT INTO HoaDon_Sach VALUES
('HD01', 'MS01'),
('HD02', 'MS02'),
('HD03', 'MS04'),
('HD06', 'MS03'),
('HD07', 'MS06'),
--('HD01', 'MS04'),
--('HD02', 'MS06'),
--('HD08', 'MS40'),
--('HD04', 'MS33'),
--('HD05', 'MS23'),
--('HD06', 'MS14'),
--('HD07', 'MS07'),
--('HD08', 'MS36'),
--('HD01', 'MS18'),
--('HD02', 'MS29'),
--('HD09', 'MS30'),
--('HD10', 'MS41'),
--('HD11', 'MS11'),
--('HD12', 'MS31'),
--('HD13', 'MS34'),
--('HD14', 'MS03'),
--('HD15', 'MS09'),
--('HD10', 'MS27'),
--('HD11', 'MS39'),
--('HD12', 'MS21'),
--('HD16', 'MS06'),
