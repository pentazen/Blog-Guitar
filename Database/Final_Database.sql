USE [master]
GO
/****** Object:  Database [Do_An_Tot_Nghiep]    Script Date: 05/24/2017 22:01:52 ******/
CREATE DATABASE [Do_An_Tot_Nghiep] ON  PRIMARY 
( NAME = N'Do_An_Tot_Nghiep', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Do_An_Tot_Nghiep.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Do_An_Tot_Nghiep_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Do_An_Tot_Nghiep_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Do_An_Tot_Nghiep].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET ARITHABORT OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET  DISABLE_BROKER
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET  READ_WRITE
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET  MULTI_USER
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Do_An_Tot_Nghiep] SET DB_CHAINING OFF
GO
USE [Do_An_Tot_Nghiep]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](150) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[GiaTri] [int] NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopAm]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopAm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenHopAm] [nvarchar](50) NULL,
	[KyHieuHopAm] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_HopAm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoKho]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoKho](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenDoKho] [nvarchar](150) NULL,
	[MoTa] [nvarchar](max) NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_DoKho] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dieu]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dieu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenDieu] [nvarchar](150) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaiDat]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaiDat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenCaiDat] [nvarchar](150) NULL,
	[MoTa] [nvarchar](250) NULL,
	[GiaTri] [int] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_CaiDat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGiaSanPham]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGiaSanPham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_ThanhVien] [int] NULL,
	[id_SanPham] [int] NULL,
	[NoiDungDanhGia] [nvarchar](max) NULL,
	[Diem] [float] NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_DanhGiaSanPham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CauTrucHopAm]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauTrucHopAm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NotSoMot] [nvarchar](50) NULL,
	[NotSoHai] [nvarchar](50) NULL,
	[NotSoBa] [nvarchar](50) NULL,
	[NotSoBon] [nvarchar](50) NULL,
	[NotSoNam] [nvarchar](50) NULL,
	[NotSoSau] [nvarchar](50) NULL,
	[NotSoBay] [nvarchar](50) NULL,
	[NganDanThu] [int] NULL,
	[ViTriNotDayMot] [int] NULL,
	[ViTriNotDayHai] [int] NULL,
	[ViTriNotDayBa] [int] NULL,
	[ViTriNotDayBon] [int] NULL,
	[ViTriNotDayNam] [int] NULL,
	[ViTriNotDaySau] [int] NULL,
	[ViTriNgonTayThuMot] [int] NULL,
	[ViTriNgonTayThuHai] [int] NULL,
	[ViTriNgonTayThuBa] [int] NULL,
	[ViTriNgonTayThuTu] [int] NULL,
	[ViTriNgonTayThuNam] [int] NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_CauTrucHopAm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiThanhVien] [nvarchar](150) NULL,
	[NoiDung] [nvarchar](250) NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_LoaiTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTapTin]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTapTin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTapTin] [nvarchar](150) NULL,
	[GhiChu] [nvarchar](250) NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_LoaiTapTin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiBaiViet]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiBaiViet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiBaiViet] [nvarchar](150) NULL,
	[GhiChu] [nvarchar](150) NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhan]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenNhan] [nvarchar](150) NULL,
	[TenNhanKhongDau] [nvarchar](150) NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Nhan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhacCu]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhacCu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenNhacCu] [nvarchar](250) NULL,
	[TieuSu] [nvarchar](max) NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_NhacCu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiYeuThich]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiYeuThich](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiYeuThich] [nvarchar](150) NULL,
	[GhiChu] [nvarchar](250) NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_LoaiYeuThich] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien_Quyen]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien_Quyen](
	[id_LoaiThanhVien] [int] NULL,
	[id_Quyen] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_LoaiThanhVien] [int] NOT NULL,
	[TaiKhoan] [nvarchar](150) NULL,
	[MatKhau] [nvarchar](150) NULL,
	[MatKhauMaHoa] [nvarchar](max) NULL,
	[Email] [nvarchar](150) NULL,
	[EmailXacNhan] [bit] NULL,
	[LanDangNhapCuoi] [datetime] NULL,
	[LanDangXuatCuoi] [datetime] NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TapTin]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TapTin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_LoaiTapTin] [int] NOT NULL,
	[TieuDe] [nvarchar](150) NULL,
	[MoTa] [nvarchar](250) NULL,
	[DuongDan] [nvarchar](max) NULL,
	[TenTapTin] [nvarchar](250) NULL,
	[DinhDang] [nvarchar](250) NULL,
	[DungLuong] [float] NULL,
	[TenDinhDang] [nvarchar](250) NULL,
	[LuotTai] [int] NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_TapTin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeuThich]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuThich](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_LoaiYeuThich] [int] NULL,
	[id_ThanhVien] [int] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_YeuThich] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoaiNhac]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoaiNhac](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiNhac] [nvarchar](150) NULL,
	[id_TapTinAnhNen] [int] NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_TheLoaiNhac] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien_NhacCu]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien_NhacCu](
	[id_ThanhVien] [int] NULL,
	[id_NhacCu] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien_DiaChiIP]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien_DiaChiIP](
	[id_ThanhVien] [int] NULL,
	[DiaChiIp] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemHoatDong]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemHoatDong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenDiemHoatDong] [nvarchar](150) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[SoDiem] [float] NULL,
	[NgayTao] [datetime] NULL,
	[NgaySua] [datetime] NULL,
	[id_ThanhVienSua] [int] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_DiemHoatDong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayList]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenPlaylist] [nvarchar](150) NULL,
	[id_ThanhVienSoHuu] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_PlayList] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenTacGia] [nvarchar](150) NULL,
	[NTNS] [datetime] NULL,
	[TieuSu] [nvarchar](max) NULL,
	[id_TapTinAnhDaiDien] [int] NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSoThanhVien]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoThanhVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_ThanhVien] [int] NULL,
	[TenDayDu] [nvarchar](150) NULL,
	[TenKhac] [nvarchar](150) NULL,
	[GioiTinh] [int] NULL,
	[NTNS] [date] NULL,
	[DienThoaiLienLac] [nvarchar](150) NULL,
	[LinkFacebook] [nvarchar](max) NULL,
	[LinkYoutube] [nvarchar](max) NULL,
	[TuGioiThieu] [nvarchar](max) NULL,
	[TonGiao] [nvarchar](150) NULL,
	[TrichDanYeuThich] [nvarchar](max) NULL,
	[NoiSinh] [nvarchar](150) NULL,
	[GhiChu] [nvarchar](250) NULL,
	[NgayTao] [datetime] NULL,
	[NgaySua] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_HoSoThanhVien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopAm_CauTrucHopAm]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopAm_CauTrucHopAm](
	[id_HopAm] [int] NULL,
	[id_CauTrucHopAm] [int] NULL,
	[id_TapTinAnhHopAm] [int] NULL,
	[ThuTu] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_ThanhVienBinhLuan] [int] NULL,
	[NoiDungBinhLuan] [nvarchar](max) NULL,
	[NgayTao] [datetime] NULL,
	[id_BinhLuanCha] [int] NULL,
	[ThuBac] [int] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaSi]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaSi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenCaSi] [nvarchar](150) NULL,
	[NTNS] [datetime] NULL,
	[TieuSu] [nvarchar](max) NULL,
	[id_TapTinAnhDaiDien] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgaySua] [datetime] NULL,
	[id_ThanhVienSua] [int] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_CaSi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](150) NULL,
	[NgayTao] [datetime] NULL,
	[id_ThanhVienTao] [int] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiHat]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiHat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenBaiHat] [nvarchar](150) NULL,
	[TenBaiHatKhongDau] [nvarchar](150) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[DanhSachHopAm] [nvarchar](150) NULL,
	[id_TheLoaiNhac] [int] NULL,
	[LuotXem] [int] NULL,
	[LinkNhac] [nvarchar](max) NULL,
	[NgayTao] [datetime] NULL,
	[NgayDuyet] [datetime] NULL,
	[id_ThanhVienUp] [int] NULL,
	[Tong] [nvarchar](150) NULL,
	[id_DoKho] [int] NULL,
	[id_ThanhVienDuyet] [int] NULL,
	[NgayChinhSua] [datetime] NULL,
	[id_ThanhVienChinhSua] [int] NULL,
	[GhiChu] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_BaiHat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_ChuDe] [int] NULL,
	[id_LoaiBaiViet] [int] NULL,
	[TieuDeBaiViet] [nvarchar](150) NULL,
	[NoiDungBaiViet] [nvarchar](max) NULL,
	[id_ThanhVienViet] [int] NULL,
	[LuotXem] [int] NULL,
	[NgayTao] [datetime] NULL,
	[id_ThanhVienDuyet] [int] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_BaiViet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan_YeuThich]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan_YeuThich](
	[id_BinhLuan] [int] NULL,
	[id_YeuThich] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayList_BaiHat]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayList_BaiHat](
	[id_Playlist] [int] NULL,
	[id_BaiHat] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiViet_YeuThich]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet_YeuThich](
	[id_BaiViet] [int] NULL,
	[id_YeuThich] [int] NULL,
	[TrangThai] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiViet_TapTin]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet_TapTin](
	[id_BaiViet] [int] NULL,
	[id_TapTin] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiViet_Nhan]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet_Nhan](
	[id_BaiViet] [int] NULL,
	[id_Nhan] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiViet_BinhLuan]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet_BinhLuan](
	[id_BaiViet] [int] NULL,
	[id_BinhLuan] [int] NULL,
	[TrangThai] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiHat_YeuThich]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiHat_YeuThich](
	[id_BaiHat] [int] NULL,
	[id_YeuThich] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiHat_TapTin]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiHat_TapTin](
	[id_BaiHat] [int] NULL,
	[id_TapTin] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiHat_TacGia]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiHat_TacGia](
	[id_BaiHat] [int] NULL,
	[id_TacGia] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiHat_Nhan]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiHat_Nhan](
	[id_BaiHat] [int] NULL,
	[id_Nhan] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiHat_Dieu]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiHat_Dieu](
	[id_BaiHat] [int] NULL,
	[id_Dieu] [int] NULL,
	[id_ThanhVienBinhChon] [int] NULL,
	[NgayTao] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiHat_Diem]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiHat_Diem](
	[id_BaiHat] [int] NULL,
	[SoDiem] [float] NULL,
	[id_ThanhVienChoDiem] [int] NULL,
	[NgayTao] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiHat_CaSi]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiHat_CaSi](
	[id_BaiHat] [int] NULL,
	[id_CaSi] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiHat_BinhLuan]    Script Date: 05/24/2017 22:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiHat_BinhLuan](
	[id_BaiHat] [int] NULL,
	[id_BinhLuan] [int] NULL,
	[TrangThai] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Default [DF__Quyen__NgayTao__7F60ED59]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[Quyen] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__Quyen__TrangThai__00551192]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[Quyen] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__HopAm__NgayTao__440B1D61]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[HopAm] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__HopAm__TrangThai__44FF419A]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[HopAm] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__DoKho__NgayTao__03317E3D]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[DoKho] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__DoKho__TrangThai__0425A276]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[DoKho] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__Dieu__TrangThai__08EA5793]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[Dieu] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__CaiDat__TrangTha__0BC6C43E]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[CaiDat] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__DanhGiaSa__NgayT__0EA330E9]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[DanhGiaSanPham] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__CauTrucHo__NgayT__117F9D94]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[CauTrucHopAm] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__CauTrucHo__Trang__1273C1CD]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[CauTrucHopAm] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__LoaiThanh__NgayT__15502E78]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[LoaiThanhVien] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__LoaiThanh__Trang__164452B1]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[LoaiThanhVien] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__LoaiTapTi__NgayT__1920BF5C]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[LoaiTapTin] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__LoaiTapTi__Trang__1A14E395]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[LoaiTapTin] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__LoaiBaiVi__NgayT__1ED998B2]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[LoaiBaiViet] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__LoaiBaiVi__Trang__1FCDBCEB]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[LoaiBaiViet] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__Nhan__NgayTao__22AA2996]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[Nhan] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__Nhan__TrangThai__239E4DCF]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[Nhan] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__NhacCu__NgayTao__267ABA7A]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[NhacCu] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__NhacCu__TrangTha__276EDEB3]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[NhacCu] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__LoaiYeuTh__NgayT__2A4B4B5E]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[LoaiYeuThich] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__LoaiYeuTh__Trang__2B3F6F97]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[LoaiYeuThich] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__ThanhVien__NgayT__2F10007B]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[ThanhVien] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__ThanhVien__Trang__300424B4]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[ThanhVien] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__TapTin__NgayTao__32E0915F]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[TapTin] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__TapTin__TrangTha__33D4B598]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[TapTin] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__YeuThich__NgayTa__36B12243]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[YeuThich] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__TheLoaiNh__NgayT__398D8EEE]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[TheLoaiNhac] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__TheLoaiNh__Trang__3A81B327]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[TheLoaiNhac] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__DiemHoatD__NgayT__47DBAE45]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[DiemHoatDong] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__DiemHoatD__Trang__48CFD27E]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[DiemHoatDong] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__PlayList__NgayTa__3F466844]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[PlayList] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__PlayList__NgayCa__403A8C7D]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[PlayList] ADD  DEFAULT (getdate()) FOR [NgayCapNhat]
GO
/****** Object:  Default [DF__PlayList__TrangT__412EB0B6]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[PlayList] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__TacGia__NgayTao__571DF1D5]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[TacGia] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__TacGia__TrangTha__5812160E]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[TacGia] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__HoSoThanh__NgayT__5AEE82B9]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[HoSoThanhVien] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__HoSoThanh__Trang__5BE2A6F2]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[HoSoThanhVien] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__BinhLuan__NgayTa__4BAC3F29]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BinhLuan] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__BinhLuan__TrangT__4CA06362]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BinhLuan] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__CaSi__NgayTao__4F7CD00D]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[CaSi] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__CaSi__TrangThai__5070F446]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[CaSi] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__ChuDe__NgayTao__534D60F1]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[ChuDe] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__ChuDe__TrangThai__5441852A]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[ChuDe] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__BaiHat__NgayTao__5FB337D6]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__BaiHat__TrangTha__60A75C0F]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__BaiViet__NgayTao__6383C8BA]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiViet] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__BaiViet__TrangTh__6477ECF3]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiViet] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__BaiViet_Y__Trang__68487DD7]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiViet_YeuThich] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  Default [DF__BaiHat_Di__NgayT__70DDC3D8]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_Dieu] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__BaiHat_Di__NgayT__72C60C4A]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_Diem] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
/****** Object:  Default [DF__BaiHat_Bi__Trang__75A278F5]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_BinhLuan] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  ForeignKey [FK_LoaiThanhVien_Quyen_LoaiThanhVien]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[LoaiThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiThanhVien_Quyen_LoaiThanhVien] FOREIGN KEY([id_LoaiThanhVien])
REFERENCES [dbo].[LoaiThanhVien] ([id])
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen] CHECK CONSTRAINT [FK_LoaiThanhVien_Quyen_LoaiThanhVien]
GO
/****** Object:  ForeignKey [FK_LoaiThanhVien_Quyen_Quyen]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[LoaiThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiThanhVien_Quyen_Quyen] FOREIGN KEY([id_Quyen])
REFERENCES [dbo].[Quyen] ([id])
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen] CHECK CONSTRAINT [FK_LoaiThanhVien_Quyen_Quyen]
GO
/****** Object:  ForeignKey [FK_ThanhVien_LoaiThanhVien]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_LoaiThanhVien] FOREIGN KEY([id_LoaiThanhVien])
REFERENCES [dbo].[LoaiThanhVien] ([id])
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_LoaiThanhVien]
GO
/****** Object:  ForeignKey [FK_TapTin_LoaiTapTin]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[TapTin]  WITH CHECK ADD  CONSTRAINT [FK_TapTin_LoaiTapTin] FOREIGN KEY([id_LoaiTapTin])
REFERENCES [dbo].[LoaiTapTin] ([id])
GO
ALTER TABLE [dbo].[TapTin] CHECK CONSTRAINT [FK_TapTin_LoaiTapTin]
GO
/****** Object:  ForeignKey [FK_YeuThich_LoaiYeuThich]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_YeuThich_LoaiYeuThich] FOREIGN KEY([id_LoaiYeuThich])
REFERENCES [dbo].[LoaiYeuThich] ([id])
GO
ALTER TABLE [dbo].[YeuThich] CHECK CONSTRAINT [FK_YeuThich_LoaiYeuThich]
GO
/****** Object:  ForeignKey [FK_YeuThich_ThanhVien]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_YeuThich_ThanhVien] FOREIGN KEY([id_ThanhVien])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[YeuThich] CHECK CONSTRAINT [FK_YeuThich_ThanhVien]
GO
/****** Object:  ForeignKey [FK_TheLoaiNhac_TapTin]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[TheLoaiNhac]  WITH CHECK ADD  CONSTRAINT [FK_TheLoaiNhac_TapTin] FOREIGN KEY([id_TapTinAnhNen])
REFERENCES [dbo].[TapTin] ([id])
GO
ALTER TABLE [dbo].[TheLoaiNhac] CHECK CONSTRAINT [FK_TheLoaiNhac_TapTin]
GO
/****** Object:  ForeignKey [FK_ThanhVien_NhacCu_NhacCu]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[ThanhVien_NhacCu]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_NhacCu_NhacCu] FOREIGN KEY([id_NhacCu])
REFERENCES [dbo].[NhacCu] ([id])
GO
ALTER TABLE [dbo].[ThanhVien_NhacCu] CHECK CONSTRAINT [FK_ThanhVien_NhacCu_NhacCu]
GO
/****** Object:  ForeignKey [FK_ThanhVien_NhacCu_ThanhVien]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[ThanhVien_NhacCu]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_NhacCu_ThanhVien] FOREIGN KEY([id_ThanhVien])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[ThanhVien_NhacCu] CHECK CONSTRAINT [FK_ThanhVien_NhacCu_ThanhVien]
GO
/****** Object:  ForeignKey [FK_ThanhVien_DiaChiIP_ThanhVien]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[ThanhVien_DiaChiIP]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_DiaChiIP_ThanhVien] FOREIGN KEY([id_ThanhVien])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[ThanhVien_DiaChiIP] CHECK CONSTRAINT [FK_ThanhVien_DiaChiIP_ThanhVien]
GO
/****** Object:  ForeignKey [FK_DiemHoatDong_ThanhVienSua]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[DiemHoatDong]  WITH CHECK ADD  CONSTRAINT [FK_DiemHoatDong_ThanhVienSua] FOREIGN KEY([id_ThanhVienSua])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[DiemHoatDong] CHECK CONSTRAINT [FK_DiemHoatDong_ThanhVienSua]
GO
/****** Object:  ForeignKey [FK_PlayList_ThanhVien]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[PlayList]  WITH CHECK ADD  CONSTRAINT [FK_PlayList_ThanhVien] FOREIGN KEY([id_ThanhVienSoHuu])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[PlayList] CHECK CONSTRAINT [FK_PlayList_ThanhVien]
GO
/****** Object:  ForeignKey [FK_TacGia_TapTinAnhDaiDien]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[TacGia]  WITH CHECK ADD  CONSTRAINT [FK_TacGia_TapTinAnhDaiDien] FOREIGN KEY([id_TapTinAnhDaiDien])
REFERENCES [dbo].[TapTin] ([id])
GO
ALTER TABLE [dbo].[TacGia] CHECK CONSTRAINT [FK_TacGia_TapTinAnhDaiDien]
GO
/****** Object:  ForeignKey [FK_HoSoThanhVien_ThanhVien]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[HoSoThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_HoSoThanhVien_ThanhVien] FOREIGN KEY([id_ThanhVien])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[HoSoThanhVien] CHECK CONSTRAINT [FK_HoSoThanhVien_ThanhVien]
GO
/****** Object:  ForeignKey [FK_HopAm_CauTrucHopAm_CauTrucHopAm]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[HopAm_CauTrucHopAm]  WITH CHECK ADD  CONSTRAINT [FK_HopAm_CauTrucHopAm_CauTrucHopAm] FOREIGN KEY([id_CauTrucHopAm])
REFERENCES [dbo].[CauTrucHopAm] ([id])
GO
ALTER TABLE [dbo].[HopAm_CauTrucHopAm] CHECK CONSTRAINT [FK_HopAm_CauTrucHopAm_CauTrucHopAm]
GO
/****** Object:  ForeignKey [FK_HopAm_CauTrucHopAm_HopAm]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[HopAm_CauTrucHopAm]  WITH CHECK ADD  CONSTRAINT [FK_HopAm_CauTrucHopAm_HopAm] FOREIGN KEY([id_HopAm])
REFERENCES [dbo].[HopAm] ([id])
GO
ALTER TABLE [dbo].[HopAm_CauTrucHopAm] CHECK CONSTRAINT [FK_HopAm_CauTrucHopAm_HopAm]
GO
/****** Object:  ForeignKey [FK_HopAm_CauTrucHopAm_TapTin]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[HopAm_CauTrucHopAm]  WITH CHECK ADD  CONSTRAINT [FK_HopAm_CauTrucHopAm_TapTin] FOREIGN KEY([id_TapTinAnhHopAm])
REFERENCES [dbo].[TapTin] ([id])
GO
ALTER TABLE [dbo].[HopAm_CauTrucHopAm] CHECK CONSTRAINT [FK_HopAm_CauTrucHopAm_TapTin]
GO
/****** Object:  ForeignKey [FK_BinhLuan_BinhLuan]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_BinhLuan] FOREIGN KEY([id_BinhLuanCha])
REFERENCES [dbo].[BinhLuan] ([id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_BinhLuan]
GO
/****** Object:  ForeignKey [FK_BinhLuan_ThanhVien]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_ThanhVien] FOREIGN KEY([id_ThanhVienBinhLuan])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_ThanhVien]
GO
/****** Object:  ForeignKey [FK_CaSi_TapTinAnhDaiDien]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[CaSi]  WITH CHECK ADD  CONSTRAINT [FK_CaSi_TapTinAnhDaiDien] FOREIGN KEY([id_TapTinAnhDaiDien])
REFERENCES [dbo].[TapTin] ([id])
GO
ALTER TABLE [dbo].[CaSi] CHECK CONSTRAINT [FK_CaSi_TapTinAnhDaiDien]
GO
/****** Object:  ForeignKey [FK_CaSi_ThanhVienSua]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[CaSi]  WITH CHECK ADD  CONSTRAINT [FK_CaSi_ThanhVienSua] FOREIGN KEY([id_ThanhVienSua])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[CaSi] CHECK CONSTRAINT [FK_CaSi_ThanhVienSua]
GO
/****** Object:  ForeignKey [FK_ChuDe_ThanhVien]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[ChuDe]  WITH CHECK ADD  CONSTRAINT [FK_ChuDe_ThanhVien] FOREIGN KEY([id_ThanhVienTao])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[ChuDe] CHECK CONSTRAINT [FK_ChuDe_ThanhVien]
GO
/****** Object:  ForeignKey [FK_BaiHat_DoKho]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_DoKho] FOREIGN KEY([id_DoKho])
REFERENCES [dbo].[DoKho] ([id])
GO
ALTER TABLE [dbo].[BaiHat] CHECK CONSTRAINT [FK_BaiHat_DoKho]
GO
/****** Object:  ForeignKey [FK_BaiHat_ThanhVienChinhSua]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_ThanhVienChinhSua] FOREIGN KEY([id_ThanhVienChinhSua])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[BaiHat] CHECK CONSTRAINT [FK_BaiHat_ThanhVienChinhSua]
GO
/****** Object:  ForeignKey [FK_BaiHat_ThanhVienDuyet]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_ThanhVienDuyet] FOREIGN KEY([id_ThanhVienDuyet])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[BaiHat] CHECK CONSTRAINT [FK_BaiHat_ThanhVienDuyet]
GO
/****** Object:  ForeignKey [FK_BaiHat_ThanhVienUp]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_ThanhVienUp] FOREIGN KEY([id_ThanhVienUp])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[BaiHat] CHECK CONSTRAINT [FK_BaiHat_ThanhVienUp]
GO
/****** Object:  ForeignKey [FK_BaiHat_TheLoaiNhac]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_TheLoaiNhac] FOREIGN KEY([id_TheLoaiNhac])
REFERENCES [dbo].[TheLoaiNhac] ([id])
GO
ALTER TABLE [dbo].[BaiHat] CHECK CONSTRAINT [FK_BaiHat_TheLoaiNhac]
GO
/****** Object:  ForeignKey [FK_BaiViet_ChuDe]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_ChuDe] FOREIGN KEY([id_ChuDe])
REFERENCES [dbo].[ChuDe] ([id])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_ChuDe]
GO
/****** Object:  ForeignKey [FK_BaiViet_LoaiBaiViet]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_LoaiBaiViet] FOREIGN KEY([id_LoaiBaiViet])
REFERENCES [dbo].[LoaiBaiViet] ([id])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_LoaiBaiViet]
GO
/****** Object:  ForeignKey [FK_BaiViet_ThanhVienDuyet]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_ThanhVienDuyet] FOREIGN KEY([id_ThanhVienDuyet])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_ThanhVienDuyet]
GO
/****** Object:  ForeignKey [FK_BaiViet_ThanhVienViet]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_ThanhVienViet] FOREIGN KEY([id_ThanhVienViet])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_ThanhVienViet]
GO
/****** Object:  ForeignKey [FK_BinhLuan_YeuThich_BinhLuan]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BinhLuan_YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_YeuThich_BinhLuan] FOREIGN KEY([id_BinhLuan])
REFERENCES [dbo].[BinhLuan] ([id])
GO
ALTER TABLE [dbo].[BinhLuan_YeuThich] CHECK CONSTRAINT [FK_BinhLuan_YeuThich_BinhLuan]
GO
/****** Object:  ForeignKey [FK_BinhLuan_YeuThich_YeuThich]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BinhLuan_YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_YeuThich_YeuThich] FOREIGN KEY([id_YeuThich])
REFERENCES [dbo].[YeuThich] ([id])
GO
ALTER TABLE [dbo].[BinhLuan_YeuThich] CHECK CONSTRAINT [FK_BinhLuan_YeuThich_YeuThich]
GO
/****** Object:  ForeignKey [FK_PlayList_BaiHat_BaiHat]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[PlayList_BaiHat]  WITH CHECK ADD  CONSTRAINT [FK_PlayList_BaiHat_BaiHat] FOREIGN KEY([id_BaiHat])
REFERENCES [dbo].[BaiHat] ([id])
GO
ALTER TABLE [dbo].[PlayList_BaiHat] CHECK CONSTRAINT [FK_PlayList_BaiHat_BaiHat]
GO
/****** Object:  ForeignKey [FK_PlayList_BaiHat_PlayList]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[PlayList_BaiHat]  WITH CHECK ADD  CONSTRAINT [FK_PlayList_BaiHat_PlayList] FOREIGN KEY([id_Playlist])
REFERENCES [dbo].[PlayList] ([id])
GO
ALTER TABLE [dbo].[PlayList_BaiHat] CHECK CONSTRAINT [FK_PlayList_BaiHat_PlayList]
GO
/****** Object:  ForeignKey [FK_BaiViet_YeuThich_BaiViet]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiViet_YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_YeuThich_BaiViet] FOREIGN KEY([id_BaiViet])
REFERENCES [dbo].[BaiViet] ([id])
GO
ALTER TABLE [dbo].[BaiViet_YeuThich] CHECK CONSTRAINT [FK_BaiViet_YeuThich_BaiViet]
GO
/****** Object:  ForeignKey [FK_BaiViet_YeuThich_YeuThich]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiViet_YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_YeuThich_YeuThich] FOREIGN KEY([id_YeuThich])
REFERENCES [dbo].[YeuThich] ([id])
GO
ALTER TABLE [dbo].[BaiViet_YeuThich] CHECK CONSTRAINT [FK_BaiViet_YeuThich_YeuThich]
GO
/****** Object:  ForeignKey [FK_BaiViet_TapTin_BaiViet]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiViet_TapTin]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_TapTin_BaiViet] FOREIGN KEY([id_BaiViet])
REFERENCES [dbo].[BaiViet] ([id])
GO
ALTER TABLE [dbo].[BaiViet_TapTin] CHECK CONSTRAINT [FK_BaiViet_TapTin_BaiViet]
GO
/****** Object:  ForeignKey [FK_BaiViet_TapTin_TapTin]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiViet_TapTin]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_TapTin_TapTin] FOREIGN KEY([id_TapTin])
REFERENCES [dbo].[TapTin] ([id])
GO
ALTER TABLE [dbo].[BaiViet_TapTin] CHECK CONSTRAINT [FK_BaiViet_TapTin_TapTin]
GO
/****** Object:  ForeignKey [FK_BaiViet_Nhan_BaiViet]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiViet_Nhan]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_Nhan_BaiViet] FOREIGN KEY([id_BaiViet])
REFERENCES [dbo].[BaiViet] ([id])
GO
ALTER TABLE [dbo].[BaiViet_Nhan] CHECK CONSTRAINT [FK_BaiViet_Nhan_BaiViet]
GO
/****** Object:  ForeignKey [FK_BaiViet_Nhan_Nhan]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiViet_Nhan]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_Nhan_Nhan] FOREIGN KEY([id_Nhan])
REFERENCES [dbo].[Nhan] ([id])
GO
ALTER TABLE [dbo].[BaiViet_Nhan] CHECK CONSTRAINT [FK_BaiViet_Nhan_Nhan]
GO
/****** Object:  ForeignKey [FK_BaiViet_BinhLuan_BaiViet]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiViet_BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_BinhLuan_BaiViet] FOREIGN KEY([id_BaiViet])
REFERENCES [dbo].[BaiViet] ([id])
GO
ALTER TABLE [dbo].[BaiViet_BinhLuan] CHECK CONSTRAINT [FK_BaiViet_BinhLuan_BaiViet]
GO
/****** Object:  ForeignKey [FK_BaiViet_BinhLuan_BinhLuan]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiViet_BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_BinhLuan_BinhLuan] FOREIGN KEY([id_BinhLuan])
REFERENCES [dbo].[BinhLuan] ([id])
GO
ALTER TABLE [dbo].[BaiViet_BinhLuan] CHECK CONSTRAINT [FK_BaiViet_BinhLuan_BinhLuan]
GO
/****** Object:  ForeignKey [FK_BaiHat_YeuThich_BaiHat]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_YeuThich_BaiHat] FOREIGN KEY([id_BaiHat])
REFERENCES [dbo].[BaiHat] ([id])
GO
ALTER TABLE [dbo].[BaiHat_YeuThich] CHECK CONSTRAINT [FK_BaiHat_YeuThich_BaiHat]
GO
/****** Object:  ForeignKey [FK_BaiHat_YeuThich_YeuThich]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_YeuThich_YeuThich] FOREIGN KEY([id_YeuThich])
REFERENCES [dbo].[YeuThich] ([id])
GO
ALTER TABLE [dbo].[BaiHat_YeuThich] CHECK CONSTRAINT [FK_BaiHat_YeuThich_YeuThich]
GO
/****** Object:  ForeignKey [FK_BaiHat_TapTin_BaiHat]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_TapTin]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_TapTin_BaiHat] FOREIGN KEY([id_BaiHat])
REFERENCES [dbo].[BaiHat] ([id])
GO
ALTER TABLE [dbo].[BaiHat_TapTin] CHECK CONSTRAINT [FK_BaiHat_TapTin_BaiHat]
GO
/****** Object:  ForeignKey [FK_BaiHat_TapTin_TapTin]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_TapTin]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_TapTin_TapTin] FOREIGN KEY([id_TapTin])
REFERENCES [dbo].[TapTin] ([id])
GO
ALTER TABLE [dbo].[BaiHat_TapTin] CHECK CONSTRAINT [FK_BaiHat_TapTin_TapTin]
GO
/****** Object:  ForeignKey [FK_BaiHat_TacGia_BaiHat]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_TacGia]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_TacGia_BaiHat] FOREIGN KEY([id_BaiHat])
REFERENCES [dbo].[BaiHat] ([id])
GO
ALTER TABLE [dbo].[BaiHat_TacGia] CHECK CONSTRAINT [FK_BaiHat_TacGia_BaiHat]
GO
/****** Object:  ForeignKey [FK_BaiHat_TacGia_TacGia]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_TacGia]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_TacGia_TacGia] FOREIGN KEY([id_TacGia])
REFERENCES [dbo].[TacGia] ([id])
GO
ALTER TABLE [dbo].[BaiHat_TacGia] CHECK CONSTRAINT [FK_BaiHat_TacGia_TacGia]
GO
/****** Object:  ForeignKey [FK_BaiHat_Nhan_BaiHat]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_Nhan]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_Nhan_BaiHat] FOREIGN KEY([id_BaiHat])
REFERENCES [dbo].[BaiHat] ([id])
GO
ALTER TABLE [dbo].[BaiHat_Nhan] CHECK CONSTRAINT [FK_BaiHat_Nhan_BaiHat]
GO
/****** Object:  ForeignKey [FK_BaiHat_Nhan_Nhan]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_Nhan]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_Nhan_Nhan] FOREIGN KEY([id_Nhan])
REFERENCES [dbo].[Nhan] ([id])
GO
ALTER TABLE [dbo].[BaiHat_Nhan] CHECK CONSTRAINT [FK_BaiHat_Nhan_Nhan]
GO
/****** Object:  ForeignKey [FK_BaiHat_Dieu_BaiHat]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_Dieu]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_Dieu_BaiHat] FOREIGN KEY([id_BaiHat])
REFERENCES [dbo].[BaiHat] ([id])
GO
ALTER TABLE [dbo].[BaiHat_Dieu] CHECK CONSTRAINT [FK_BaiHat_Dieu_BaiHat]
GO
/****** Object:  ForeignKey [FK_BaiHat_Dieu_Dieu]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_Dieu]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_Dieu_Dieu] FOREIGN KEY([id_Dieu])
REFERENCES [dbo].[Dieu] ([id])
GO
ALTER TABLE [dbo].[BaiHat_Dieu] CHECK CONSTRAINT [FK_BaiHat_Dieu_Dieu]
GO
/****** Object:  ForeignKey [FK_BaiHat_Dieu_ThanhVien]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_Dieu]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_Dieu_ThanhVien] FOREIGN KEY([id_ThanhVienBinhChon])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[BaiHat_Dieu] CHECK CONSTRAINT [FK_BaiHat_Dieu_ThanhVien]
GO
/****** Object:  ForeignKey [FK_BaiHat_Diem_BaiHat]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_Diem]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_Diem_BaiHat] FOREIGN KEY([id_BaiHat])
REFERENCES [dbo].[BaiHat] ([id])
GO
ALTER TABLE [dbo].[BaiHat_Diem] CHECK CONSTRAINT [FK_BaiHat_Diem_BaiHat]
GO
/****** Object:  ForeignKey [FK_BaiHat_Diem_ThanhVien]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_Diem]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_Diem_ThanhVien] FOREIGN KEY([id_ThanhVienChoDiem])
REFERENCES [dbo].[ThanhVien] ([id])
GO
ALTER TABLE [dbo].[BaiHat_Diem] CHECK CONSTRAINT [FK_BaiHat_Diem_ThanhVien]
GO
/****** Object:  ForeignKey [FK_BaiHat_CaSi_BaiHat]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_CaSi]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_CaSi_BaiHat] FOREIGN KEY([id_BaiHat])
REFERENCES [dbo].[BaiHat] ([id])
GO
ALTER TABLE [dbo].[BaiHat_CaSi] CHECK CONSTRAINT [FK_BaiHat_CaSi_BaiHat]
GO
/****** Object:  ForeignKey [FK_BaiHat_CaSi_CaSi]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_CaSi]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_CaSi_CaSi] FOREIGN KEY([id_CaSi])
REFERENCES [dbo].[CaSi] ([id])
GO
ALTER TABLE [dbo].[BaiHat_CaSi] CHECK CONSTRAINT [FK_BaiHat_CaSi_CaSi]
GO
/****** Object:  ForeignKey [FK_BaiHat_BinhLuan_BaiHat]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_BinhLuan_BaiHat] FOREIGN KEY([id_BaiHat])
REFERENCES [dbo].[BaiHat] ([id])
GO
ALTER TABLE [dbo].[BaiHat_BinhLuan] CHECK CONSTRAINT [FK_BaiHat_BinhLuan_BaiHat]
GO
/****** Object:  ForeignKey [FK_BaiHat_BinhLuan_BinhLuan]    Script Date: 05/24/2017 22:01:53 ******/
ALTER TABLE [dbo].[BaiHat_BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_BinhLuan_BinhLuan] FOREIGN KEY([id_BinhLuan])
REFERENCES [dbo].[BinhLuan] ([id])
GO
ALTER TABLE [dbo].[BaiHat_BinhLuan] CHECK CONSTRAINT [FK_BaiHat_BinhLuan_BinhLuan]
GO
