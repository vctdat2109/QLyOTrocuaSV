USE [master]
GO
/****** Object:  Database [qltro]    Script Date: 27-04-2023 5:27:38 AM ******/
CREATE DATABASE [qltro]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qltro', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\qltro.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'qltro_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\qltro_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [qltro] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qltro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qltro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qltro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qltro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qltro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qltro] SET ARITHABORT OFF 
GO
ALTER DATABASE [qltro] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [qltro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qltro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qltro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qltro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qltro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qltro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qltro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qltro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qltro] SET  ENABLE_BROKER 
GO
ALTER DATABASE [qltro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qltro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qltro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qltro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qltro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qltro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qltro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qltro] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qltro] SET  MULTI_USER 
GO
ALTER DATABASE [qltro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qltro] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qltro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qltro] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [qltro] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qltro] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [qltro] SET QUERY_STORE = OFF
GO
USE [qltro]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 27-04-2023 5:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[maCTHD] [nvarchar](50) NOT NULL,
	[maDV] [nvarchar](50) NULL,
	[maPhong] [nvarchar](50) NULL,
	[maHD] [nvarchar](50) NULL,
	[maSV] [nvarchar](10) NULL,
	[maHoaDon] [nvarchar](20) NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[maCTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 27-04-2023 5:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[maDV] [nvarchar](50) NOT NULL,
	[tenDV] [nvarchar](50) NULL,
	[giaDV] [float] NULL,
 CONSTRAINT [PK_chiTietHD] PRIMARY KEY CLUSTERED 
(
	[maDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 27-04-2023 5:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHoaDon] [nvarchar](20) NOT NULL,
	[maHD] [nvarchar](20) NULL,
	[ngayLapHD] [date] NULL,
	[tongTien] [float] NULL,
	[maPhong] [nvarchar](50) NULL,
	[maSV] [nvarchar](10) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 27-04-2023 5:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong](
	[maHD] [nvarchar](20) NOT NULL,
	[maSV] [nvarchar](10) NULL,
	[maPhong] [nvarchar](50) NULL,
	[giaThue] [float] NULL,
	[ngayLap] [date] NULL,
	[ngayHetHD] [date] NULL,
 CONSTRAINT [PK_HopDong] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 27-04-2023 5:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[loaiPhong] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[loaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaTro]    Script Date: 27-04-2023 5:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaTro](
	[maTro] [nvarchar](50) NOT NULL,
	[diaChi] [nvarchar](50) NULL,
	[chuTro] [nvarchar](50) NULL,
	[soDT] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaTro] PRIMARY KEY CLUSTERED 
(
	[maTro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongTro]    Script Date: 27-04-2023 5:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongTro](
	[maPhong] [nvarchar](50) NOT NULL,
	[tenPhong] [nvarchar](50) NULL,
	[loaiPhong] [nvarchar](50) NULL,
	[giaThue] [float] NULL,
	[dienTich] [nvarchar](50) NULL,
	[tinhTrang] [nvarchar](50) NULL,
	[maTro] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhongTro] PRIMARY KEY CLUSTERED 
(
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 27-04-2023 5:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[maSV] [nvarchar](10) NOT NULL,
	[tenSV] [nvarchar](50) NULL,
	[gioiTinh] [bit] NULL,
	[lop] [nvarchar](20) NULL,
	[nganh] [nvarchar](50) NULL,
	[quequan] [nvarchar](50) NULL,
	[sdt] [nvarchar](10) NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taiKhoan]    Script Date: 27-04-2023 5:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taiKhoan](
	[tenTaiKhoan] [nvarchar](50) NULL,
	[matKhau] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[DichVu] ([maDV], [tenDV], [giaDV]) VALUES (N'DV01', N'Điện', 250000)
INSERT [dbo].[DichVu] ([maDV], [tenDV], [giaDV]) VALUES (N'DV02', N'Nước', 100000)
INSERT [dbo].[DichVu] ([maDV], [tenDV], [giaDV]) VALUES (N'DV03', N'Internet', 50000)
INSERT [dbo].[DichVu] ([maDV], [tenDV], [giaDV]) VALUES (N'DV04', N'Dich vụ khác', 100000)
GO
INSERT [dbo].[HopDong] ([maHD], [maSV], [maPhong], [giaThue], [ngayLap], [ngayHetHD]) VALUES (N'HD01', N'SV05', N'MP03', 2800000, CAST(N'2022-04-01' AS Date), CAST(N'2023-02-06' AS Date))
INSERT [dbo].[HopDong] ([maHD], [maSV], [maPhong], [giaThue], [ngayLap], [ngayHetHD]) VALUES (N'HD02', N'SV05', N'MP08', 8500000, CAST(N'2023-02-13' AS Date), CAST(N'2023-12-28' AS Date))
GO
INSERT [dbo].[LoaiPhong] ([loaiPhong]) VALUES (N'Phòng cao cấp')
INSERT [dbo].[LoaiPhong] ([loaiPhong]) VALUES (N'Phòng đôi')
INSERT [dbo].[LoaiPhong] ([loaiPhong]) VALUES (N'Phòng studio')
INSERT [dbo].[LoaiPhong] ([loaiPhong]) VALUES (N'Phòng thường')
GO
INSERT [dbo].[NhaTro] ([maTro], [diaChi], [chuTro], [soDT]) VALUES (N'MT01', N'24 Tran Hung Dao, Q. 5', N'Nguyen Dong', N'0948123442')
INSERT [dbo].[NhaTro] ([maTro], [diaChi], [chuTro], [soDT]) VALUES (N'MT02', N'12 Le Duc Tho, Q. Go Vap', N'Nguyen Duc Anh', N'0499412333')
INSERT [dbo].[NhaTro] ([maTro], [diaChi], [chuTro], [soDT]) VALUES (N'MT03', N'12 Le Lai, Q. 1', N'Le Van An', N'0933785433')
INSERT [dbo].[NhaTro] ([maTro], [diaChi], [chuTro], [soDT]) VALUES (N'MT04', N'36 Nguyen Van Troi, Q. Phu Nhuan', N'Tran Chinh', N'0948566661')
INSERT [dbo].[NhaTro] ([maTro], [diaChi], [chuTro], [soDT]) VALUES (N'MT05', N'758 Xo Viet Nghe Tinh, Q. Binh Thanh', N'Le Vy', N'0429655443')
INSERT [dbo].[NhaTro] ([maTro], [diaChi], [chuTro], [soDT]) VALUES (N'MT06', N'12 Nguyen Van Bao, Q. Go Vap', N'Le Tran Ha', N'0962434212')
INSERT [dbo].[NhaTro] ([maTro], [diaChi], [chuTro], [soDT]) VALUES (N'MT07', N'16 Hung Vuong, Q. 6', N'Tran Duc Anh', N'0942465521')
GO
INSERT [dbo].[PhongTro] ([maPhong], [tenPhong], [loaiPhong], [giaThue], [dienTich], [tinhTrang], [maTro]) VALUES (N'MP01', N'Phong A01', N'Phòng đôi', 4000000, N'20m2', N'Phòng Trống', N'MT02')
INSERT [dbo].[PhongTro] ([maPhong], [tenPhong], [loaiPhong], [giaThue], [dienTich], [tinhTrang], [maTro]) VALUES (N'MP02', N'Phong A02', N'Phòng cao cấp', 6000000, N'35m2', N'Phòng Trống', N'MT02')
INSERT [dbo].[PhongTro] ([maPhong], [tenPhong], [loaiPhong], [giaThue], [dienTich], [tinhTrang], [maTro]) VALUES (N'MP03', N'Phong C12', N'Phòng studio', 2800000, N'20m2', N'Phòng Có Người', N'MT03')
INSERT [dbo].[PhongTro] ([maPhong], [tenPhong], [loaiPhong], [giaThue], [dienTich], [tinhTrang], [maTro]) VALUES (N'MP04', N'Phong O03', N'Phòng thường', 3550000, N'26m2', N'Phòng Trống', N'MT06')
INSERT [dbo].[PhongTro] ([maPhong], [tenPhong], [loaiPhong], [giaThue], [dienTich], [tinhTrang], [maTro]) VALUES (N'MP05', N'Phong X01', N'Phòng đôi', 7500000, N'50m2', N'Phòng Trống', N'MT03')
INSERT [dbo].[PhongTro] ([maPhong], [tenPhong], [loaiPhong], [giaThue], [dienTich], [tinhTrang], [maTro]) VALUES (N'MP06', N'Phong A33', N'Phòng thường', 4500000, N'35m2', N'Phòng Trống', N'MT01')
INSERT [dbo].[PhongTro] ([maPhong], [tenPhong], [loaiPhong], [giaThue], [dienTich], [tinhTrang], [maTro]) VALUES (N'MP07', N'Phong M83', N'Phòng studio', 6000000, N'40m2', N'Phòng Trống', N'MT03')
INSERT [dbo].[PhongTro] ([maPhong], [tenPhong], [loaiPhong], [giaThue], [dienTich], [tinhTrang], [maTro]) VALUES (N'MP08', N'Phong V04', N'Phòng cao cấp', 8500000, N'50m2', N'Phòng Có Người', N'MT04')
GO
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [lop], [nganh], [quequan], [sdt], [email]) VALUES (N'SV01', N'Nguyễn Lê Minh Anh', 0, N'DHCNTT17CTT', N'CNTT', N'TPHCM', N'0938544425', N'manh@gmail.com')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [lop], [nganh], [quequan], [sdt], [email]) VALUES (N'SV02', N'Lê Thị Nữ', 0, N'DHKT15B', N'KT', N'Hải Phòng', N'0903765423', N'ledinh@gmail.com')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [lop], [nganh], [quequan], [sdt], [email]) VALUES (N'SV03', N'Nguyễn Anh', 1, N'DHKTPM17ATT', N'KTPM', N'Bình Thuận', N'0948753151', N'nganh231@gmail.com')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [lop], [nganh], [quequan], [sdt], [email]) VALUES (N'SV04', N'Ngô Minh Hòa', 1, N'DHCNTT16B', N'CNTT', N'Tiền Giang', N'0963334244', N'hoango24@gmail.com')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [lop], [nganh], [quequan], [sdt], [email]) VALUES (N'SV05', N'Trần Khánh Linh', 0, N'DHQTKD17A', N'QTKD', N'Hậu Giang', N'0942654524', N'khlinh23@gmail.com')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [lop], [nganh], [quequan], [sdt], [email]) VALUES (N'SV06', N'Trần Huy', 1, N'DHKTPM17CTT', N'KTPM', N'TPHCM', N'0931152529', N'huytran2k3@gmail.com')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [lop], [nganh], [quequan], [sdt], [email]) VALUES (N'SV07', N'Lê Hoàng Quân', 1, N'DHCNTT17CTT', N'CNTT', N'An Giang', N'0958246991', N'hquan3965@gmail.com')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [lop], [nganh], [quequan], [sdt], [email]) VALUES (N'SV08', N'Trần Hà Linh', 0, N'DHKT15B', N'KT', N'Tiền Giang', N'0948813535', N'halinh@gmail.com')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [lop], [nganh], [quequan], [sdt], [email]) VALUES (N'SV09', N'Trần Lê Tùng', 1, N'DHHTTT18TT', N'HTTT', N'Bình Thuận', N'0951356533', N'tranletung@gmail.com')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [gioiTinh], [lop], [nganh], [quequan], [sdt], [email]) VALUES (N'SV10', N'Lê Anh Quân', 1, N'DHKHMT', N'KHMT', N'Hậu Giang', N'0486412646', N'anhquan@gmail.com')
GO
INSERT [dbo].[taiKhoan] ([tenTaiKhoan], [matKhau]) VALUES (N'admin', N'1234')
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[HoaDon] ([maHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_DV] FOREIGN KEY([maDV])
REFERENCES [dbo].[DichVu] ([maDV])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_DV]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_HopDong] FOREIGN KEY([maHD])
REFERENCES [dbo].[HopDong] ([maHD])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_HopDong]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_PhongTro] FOREIGN KEY([maPhong])
REFERENCES [dbo].[PhongTro] ([maPhong])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_PhongTro]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_SinhVien] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([maSV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_SinhVien]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [fk_maPhong] FOREIGN KEY([maPhong])
REFERENCES [dbo].[PhongTro] ([maPhong])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [fk_maPhong]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [fk_maSV] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([maSV])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [fk_maSV]
GO
ALTER TABLE [dbo].[PhongTro]  WITH CHECK ADD  CONSTRAINT [fk_maTro] FOREIGN KEY([maTro])
REFERENCES [dbo].[NhaTro] ([maTro])
GO
ALTER TABLE [dbo].[PhongTro] CHECK CONSTRAINT [fk_maTro]
GO
ALTER TABLE [dbo].[PhongTro]  WITH CHECK ADD  CONSTRAINT [FK_PhongTro_LoaiPhong1] FOREIGN KEY([loaiPhong])
REFERENCES [dbo].[LoaiPhong] ([loaiPhong])
GO
ALTER TABLE [dbo].[PhongTro] CHECK CONSTRAINT [FK_PhongTro_LoaiPhong1]
GO
USE [master]
GO
ALTER DATABASE [qltro] SET  READ_WRITE 
GO
