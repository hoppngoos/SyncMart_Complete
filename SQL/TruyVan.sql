
-- Khach_Hang -- 
-- 1. THEM DU LIEU
INSERT INTO Khach_Hang (Ma_KH, Ten_KH, SDT_KH, Dia_Chi_KH)
VALUES
('KH01', N'Nguyễn Văn A', '0901234567', N'Hà Nội'),
('KH02', N'Trần Thị B', '0987654321', N'Hà Đông - Hà Nội'),
('KH03', N'Lê Văn C', '0911111111', N'Đà Nẵng');

-- 2. XUAT DU LIEU
SELECT * FROM Khach_Hang;

-- 3. XUAT DU LIEU CO DK
SELECT * FROM Khach_Hang
WHERE Dia_Chi_KH LIKE N'%Hà Nội%';

-- 4. CHINH SUA DU LIEU
UPDATE Khach_Hang
SET Dia_Chi_KH = N'Hà Tĩnh'
WHERE Ma_KH = 'KH03';

-- 5. XOA DU LIEU
--DELETE FROM Khach_Hang
--WHERE Ma_KH = 'KH02';
--SELECT * FROM Khach_Hang;

--=============================================--

-- Hang_Hoa -- 
-- 1. THEM DU LIEU
INSERT INTO Hang_Hoa (Ma_HH, Ten_HH, Ton_Kho, Gia_Goc)
VALUES
('HH001', N'Đắc Nhân Tâm', 50, 65000),
('HH002', N'Bút bi Thiên Long Thiên Long', 150, 3000),
('HH003', N'Nhà Giả Kim', 30, 55000),
('HH004', N'Giấy in A4 Double A', 100, 60000),
('HH005', N'Tẩy chì Campus', 70, 5000);

-- 2. XUAT DU LIEU
SELECT * FROM Hang_Hoa;

-- 3. XUAT DU LIEU CO DK
SELECT * FROM Hang_Hoa
WHERE Ton_Kho >= 70;

-- 4. CHINH SUA DU LIEU
UPDATE Hang_Hoa
SET Gia_Goc = 5500
WHERE Ma_HH = 'HH005';

-- 5. XOA DU LIEU
--DELETE FROM Hang_Hoa
--WHERE Ma_HH = 'HH001';
--SELECT * FROM Hang_Hoa;

--=============================================--

-- Nhan_Vien -- 
-- 1. THEM DU LIEU
INSERT INTO Nhan_Vien (Ma_NV, Ten_NV, SDT_NV, Chuc_Vu, Ma_QL)
VALUES
('NV01', N'Trần Đại Boss', '0912345678', N'Giám đốc', NULL),
('NV02', N'Lê Thị Thu Ngân', '0987654321', N'Thu ngân', 'NV01'),
('NV03', N'Phạm Văn Kho', '0909090909', N'Thủ kho', 'NV01'),
('NV04', N'Nguyễn Quản Lý', '0911223344', N'Quản lý', 'NV01'),
('NV05', N'Hoàng Thực Tập', '0988776655', N'Thực tập sinh', 'NV04');


-- 2. XUAT DU LIEU
SELECT * FROM Nhan_Vien;

-- 3. XUAT DU LIEU CO DK
SELECT * FROM Nhan_Vien
WHERE Chuc_Vu LIKE N'%Giám đốc%';

-- 4. CHINH SUA DU LIEU
UPDATE Nhan_Vien
SET Ten_NV = N'Trần Đại Sếp'
WHERE Ma_NV = 'NV01';

-- 5. XOA DU LIEU
--DELETE FROM Nhan_Vien
--WHERE Ma_NV = 'NV05'
--SELECT * FROM Nhan_Vien;

--=============================================--

-- Nha_Cung_Cap -- 
-- 1. THEM DU LIEU
INSERT INTO Nha_Cung_Cap(Ma_NCC, Ten_NCC, SDT_NCC, Email_NCC, Dia_Chi_NCC)
VALUES
('NCC01', N'Nhà xuất bản Kim Đồng', '0243943473', 'info@nxbkimdong.com.vn', N'Hà Nội'),
('NCC02', N'Tập đoàn Thiên Long', '0283750555', 'lienhe@thienlong.vn', N'TP. Hồ Chí Minh'),
('NCC03', N'Văn phòng phẩm Hồng Hà', '0243652425', 'cskh@vpphongha.com.vn', N'Hà Nội'),
('NCC04', N'Nhà xuất bản Trẻ', '0283931628', 'nxbtre@hcm.vnn.vn', N'TP. Hồ Chí Minh'),
('NCC05', N'Công ty Cổ phần Nhã Nam', '0243514687', 'info@nhanam.vn', N'Hà Nội');

-- 2. XUAT DU LIEU
SELECT * FROM Nha_Cung_Cap;

-- 3. XUAT DU LIEU CO DK
SELECT * FROM Nha_Cung_Cap
WHERE Dia_Chi_NCC LIKE N'%TP. Hồ Chí Minh%';

-- 4. CHINH SUA DU LIEU
UPDATE Nha_Cung_Cap
SET Email_NCC = 'nxbt@hcm.com.vn'
WHERE Ma_NCC = 'NCC04';

-- 5. XOA DU LIEU
--DELETE FROM Nha_Cung_Cap
--WHERE Ma_NCC = 'NCC01';

--=============================================--

-- Sach -- 
-- 1. THEM DU LIEU
INSERT INTO Sach(S_Ma_HH, Tac_Gia, The_Loai, Ngon_Ngu)
VALUES
('HH001', N'Dale Carnegie', N'Kỹ năng sống', N'Tiếng Việt'),
('HH003', N'Paulo Coelho', N'Tiểu thuyết', N'Tiếng Việt');

-- 2. XUAT DU LIEU
SELECT * FROM Sach;

-- 3. XUAT DU LIEU CO DK
SELECT * FROM Sach
WHERE Ngon_Ngu LIKE N'%Tiếng Việt%';

-- 4. CHINH SUA DU LIEU
UPDATE Sach
SET The_Loai = 'Kỹ năng mềm'
WHERE S_Ma_HH = 'HH001';

-- 5. XOA DU LIEU
--DELETE FROM Sach
--WHERE S_Ma_HH = 'HH003';

--=============================================--

-- Van_Phong_Pham -- 
-- 1. THEM DU LIEU
INSERT INTO Van_Phong_Pham(VPP_Ma_HH, Loai, Chat_Lieu)
VALUES
('HH002', N'Bút viết', N'Nhựa, Mực'),
('HH004', N'Giấy in', N'Bột giấy'),
('HH005', N'Tẩy', N'Cao su');

-- 2. XUAT DU LIEU
SELECT * FROM Van_Phong_Pham;

-- 3. XUAT DU LIEU CO DK
SELECT * FROM Van_Phong_Pham
WHERE Loai LIKE N'%Bút viết%';

-- 4. CHINH SUA DU LIEU
UPDATE Van_Phong_Pham
SET Loai = 'Bút'
WHERE VPP_Ma_HH = 'HH002';

-- 5. XOA DU LIEU
--DELETE FROM Van_Phong_Pham
--WHERE VPP_Ma_HH = 'HH004';

--=============================================--

-- Tai_Khoan -- 
-- 1. THEM DU LIEU
INSERT INTO Tai_Khoan(Ten_Dang_Nhap, Mat_Khau, Ma_NV, Vai_Tro)
VALUES 
('admin_boss', 'Boss@2026', 'NV01', 'admin'),
('ngan_thungan', 'NhanVien@123', 'NV02', 'nhan_vien'),
('pham_kho', 'NhanVien@123', 'NV03', 'nhan_vien'),
('nguyen_quanly', 'QuanLy@2026', 'NV04', 'quan_ly'),
('hoang_intern', 'NhanVien@123', 'NV05', 'nhan_vien');

-- 2. XUAT DU LIEU
SELECT * FROM Tai_Khoan;

-- 3. XUAT DU LIEU CO DK	
SELECT * FROM Tai_Khoan
WHERE Vai_Tro = N'nhan_vien' ;

-- 4. CHINH SUA DU LIEU
UPDATE Tai_Khoan
SET Mat_Khau = N'NhanVien@2026'
WHERE Mat_Khau = N'NhanVien@123';

-- 5. XOA DU LIEU
--DELETE FROM Tai_Khoan
--WHERE Ma_NV = 'NV05';

--=============================================--

-- THEM HOA DON BAN --

-- B1: Thêm hoá đơn bán (Đã thêm rõ ràng cột Thoi_Gian_Ban và hàm GETDATE())
INSERT INTO Hoa_Don_Ban(Ma_HDB, T_Tien_Ban, Ma_NV, Ma_KH, Thoi_Gian_Ban)
VALUES ('HDB001', 0, 'NV01', 'KH01', GETDATE()); 

-- B2: Thêm Hàng Hoá và bảng chi tiết hoá đơn
INSERT INTO CT_Hoa_Don_Ban(Ma_HDB, Ma_HH, So_Luong, Gia_Ban)
VALUES 
('HDB001', 'HH001', 1, 0),
('HDB001', 'HH002', 5, 0);

-- B3: Cập nhật giá bán	
UPDATE CT_Hoa_Don_Ban
SET CT_Hoa_Don_Ban.Gia_Ban = Hang_Hoa.Gia_Goc * 1 
FROM CT_Hoa_Don_Ban
JOIN Hang_Hoa ON CT_Hoa_Don_Ban.Ma_HH = Hang_Hoa.Ma_HH
WHERE CT_Hoa_Don_Ban.Ma_HDB = 'HDB001' AND CT_Hoa_Don_Ban.Gia_Ban = 0;

-- B4: Cập nhật tổng tiền bán
UPDATE Hoa_Don_Ban 
SET T_Tien_Ban = (SELECT SUM(So_Luong * Gia_Ban) FROM CT_Hoa_Don_Ban WHERE Ma_HDB = 'HDB001')
WHERE Ma_HDB = 'HDB001';

-- XOA HOA DON BAN --

-- B1: Xoá chi tiết hoá đơn
--DELETE FROM CT_Hoa_Don_Ban 
--WHERE Ma_HDB = 'HDB001';

-- B2: Xoá hoá đơn bán
--DELETE FROM Hoa_Don_Ban 
--WHERE Ma_HDB = 'HDB001';

-- SUA HOA DON BAN --

-- B1: Chỉnh sửa chi tiết hóa đơn
UPDATE CT_Hoa_Don_Ban
SET So_Luong = 4
WHERE Ma_HH = 'HH001' AND Ma_HDB = 'HDB001';

-- B2: Cập nhật lại tổng tiền bán
UPDATE Hoa_Don_Ban 
SET T_Tien_Ban = (SELECT SUM(So_Luong * Gia_Ban) FROM CT_Hoa_Don_Ban WHERE Ma_HDB = 'HDB001')
WHERE Ma_HDB = 'HDB001';

-- IN HOA DON BAN --
SELECT 
    hdb.Ma_HDB AS N'Mã Hóa Đơn',
    hdb.Thoi_Gian_Ban AS N'Thời Gian Bán',
    kh.Ten_KH AS N'Tên Khách Hàng',
    nv.Ten_NV AS N'Nhân Viên Phục Vụ',
    hh.Ten_HH AS N'Tên Sản Phẩm',
    ct.So_Luong AS N'Số Lượng',
    ct.Gia_Ban AS N'Đơn Giá',
    (ct.So_Luong * ct.Gia_Ban) AS N'Thành Tiền (Từng món)',
    hdb.T_Tien_Ban AS N'TỔNG TIỀN PHẢI TRẢ'
FROM Hoa_Don_Ban hdb
JOIN CT_Hoa_Don_Ban ct ON hdb.Ma_HDB = ct.Ma_HDB       
JOIN Khach_Hang kh ON hdb.Ma_KH = kh.Ma_KH             
JOIN Nhan_Vien nv ON hdb.Ma_NV = nv.Ma_NV              
JOIN Hang_Hoa hh ON ct.Ma_HH = hh.Ma_HH                
WHERE hdb.Ma_HDB = 'HDB001';

--=============================================--

-- THEM HOA DON NHAP

-- B1: Thêm hoá đơn nhập (Đã thêm rõ ràng cột Thoi_Gian_Nhap và hàm GETDATE())
INSERT INTO Hoa_Don_Nhap(Ma_HDN, T_Tien_Nhap, Ma_NV, Ma_NCC, Thoi_Gian_Nhap)
VALUES ('HDN001', 0, 'NV01', 'NCC01', GETDATE()); 

-- B2: Thêm chi tiết hoá đơn nhập
INSERT INTO CT_Hoa_Don_Nhap(Ma_HDN, Ma_HH, So_Luong, Gia_Nhap)
VALUES 
('HDN001', 'HH001', 50, 65000),
('HDN001', 'HH002', 30, 3000);

-- B3: Cập nhật lại tổng tiền nhập
UPDATE Hoa_Don_Nhap 
SET T_Tien_Nhap = (SELECT SUM(So_Luong * Gia_Nhap) FROM CT_Hoa_Don_Nhap WHERE Ma_HDN = 'HDN001')
WHERE Ma_HDN = 'HDN001';

-- XOA HOA DON NHAP

-- B1: Xoá chi tiết hoá đơn nhập 
--DELETE FROM CT_Hoa_Don_Nhap 
--WHERE Ma_HDN = 'HDN001';

-- B2: Xoá hoá đơn nhập gốc 
--DELETE FROM Hoa_Don_Nhap 
--WHERE Ma_HDN = 'HDN001';


-- SUA HOA DON NHAP

-- B1: Chỉnh sửa chi tiết hóa đơn
UPDATE CT_Hoa_Don_Nhap
SET So_Luong = 100
WHERE Ma_HH = 'HH001' AND Ma_HDN = 'HDN001';

-- B2: Cập nhật lại tổng tiền nhập
UPDATE Hoa_Don_Nhap 
SET T_Tien_Nhap = (SELECT SUM(So_Luong * Gia_Nhap) FROM CT_Hoa_Don_Nhap WHERE Ma_HDN = 'HDN001')
WHERE Ma_HDN = 'HDN001';


-- IN HOA DON NHAP

SELECT 
    hdn.Ma_HDN AS N'Mã Hóa Đơn Nhập',
    hdn.Thoi_Gian_Nhap AS N'Thời Gian Nhập',
    ncc.Ten_NCC AS N'Nhà Cung Cấp',
    nv.Ten_NV AS N'Nhân Viên Nhập Hàng',
    hh.Ten_HH AS N'Tên Sản Phẩm',
    ct.So_Luong AS N'Số Lượng Nhập',
    ct.Gia_Nhap AS N'Đơn Giá Nhập',
    (ct.So_Luong * ct.Gia_Nhap) AS N'Thành Tiền (Từng món)',
    hdn.T_Tien_Nhap AS N'TỔNG TIỀN THANH TOÁN'
FROM Hoa_Don_Nhap hdn
JOIN CT_Hoa_Don_Nhap ct ON hdn.Ma_HDN = ct.Ma_HDN        
JOIN Nha_Cung_Cap ncc ON hdn.Ma_NCC = ncc.Ma_NCC         
JOIN Nhan_Vien nv ON hdn.Ma_NV = nv.Ma_NV                
JOIN Hang_Hoa hh ON ct.Ma_HH = hh.Ma_HH                  
WHERE hdn.Ma_HDN = 'HDN001';