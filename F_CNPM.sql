USE MASTER
GO

IF EXISTS (SELECT * FROM SYSDATABASES WHERE NAME='QL_TIEMSACH')
	DROP DATABASE QL_TIEMSACH

GO
CREATE DATABASE QL_TIEMSACH
GO
CREATE TABLE SACH
(
    MASACH VARCHAR(4) PRIMARY KEY,
    TENSACH NVARCHAR(100), 
    TACGIA NVARCHAR(50),
	THELOAI NVARCHAR(50),
	NAM_ST INT,
	NXB NVARCHAR(100),
	QUOCGIA NVARCHAR(50),
    SOLUONG INT, 
    DONGIA INT
)

CREATE TABLE NHANVIEN 
(
    MA_NV VARCHAR(4),
    TEN_NV NVARCHAR(50),
    SDT VARCHAR(10),
	VITRI NVARCHAR(30),
	CATRUC VARCHAR(4) CHECK (CATRUC in ('CA01', 'CA02', 'CA03')),
	NGAYTRUC DATE
	PRIMARY KEY (MA_NV, CATRUC, NGAYTRUC)
)

CREATE TABLE KHACHHANG 
(
	MA_KH VARCHAR(4) PRIMARY KEY,
    TEN_KH NVARCHAR(50),
    SDT VARCHAR(10),
	EMAIL VARCHAR(50),
	DIEMTICH INT CHECK (DIEMTICH BETWEEN 0 and 6)
)

CREATE TABLE HOADON 
(
    MA_HD VARCHAR(4),
    MASACH VARCHAR(4) FOREIGN KEY REFERENCES SACH(MASACH),
    SOLUONG INT, 
    GIATIEN INT,
	NGAYMUA DATE,
	GIAMGIA BIT DEFAULT 0,
    PRIMARY KEY (MA_HD, MASACH, NGAYMUA)
)

---------------------------------------------------------
INSERT INTO SACH VALUES
('MS01', N'Call me by your name', N'André Aciman', N'Tiểu thuyết', 2007, N'Nhà Xuất Bản Trẻ', N'Hoa Kỳ', 50, 360000),
('MS02', N'Hoàng tử bé', N'Antoine de Saint-Exupéry', N'Tiểu thuyết', 1943, N'Nhà Xuất Bản Hội Nhà Văn', N'Pháp', 100, 56000),
('MS03', N'Tiếng gọi nơi hoang dã', N'Jack London', N'Tiểu thuyết', 1903, N'Nhà Xuất Bản Văn Học', N'Hoa Kỳ', 50, 65000),
('MS04', N'Chí Phèo', N'Nam Cao', N'Truyện ngắn', 1941, N'Nhà Xuất Bản Văn Học', N'Việt Nam', 110, 690000),
('MS05', N'Dế Mèn phiêu lưu ký', N'Tô Hoài', N'Truyện ngắn', 1941, N'Nhà Xuất Bản Kim Đồng', N'Việt Nam', 66, 180000),
('MS06', N'Số đỏ', N'Vũ Trọng Phụng', N'Truyện ngắn', 1936, N'Nhà Xuất Bản Văn Học', N'Việt Nam', 40, 224000),
('MS07', N'One piece tập 1', N'Oda Eiichiro', N'Truyện tranh', 1997, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS08', N'One piece tập 2', N'Oda Eiichiro', N'Truyện tranh', 1997, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS09', N'One piece tập 3', N'Oda Eiichiro', N'Truyện tranh', 1997, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS10', N'One piece tập 4', N'Oda Eiichiro', N'Truyện tranh', 1997, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS11', N'One piece tập 5', N'Oda Eiichiro', N'Truyện tranh', 1997, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS12', N'One piece tập 6', N'Oda Eiichiro', N'Truyện tranh', 1997, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS13', N'One piece tập 7', N'Oda Eiichiro', N'Truyện tranh', 1997, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS14', N'One piece tập 8', N'Oda Eiichiro', N'Truyện tranh', 1997, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS15', N'One piece tập 9', N'Oda Eiichiro', N'Truyện tranh', 1997, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 19000),
('MS16', N'One piece tập 10', N'Oda Eiichiro', N'Truyện tranh', 1997, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 54, 19000),
('MS17', N'Tạp chí Tuổi trẻ số 1', N'Báo tuổi trẻ', N'Tạp chí', 2002, N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 53, 20000),
('MS18', N'Tạp chí Tuổi trẻ số 2', N'Báo tuổi trẻ', N'Tạp chí', 2002, N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 52, 20000),
('MS19', N'Tạp chí Tuổi trẻ số 3', N'Báo tuổi trẻ', N'Tạp chí', 2002, N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 51, 20000),
('MS20', N'Tạp chí Tuổi trẻ số 4', N'Báo tuổi trẻ', N'Tạp chí', 2002, N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 50, 20000),
('MS21', N'Tạp chí Tuổi trẻ số 5', N'Báo tuổi trẻ', N'Tạp chí', 2002, N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 51, 20000),
('MS22', N'Tạp chí Tuổi trẻ số 6', N'Báo tuổi trẻ', N'Tạp chí', 2002, N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 52, 20000),
('MS23', N'Tạp chí Tuổi trẻ số 7', N'Báo tuổi trẻ', N'Tạp chí', 2002, N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 53, 20000),
('MS24', N'Tạp chí Tuổi trẻ số 8', N'Báo tuổi trẻ', N'Tạp chí', 2002, N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 54, 20000),
('MS25', N'Tạp chí Tuổi trẻ số 9', N'Báo tuổi trẻ', N'Tạp chí', 2002, N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 55, 20000),
('MS26', N'Tạp chí Tuổi trẻ số 10', N'Báo tuổi trẻ', N'Tạp chí', 2002, N'Nhà Xuất Bản Báo tuổi trẻ', N'Việt Nam', 56, 20000),
('MS27', N'Doraemon tập 1', N'Fujiko F. Fujio', N'Truyện tranh', 1969, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 53, 16000),
('MS28', N'Doraemon tập 2', N'Fujiko F. Fujio', N'Truyện tranh', 1969, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 52, 16000),
('MS29', N'Doraemon tập 3', N'Fujiko F. Fujio', N'Truyện tranh', 1969, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 51, 16000),
('MS30', N'Doraemon tập 4', N'Fujiko F. Fujio', N'Truyện tranh', 1969, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 50, 16000),
('MS31', N'Doraemon tập 5', N'Fujiko F. Fujio', N'Truyện tranh', 1969, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 51, 16000),
('MS32', N'Doraemon tập 6', N'Fujiko F. Fujio', N'Truyện tranh', 1969, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 52, 16000),
('MS33', N'Doraemon tập 7', N'Fujiko F. Fujio', N'Truyện tranh', 1969, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 53, 16000),
('MS34', N'Doraemon tập 8', N'Fujiko F. Fujio', N'Truyện tranh', 1969, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 54, 16000),
('MS35', N'Doraemon tập 9', N'Fujiko F. Fujio', N'Truyện tranh', 1969, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 55, 16000),
('MS36', N'Doraemon tập 10', N'Fujiko F. Fujio', N'Truyện tranh', 1969, N'Nhà Xuất Bản Kim Đồng', N'Nhật Bản', 56, 16000),
('MS37', N'Truyện Kiều', N'Nguyễn Du', N'Truyện ngắn', 1920, N'Nhà Xuất Bản Văn Học', N'Việt Nam', 50, 60000),
('MS38', N'Tắt đèn', N'Ngô Tất Tố', N'Truyện ngắn', 1937, N'Nhà Xuất Bản Văn Học', N'Việt Nam', 52, 50000),
('MS39', N'Chiếc lá cuối cùng', N'O. Henry', N'Truyện ngắn', 1907, N'Nhà Xuất Bản Văn Học', N'Hoa Kỳ', 42, 48000),
('MS40', N'Vỡ đê', N'Vũ Trọng Phụng', N'Tiểu thuyết', 1936, N'Nhà Xuất Bản Văn Học', N'Việt Nam', 53, 65000)

INSERT INTO NHANVIEN VALUES
('NV01', N'Nguyễn Trường Giang', '0147852369', 'Bảo vệ', 'CA01', '2022/5/31'),
('NV02', N'Trần Huy Cảnh', '0321456987', 'Bảo vệ', 'CA02', '2022/5/31'),
('NV03', N'Lê Võ Cường Thịnh', '0365214789', 'Bảo vệ', 'CA03', '2022/5/31'),
('NV04', N'Mai Chiêu Hoàng', '0145236987', 'Bảo vệ', 'CA01', '2022/6/1'),
('NV05', N'Trần Trung Tín', '0987456321', 'Bảo vệ', 'CA02', '2022/6/1'),
('NV06', N'Nguyễn Đại Nam', '0521364789', 'Bảo vệ', 'CA03', '2022/6/1'),
('NV07', N'Ngô Thị Mỹ Liên', '0365214987', 'Trực Quầy', 'CA01', '2022/5/31'),
('NV08', N'Phan Huỳnh Thảo Tâm', '0632598741', 'Trực Quầy', 'CA02', '2022/5/31'),
('NV09', N'Nguyễn Đức Hi', '0125364798', 'Trực Quầy', 'CA03', '2022/5/31'),
('NV10', N'Lê Trọng Nghĩa', '0842156397', 'Quản lý', 'CA01', '2022/5/31'),
('NV11', N'Võ Văn Vĩ', '0147852963', 'Quản lý', 'CA02', '2022/5/31'),
('NV12', N'Ngô Quốc Thiên Ân', '0159847263', 'Quản lý', 'CA03', '2022/5/31'),
('NV13', N'Lê Kỳ Nguyên', '0654321987', 'Giao hàng', 'CA02', '2022/5/31'),
('NV14', N'Trần Hoàng Trúc Nhân', '0623159874', 'Giao hàng', 'CA02', '2022/6/1'),
('NV15', N'Nguyễn Hạo', '0874569321', 'Trực quầy', 'CA02', '2022/6/2'),
('NV16', N'Nguyễn Đại Nghĩa', '0857412369', 'Bảo vệ', 'CA03', '2022/6/2'),
('NV17', N'Ngô Liên Hoa', '0213546879', 'Trực Quầy', 'CA01', '2022/6/3'),
('NV18', N'Lê Thị Mộng Cát', '0524198763', 'Quản lý', 'CA02', '2022/6/3'),
('NV19', N'Trần Toàn', '0123654978', 'Giao Hàng', 'CA03', '2022/6/4')

INSERT INTO KHACHHANG VALUES
('KH01', N'Thắng', '0125364798', 'anhon123@gmail.com', 4),
('KH02', N'Thuận', '0987456321', 'lebakasf66@gmail.com', 5),
('KH03', N'Nguyên', '0524198763', 'xinhg537ahg@gmail.com', 2),
('KH04', N'Trung', '0874569321', 'ngheankhanhhoa5566@gmail.com', 0),
('KH05', N'Long', '0145236987', 'dongthamxinxan@gmail.com', 1),
('KH06', N'Lợi', '0321456987', 'coban143@gmail.com', 4),
('KH07', N'Kiệt', '0362591478', 'ngyachyagionbao334@gmail.com', 1),
('KH08', N'Khoa', '0987654321', 'kíatudnet552008sa@gmail.com', 6),
('KH09', N'An', '0192837465', 'cgayr2g2525@gmail.com', 2),
('KH10', N'Trang', '0784512369', 'fv5353sdssinhg@gmail.com', 3)

INSERT INTO HOADON VALUES
('HD01', 'MS01', 1, 25000, '2022/5/31', 0),
('HD02', 'MS02', 1, 25000, '2022/6/2', 0),
('HD03', 'MS04', 1, 25000, '2022/6/4', 0),
('HD06', 'MS03', 1, 25000, '2022/5/31', 0),
('HD07', 'MS06', 1, 25000, '2022/6/3', 0),
('HD01', 'MS04', 1, 25000, '2022/6/4', 0),
('HD02', 'MS06', 1, 25000, '2022/6/2', 0),
('HD08', 'MS40', 1, 25000, '2022/5/31', 0),
('HD04', 'MS33', 1, 25000, '2022/6/2', 0),
('HD05', 'MS23', 1, 25000, '2022/5/31', 0),
('HD06', 'MS14', 1, 25000, '2022/6/2', 0),
('HD07', 'MS07', 1, 25000, '2022/6/3', 0),
('HD08', 'MS36', 1, 25000, '2022/6/2', 0),
('HD01', 'MS18', 1, 25000, '2022/5/31', 0),
('HD02', 'MS29', 1, 25000, '2022/6/4', 0),
('HD09', 'MS30', 1, 25000, '2022/6/2', 0),
('HD10', 'MS41', 1, 25000, '2022/6/3', 0),
('HD11', 'MS11', 1, 25000, '2022/5/31', 0),
('HD12', 'MS31', 1, 25000, '2022/5/31', 0),
('HD13', 'MS34', 1, 25000, '2022/6/2', 0),
('HD14', 'MS03', 1, 25000, '2022/6/4', 0),
('HD15', 'MS09', 1, 25000, '2022/5/31', 0),
('HD10', 'MS27', 1, 25000, '2022/6/2', 0),
('HD11', 'MS39', 1, 25000, '2022/6/3', 0),
('HD12', 'MS21', 1, 25000, '2022/5/31', 0),
('HD16', 'MS06', 1, 25000, '2022/6/4', 0),
