USE [master]
GO
/****** Object:  Database [CuaHangBiaOnline_62131086]    Script Date: 02-Jan-24 11:16:24 PM ******/
CREATE DATABASE [CuaHangBiaOnline_62131086]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CuaHangBiaOnline_62131086', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CuaHangBiaOnline_62131086.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CuaHangBiaOnline_62131086_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CuaHangBiaOnline_62131086_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CuaHangBiaOnline_62131086].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET ARITHABORT OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET  MULTI_USER 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET QUERY_STORE = OFF
GO
USE [CuaHangBiaOnline_62131086]
GO
/****** Object:  Table [dbo].[Chitietdonhang]    Script Date: 02-Jan-24 11:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdonhang](
	[Madon] [int] NOT NULL,
	[Masp] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
	[Thanhtien] [decimal](18, 0) NULL,
	[Phuongthucthanhtoan] [int] NULL,
 CONSTRAINT [PK_Chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC,
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donhang]    Script Date: 02-Jan-24 11:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhang](
	[Madon] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydat] [datetime] NULL,
	[Tinhtrang] [int] NULL,
	[MaNguoidung] [int] NULL,
	[Thanhtoan] [int] NULL,
	[Diachinhanhang] [nvarchar](100) NULL,
	[Tongtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hangsanxuat]    Script Date: 02-Jan-24 11:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hangsanxuat](
	[Mahang] [int] IDENTITY(1,1) NOT NULL,
	[Tenhang] [nvarchar](100) NULL,
 CONSTRAINT [PK_Hangsanxuat] PRIMARY KEY CLUSTERED 
(
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiBia]    Script Date: 02-Jan-24 11:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiBia](
	[Maloai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_LoaiBia] PRIMARY KEY CLUSTERED 
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidung]    Script Date: 02-Jan-24 11:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Dienthoai] [nchar](10) NULL,
	[Matkhau] [varchar](50) NULL,
	[IDQuyen] [int] NULL,
	[Diachi] [nvarchar](100) NULL,
	[Anhdaidien] [varchar](200) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 02-Jan-24 11:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 02-Jan-24 11:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[Masp] [int] IDENTITY(1,1) NOT NULL,
	[Tensp] [nvarchar](50) NULL,
	[Giatien] [decimal](18, 0) NULL,
	[Soluong] [int] NULL,
	[Mota] [ntext] NULL,
	[Sanphammoi] [bit] NULL,
	[Anhbia] [nvarchar](100) NULL,
	[Mahang] [int] NULL,
	[Maloai] [int] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (1, 2, 15, CAST(11500 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (2, 4, 1, CAST(9500 AS Decimal(18, 0)), CAST(9500 AS Decimal(18, 0)), 1)
GO
SET IDENTITY_INSERT [dbo].[Donhang] ON 

INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (1, CAST(N'2023-12-12T00:00:00.000' AS DateTime), NULL, 2, NULL, N'Nha Trang', CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (2, CAST(N'2024-01-02T23:12:35.143' AS DateTime), NULL, 4, 1, N'nha trang', CAST(9500 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Donhang] OFF
GO
SET IDENTITY_INSERT [dbo].[Hangsanxuat] ON 

INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (3, N'Bia Sài Gòn')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (4, N'Bia 333   ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (5, N'Heineken  ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (6, N'Bia Tiger ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (7, N'Bia Hà Nội')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (8, N'Bia Việt  ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (9, N'Bia Ngoại ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (10, N'Bia Larue ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (11, N'budweiser ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (12, N'Bia ruby  ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (13, N'Bia Huda  ')
SET IDENTITY_INSERT [dbo].[Hangsanxuat] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiBia] ON 

INSERT [dbo].[LoaiBia] ([Maloai], [TenLoai]) VALUES (2, N'Lon bình thường 330ml')
INSERT [dbo].[LoaiBia] ([Maloai], [TenLoai]) VALUES (3, N'Lon lớn 500ml')
INSERT [dbo].[LoaiBia] ([Maloai], [TenLoai]) VALUES (4, N'Lon nhỏ cao 330ml')
INSERT [dbo].[LoaiBia] ([Maloai], [TenLoai]) VALUES (5, N'Chai lớn 500ml')
INSERT [dbo].[LoaiBia] ([Maloai], [TenLoai]) VALUES (6, N'Chai nhỏ 330ml')
SET IDENTITY_INSERT [dbo].[LoaiBia] OFF
GO
SET IDENTITY_INSERT [dbo].[Nguoidung] ON 

INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [Anhdaidien]) VALUES (2, N'Phạm Thị Xuân Mai', N'mai@gmail.com', N'0123456789', N'123', 1, N'Nha Trang', NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [Anhdaidien]) VALUES (3, N'abc', N'teo@gmail.com', N'123456    ', N'123456789', NULL, N'abc', NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [Anhdaidien]) VALUES (4, N'xyz', N'a@gmail.com', N'123       ', N'123456789', NULL, N'ádas', NULL)
SET IDENTITY_INSERT [dbo].[Nguoidung] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Admin')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Member')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (2, N'Bia Sài Gòn Xanh', CAST(11500 AS Decimal(18, 0)), 500, N'Hương vị thơm ngon', NULL, N'/Images/files/SaiGonXanh.jpg', 3, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (3, N'Bia 333', CAST(10000 AS Decimal(18, 0)), 15, N'Uống là say', NULL, N'/Images/files/333.jpg', 4, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (4, N'Bia Hà Nội', CAST(9500 AS Decimal(18, 0)), 250, N'Bia ngon', NULL, N'/Images/files/BiaHaNoi.jpg', 7, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (5, N'Bia Tiger', CAST(13000 AS Decimal(18, 0)), 356, N'Ngon Tuyệt Vời', 1, N'/Images/files/BiaTiger.jpg', 6, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (6, N'Bia Việt', CAST(9500 AS Decimal(18, 0)), 555, N'Đậm Chất Người Việt', NULL, N'/Images/files/BiaViet.jpg', 8, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (7, N'Red Horse', CAST(26000 AS Decimal(18, 0)), 452, N'Uống như rựu', 1, N'/Images/files/redhorre.jpg', 9, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (8, N'SaiGonChill', CAST(17000 AS Decimal(18, 0)), 445, N'Uống là chill', NULL, N'/Images/files/SaiGonChill.jpg', 3, 4)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (9, N'Tiger bạc', CAST(15000 AS Decimal(18, 0)), 545, N'Bạc như đời', NULL, N'/Images/files/TigerBac.jpg', 6, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (10, N'Tiger bạc cao', CAST(16000 AS Decimal(18, 0)), 546, N'Đậm vị', NULL, N'/Images/files/TigerBacCao.jpg', 6, 4)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (11, N'Bia Sài Gòn Đỏ', CAST(10000 AS Decimal(18, 0)), 213, N'Uống vào là đỏ', NULL, N'/Images/files/SaiGonDo.jpg', 3, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (12, N'Tiger Soju', CAST(16000 AS Decimal(18, 0)), 564, N'Ngọt như mía lùi', NULL, N'/Images/files/tigersoju.jpg', 6, 4)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (13, N'Heineken Bạc Lớn', CAST(37000 AS Decimal(18, 0)), 456, N'Uống là mê', NULL, N'/Images/files/kenbac500ml.jpg', 5, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (14, N'Heineken Bạc Cao', CAST(16000 AS Decimal(18, 0)), 163, N'bạc như lòng người', NULL, N'/Images/files/kenbacloncao.jpg', 5, 4)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (15, N'Heineken xanh', CAST(15000 AS Decimal(18, 0)), 1564, N'vị đầm khó tả', NULL, N'/Images/files/kenxanh.png', 5, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (16, N'Heineken xanh lon cao', CAST(14000 AS Decimal(18, 0)), 146, N'vị đầm tương đối', NULL, N'/Images/files/kenxanhloncao.jpg', 5, 4)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (17, N'Bia budweiser Lớn', CAST(29000 AS Decimal(18, 0)), 156, N'Uống bao say', NULL, N'/Images/files/bluwesLon.jpg', 11, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (18, N'Bia budweiser ', CAST(16000 AS Decimal(18, 0)), 456, N'Nhỏ mà có võ', NULL, N'/Images/files/bluwes.jpg', 11, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (19, N'Bia Ruby', CAST(12000 AS Decimal(18, 0)), 800, N'Ngon', NULL, N'/Images/files/biarubi.jpg', 12, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (20, N'Bia Laru Xanh', CAST(10000 AS Decimal(18, 0)), 8000, N'Ngon Chất lượng', NULL, N'/Images/files/laruxanh.jpg', 10, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (21, N'Bia Laru Bạc', CAST(13000 AS Decimal(18, 0)), 600, N'Ngon Tuyệt', NULL, N'/Images/files/larubac.jpg', 10, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (22, N'Bia Laru Bạc Cao', CAST(13000 AS Decimal(18, 0)), 500, N'Ngon ', NULL, N'/Images/files/larubacloncao.jpg', 10, 4)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (23, N'Bia Huda', CAST(11000 AS Decimal(18, 0)), 500, N'Ngon', NULL, N'/Images/files/huda.jpg', 13, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (24, N'Bia Tiger Lớn', CAST(29000 AS Decimal(18, 0)), 156, N'Uống Là Nhớ', NULL, N'/Images/files/tigerlon.jpg', 6, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Maloai]) VALUES (25, N'Bia Sài Gòn Gold', CAST(14000 AS Decimal(18, 0)), 1566, N'Uống là ghiền', NULL, N'/Images/files/saigongold.jpg', 3, 4)
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
GO
ALTER TABLE [dbo].[Nguoidung] ADD  CONSTRAINT [DF_Nguoidung_IDQuyen]  DEFAULT ((0)) FOR [IDQuyen]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Donhang] FOREIGN KEY([Madon])
REFERENCES [dbo].[Donhang] ([Madon])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Donhang]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Sanpham] FOREIGN KEY([Masp])
REFERENCES [dbo].[Sanpham] ([Masp])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Sanpham]
GO
ALTER TABLE [dbo].[Donhang]  WITH CHECK ADD  CONSTRAINT [FK_Donhang_Khachhang] FOREIGN KEY([MaNguoidung])
REFERENCES [dbo].[Nguoidung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Donhang] CHECK CONSTRAINT [FK_Donhang_Khachhang]
GO
ALTER TABLE [dbo].[Nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Nguoidung_Nguoidung] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[PhanQuyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[Nguoidung] CHECK CONSTRAINT [FK_Nguoidung_Nguoidung]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hangsanxuat] FOREIGN KEY([Mahang])
REFERENCES [dbo].[Hangsanxuat] ([Mahang])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hangsanxuat]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_LoaiBia] FOREIGN KEY([Maloai])
REFERENCES [dbo].[LoaiBia] ([Maloai])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_LoaiBia]
GO
USE [master]
GO
ALTER DATABASE [CuaHangBiaOnline_62131086] SET  READ_WRITE 
GO
