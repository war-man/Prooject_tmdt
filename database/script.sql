create database QuanLyBanSach
go
USE [QuanLyBanSach]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02/01/2018 3:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[GioiTinh] [bit] NOT NULL DEFAULT ((0)),
	[HoTen] [nvarchar](max) NULL,
	[NgaySinh] [datetime2](7) NOT NULL DEFAULT ('0001-01-01T00:00:00.000'),
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[HoaDonId] [int] NOT NULL,
	[SachId] [int] NOT NULL,
	[NgayThem] [datetime2](7) NOT NULL,
	[SoLuong] [int] NOT NULL DEFAULT ((0)),
	[ThanhTien] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[HoaDonId] ASC,
	[SachId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](max) NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgayLapHoaDon] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[NgayGiao] [datetime2](7) NULL,
	[TongThanhTien] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LienLac]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienLac](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Ten] [nvarchar](50) NULL,
	[TieuDe] [nvarchar](200) NULL,
	[NgayGoi] [datetime2](7) NOT NULL DEFAULT ('0001-01-01T00:00:00.000'),
 CONSTRAINT [PK_LienLac] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanXet]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanXet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Sachid] [int] NULL,
	[TieuDe] [nvarchar](50) NULL,
	[UserId] [nvarchar](450) NULL,
	[NgayDang] [datetime2](7) NOT NULL DEFAULT ('0001-01-01T00:00:00.000'),
 CONSTRAINT [PK_NhanXet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaXuatBan] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ChieuDai] [int] NOT NULL,
	[ChieuRong] [int] NOT NULL,
	[ChuDeId] [int] NULL,
	[DanhMucId] [int] NULL,
	[DinhDang] [nvarchar](100) NULL,
	[DonGia] [int] NOT NULL,
	[HinhAnh] [nvarchar](200) NULL,
	[NhaXuatBanId] [int] NULL,
	[PhanTramGiamGia] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[SoTrang] [int] NOT NULL,
	[TacGiaId] [int] NULL,
	[TenSach] [nvarchar](255) NULL,
	[TomTat] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenTacGia] [nvarchar](max) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TraLoiLienLac]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraLoiLienLac](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[TieuDe] [nvarchar](max) NULL,
	[LienLacId] [int] NULL,
	[NgayTraLoi] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TraLoiLienLac] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 02/01/2018 3:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[SachID] [int] NOT NULL,
	[UserID] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Wishlist] PRIMARY KEY CLUSTERED 
(
	[SachID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171127033557_CreateDatabase', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171202060848_AddTableLienLac', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171202071224_AddTraLoiLienLacTable', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171202090109_UpdateLienLacVaTraLoiLienLac', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171202090401_UpdateTraLoiLienLac', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171204064813_DeleteSoDienThoaiColumnApplicationUsers', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171205150055_AddNgayDangToNhanXetTable', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171207015248_ThemDiaChiVaoHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171207033434_ThemCotGhiChuVaoHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171207083654_ThemTrangThaiVaoHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171208074838_ThemSoLuongVaoChiTietHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171208081545_HoaDonVaChiTietHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171222104117_ModifyHoaDonTable', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171224030924_ThemNgayGiaoVaoHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171225011729_ThemTongThanhTienVaoHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171225013637_ThemThanhTienVaoChiTietHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'743656ce-866f-4787-876d-8612682984e6', N'0532a92e-f555-49f1-87d0-6cebab4b5bce', N'User', N'USER')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'cab8670d-5e04-421a-81a1-c528bc4d09ac', N'73eb4126-e11a-4082-9444-611b8ab6f529', N'Admin', N'ADMIN')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'e58e42a2-b3c1-4204-ac3d-e1fcea8adf16', N'01c5add5-5158-4b97-9ade-e74f4a1cce0d', N'Giao Hàng', N'GIAO HÀNG')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'290a7fb2-d75b-4851-876f-df442b0459b9', N'743656ce-866f-4787-876d-8612682984e6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3c0e1ce2-9ee7-4df9-8ddc-fadd0c1d1f99', N'743656ce-866f-4787-876d-8612682984e6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8aa90b19-7aff-45bf-800e-b78b15d2c99d', N'cab8670d-5e04-421a-81a1-c528bc4d09ac')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'59585b43-4523-47af-a432-df831357c08b', N'e58e42a2-b3c1-4204-ac3d-e1fcea8adf16')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [DiaChi], [GioiTinh], [HoTen], [NgaySinh]) VALUES (N'290a7fb2-d75b-4851-876f-df442b0459b9', 0, N'051f4eec-ef24-48b1-98e1-ced6f7c68fa5', N'zeronguyen1995@trash-mail.com', 1, 1, NULL, N'ZERONGUYEN1995@TRASH-MAIL.COM', N'ZERONGUYEN1995@TRASH-MAIL.COM', N'AQAAAAEAACcQAAAAENMfi3f/rZBZLyIyEJiJs8H0tXHKej0Qasefk5UVISjAxc5Z28mnQ/QdwPllbE4mxA==', N'091234567744', 0, N'3fb0a31c-8c55-41e3-ba76-2d2e272f584d', 0, N'zeronguyen1995@trash-mail.com', N'3D'' Hưng Phú, P9, Q8', 1, N'zero Nguyen', CAST(N'1995-02-27 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [DiaChi], [GioiTinh], [HoTen], [NgaySinh]) VALUES (N'3c0e1ce2-9ee7-4df9-8ddc-fadd0c1d1f99', 0, N'21dd74ee-5883-4b5f-8481-02f6c9874380', N'myhanhlam@gmail.com', 1, 1, NULL, N'MYHANHLAM@GMAIL.COM', N'MYHANHLAM@GMAIL.COM', N'AQAAAAEAACcQAAAAEHZm5o9j7w7lUikBDUpQTR3EJrdZqsAxPySLUf1s5ID1GtijGF0M3DFr51dAvHqqAw==', N'0912345678', 0, N'd687f5c1-e04e-4f40-9488-7568c156c0b2', 0, N'myhanhlam@gmail.com', N'351 Lạc Long Quân, Phường 5, Hồ Chí Minh', 0, N'Lâm Mỹ Hạnh', CAST(N'1996-01-01 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [DiaChi], [GioiTinh], [HoTen], [NgaySinh]) VALUES (N'59585b43-4523-47af-a432-df831357c08b', 0, N'9e4953c9-8c81-4ba2-8ae4-ee7b499f3e9b', N'zeronguyen1995@gmail.com', 1, 1, NULL, N'ZERONGUYEN1995@GMAIL.COM', N'ZERONGUYEN1995@GMAIL.COM', N'AQAAAAEAACcQAAAAEA+t5tZds+f0KJ+bdwWCZBdindzTsReaas/diTOcpIvJh0xyKZqHiJg9TrpXwyMbqQ==', N'01243638286', 0, N'6905e606-7ae3-40d3-a13b-37d7a79bf26a', 0, N'zeronguyen1995@gmail.com', N'2D'' Hưng Phú, Phường 9, Quận 8', 1, N'Nguyễn Hoàng Minh', CAST(N'1995-02-27 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [DiaChi], [GioiTinh], [HoTen], [NgaySinh]) VALUES (N'8aa90b19-7aff-45bf-800e-b78b15d2c99d', 0, N'6bf98dba-eebb-4fa2-b613-3f5109841ab2', N'admin@nationalbookstore.vn', 1, 0, NULL, N'ADMIN@NATIONALBOOKSTORE.VN', N'ADMIN@NATIONALBOOKSTORE.VN', N'AQAAAAEAACcQAAAAEPRC59ehwloNS6JPieHFACh9ayf6k5LMJR5fsLFc0RUJN7N6+A8L7S9dciL1fd5RnA==', N'01243638286', 0, N'864233e4-d2af-42e0-a760-7595145fc09c', 0, N'admin@nationalbookstore.vn', N'280 An Dương Vương, Phường 4, Quận 10, TP.HCM', 1, N'Admin', CAST(N'1995-02-27 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [DiaChi], [GioiTinh], [HoTen], [NgaySinh]) VALUES (N'd6d30300-52fd-493b-8695-6852a08d05a7', 0, N'9496e216-9c0b-4c0a-bed7-43140d94ac4d', N'minhnh95@trash-mail.com', 1, 1, NULL, N'MINHNH95@TRASH-MAIL.COM', N'MINHNH95@TRASH-MAIL.COM', N'AQAAAAEAACcQAAAAEGjzs+Ge8a1e1xB2oUMGfTysaiirNEALVCfhYgZt1+9cm7tekAld6sMN+cByYZqpww==', N'0913155636', 0, N'1c27f8c8-83b7-42cc-99b4-c83aca30a017', 0, N'minhnh95@trash-mail.com', N'280 An dương vương p9, q8, tphcm', 0, N'Người lạ', CAST(N'2017-12-24 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SachId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (1, 3, CAST(N'2017-12-25 08:39:11.7351643' AS DateTime2), 3, 291000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SachId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (2, 3, CAST(N'2017-10-30 16:39:14.5282420' AS DateTime2), 2, 194000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SachId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (2, 4, CAST(N'2017-10-30 16:39:14.5285819' AS DateTime2), 1, 127000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SachId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (2, 25, CAST(N'2017-10-30 16:39:14.5285847' AS DateTime2), 6, 912000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SachId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (3, 5, CAST(N'2016-11-30 16:39:57.1722319' AS DateTime2), 3, 471000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SachId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (4, 8, CAST(N'2017-12-30 16:40:30.1749309' AS DateTime2), 3, 399000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SachId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (4, 24, CAST(N'2017-12-30 16:40:30.1749356' AS DateTime2), 3, 276000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SachId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (5, 24, CAST(N'2017-12-31 15:54:01.3275111' AS DateTime2), 5, 460000)
SET IDENTITY_INSERT [dbo].[ChuDe] ON 

INSERT [dbo].[ChuDe] ([Id], [TenChuDe]) VALUES (1, N'Sách ngoại ngữ')
INSERT [dbo].[ChuDe] ([Id], [TenChuDe]) VALUES (2, N'Sách kinh tế')
INSERT [dbo].[ChuDe] ([Id], [TenChuDe]) VALUES (3, N'Sách văn học')
INSERT [dbo].[ChuDe] ([Id], [TenChuDe]) VALUES (4, N'Sách đời sống')
INSERT [dbo].[ChuDe] ([Id], [TenChuDe]) VALUES (5, N'Sách thiếu nhi')
INSERT [dbo].[ChuDe] ([Id], [TenChuDe]) VALUES (6, N'Sách tin học')
INSERT [dbo].[ChuDe] ([Id], [TenChuDe]) VALUES (7, N'Sách phát triển bản thân')
SET IDENTITY_INSERT [dbo].[ChuDe] OFF
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc]) VALUES (1, N'Tiếng Anh')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc]) VALUES (2, N'Tiếng Nhật')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc]) VALUES (3, N'Marketing')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc]) VALUES (4, N'Ngoại thương')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc]) VALUES (5, N'Thơ ca')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc]) VALUES (6, N'Truyện ngắn')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc]) VALUES (7, N'Cây cá cảnh')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc]) VALUES (8, N'Sinh lý học')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc]) VALUES (9, N'Cơ sở dữ liệu')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc]) VALUES (10, N'Hệ điều hành')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc]) VALUES (11, N'Khoa học tự nhiên')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc]) VALUES (12, N'Khoa học xã hội')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc]) VALUES (13, N'Nhà khoa học')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc]) VALUES (14, N'Hồi ký')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [TongThanhTien]) VALUES (1, CAST(N'2017-12-25 08:39:11.7354955' AS DateTime2), N'290a7fb2-d75b-4851-876f-df442b0459b9', N' 351A - Lạc Long Quân, P.5, Q.11, Ho Chi Minh', NULL, NULL, 291000)
INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [TongThanhTien]) VALUES (2, CAST(N'2017-10-30 16:39:14.5285851' AS DateTime2), N'290a7fb2-d75b-4851-876f-df442b0459b9', N'3D'' Hưng Phú, P9, Q8', NULL, NULL, 1233000)
INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [TongThanhTien]) VALUES (3, CAST(N'2016-11-30 16:39:57.1722441' AS DateTime2), N'290a7fb2-d75b-4851-876f-df442b0459b9', N'3D'' Hưng Phú, P9, Q8', NULL, NULL, 471000)
INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [TongThanhTien]) VALUES (4, CAST(N'2017-11-30 16:40:30.1749364' AS DateTime2), N'290a7fb2-d75b-4851-876f-df442b0459b9', N'3D'' Hưng Phú, P9, Q8', NULL, CAST(N'2018-01-01 21:31:23.6775370' AS DateTime2), 675000)
INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [TongThanhTien]) VALUES (5, CAST(N'2017-12-31 15:54:01.3295236' AS DateTime2), N'290a7fb2-d75b-4851-876f-df442b0459b9', N'3D'' Hưng Phú, P9, Q8', NULL, NULL, 460000)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[LienLac] ON 

INSERT [dbo].[LienLac] ([Id], [Email], [NoiDung], [Ten], [TieuDe], [NgayGoi]) VALUES (2, N'zeronguyen1995@gmail.com', N'<p><strong>Cửa h&agrave;ng th&acirc;n thiện</strong></p>

<p><em>Trang web độc đ&aacute;o</em></p>

<p><u>Nh&acirc;n vi&ecirc;n nhiệt t&igrave;nh</u></p>

<p>&nbsp;</p>
', N'Nguyễn Hoàng Minh', N'Thư liên hệ', CAST(N'2017-12-02 16:07:27.2139579' AS DateTime2))
SET IDENTITY_INSERT [dbo].[LienLac] OFF
SET IDENTITY_INSERT [dbo].[NhanXet] ON 

INSERT [dbo].[NhanXet] ([Id], [NoiDung], [Sachid], [TieuDe], [UserId], [NgayDang]) VALUES (4, N'<p>Đ&acirc;y l&agrave; s&aacute;ch tiếng anh dễ học nhất v&agrave; rất gần gũi với c&aacute;c bạn trẻ</p>
', 3, N'test nhận xét', N'59585b43-4523-47af-a432-df831357c08b', CAST(N'2017-12-06 10:19:19.3915576' AS DateTime2))
INSERT [dbo].[NhanXet] ([Id], [NoiDung], [Sachid], [TieuDe], [UserId], [NgayDang]) VALUES (5, N'<p>đ&acirc;y l&agrave; s&aacute;ch hay nhất t&ocirc;i từng đọc</p>
', 13, N'sách hay', N'290a7fb2-d75b-4851-876f-df442b0459b9', CAST(N'2017-12-23 21:04:02.4586763' AS DateTime2))
INSERT [dbo].[NhanXet] ([Id], [NoiDung], [Sachid], [TieuDe], [UserId], [NgayDang]) VALUES (6, N'<p>s&aacute;ch rất hay</p>
', 4, NULL, N'290a7fb2-d75b-4851-876f-df442b0459b9', CAST(N'2017-12-23 21:31:10.6399942' AS DateTime2))
INSERT [dbo].[NhanXet] ([Id], [NoiDung], [Sachid], [TieuDe], [UserId], [NgayDang]) VALUES (7, N'<p>s&aacute;ch n&agrave;y rất hay</p>
', 3, NULL, N'290a7fb2-d75b-4851-876f-df442b0459b9', CAST(N'2017-12-23 21:34:46.3833191' AS DateTime2))
SET IDENTITY_INSERT [dbo].[NhanXet] OFF
SET IDENTITY_INSERT [dbo].[NhaXuatBan] ON 

INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (1, N'Nhà Xuất Bản Trẻ')
INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (2, N'NXB Thống kê')
INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (3, N'Kim Đồng')
INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (4, N'Đại Học Quốc Gia')
INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (5, N'Văn Hóa Nghệ Thuật')
INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (6, N'Văn hóa')
INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (7, N'NXB Lao động - Xã hội')
INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (8, N'Khoa Học & Kỹ Thuật')
INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (9, N'Thanh Niên')
INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (10, N'NXB Tài Chính')
INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (11, N'NXB Phụ Nữ')
INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (12, N'NXB Hồng Đức ')
INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (13, N'NXB Phương Đông')
INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (14, N'NXB Thời Đại')
INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (15, N'NXB Tổng hợp TP.HCM')
INSERT [dbo].[NhaXuatBan] ([Id], [TenNhaXuatBan]) VALUES (16, N'NXB ĐHSP Tp.HCM')
SET IDENTITY_INSERT [dbo].[NhaXuatBan] OFF
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (3, 15, 20, 1, 1, N'Bìa mềm', 97000, N'279374_hot-english-tieng-anh-hoc-de-dung-ngay-kem-1-cd.jpg', 1, 10, 200, 0, 38, N'Hot English: Tiếng Anh - Học Dễ, Dùng Ngay (Kèm 1 CD)', N'<p>Với 36 b&agrave;i học đề cập đến nhiều chủ đề quen thuộc như học h&agrave;nh, c&ocirc;ng việc, t&igrave;nh y&ecirc;u, tr&ograve; chuyện trực tuyến&hellip; c&ugrave;ng những h&igrave;nh minh họa vui nhộn, s&aacute;ch gi&uacute;p bạn dễ d&agrave;ng ghi nhớ c&aacute;c mẫu c&acirc;u v&agrave; c&oacute; thể vận dụng ngay khi giao tiếp trong nhiều t&igrave;nh huống. Đ&acirc;y l&agrave; c&ocirc;ng cụ v&ocirc; c&ugrave;ng hữu &iacute;ch cho những ai muốn ph&aacute;t triển kỹ năng giao tiếp bằng tiếng Anh trong cuộc sống thường nhật.</p>
')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (4, 15, 20, 1, 1, N'bìa mềm', 127000, N'279372_24-hour-english-tieng-anh-24-gio-kem-1-cd.jpg', 3, 0, 200, 100, 36, N'24-hour English - Tiếng Anh 24 Giờ (Kèm 1 CD)', N'24-hour English - Tiếng Anh 24 Giờ (Kèm 1 CD) Thông tin tác giả

<p>Nhiều người học tiếng Anh hàng chục năm mà vẫn không nói được câu nào. Nguyên nhân là do họ tập trung vào những thứ quá cao siêu, ít được sử dụng trong thực tế cuộc sống. Họ học chủ yếu là cho mục đích thi cử. Nhưng giờ đây thế giới không ngừng thay đổi. Nếu đạt điểm cao trong các kỳ thi tiếng Anh mà không thể giao tiếp bằng ngôn ngữ này, bạn sẽ khó đạt được những kết quả mỹ mãn trong công việc cũng như trong cuộc sống.</p>
<p>Muốn nói tiếng Anh tốt, bạn hãy bắt đầu từ những chủ đề gần gũi với cuộc sống hằng ngày. Cuốn 24-hour English – Tiếng Anh 24 giờ sẽ cung cấp cho bạn từ vựng, những câu thoại, bài hội thoại xoay quanh các chủ đề như thế để bạn có thể sử dụng từ lúc thức dậy vào buổi sáng cho đến khi đi ngủ vào buổi tối. Đây là quyển sách vô cùng hữu ích cho những ai muốn phát triển kỹ năng giao tiếp bằng tiếng Anh trong cuộc sống thường nhật.</p>
<p>Khi học với sách này, bạn đừng đọc quá nhanh mà thỉnh thoảng nên dừng lại. Mỗi lần dừng lại, bạn hãy ngẫm nghĩ, tưởng tượng và luyện phát âm càng nhiều càng tốt. Điều đó sẽ giúp bạn khắc phục được tình trạng nêu trên.</p>
<p>Chúc bạn tìm thấy niềm vui trong quá trình học và thành công trong việc nâng cao kỹ năng giao tiếp bằng tiếng Anh.</p>
')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (5, 15, 20, 1, 1, N'bìa mềm', 157000, N'243668_tieng-anh-cho-moi-nguoi-english-for-everyone-practice-book-level-2-beginner-kem.jpg', 8, 0, 200, 100, 35, N'Tiếng anh cho mọi người english for everyone level 2 beginner', N'Quyển sách này cung cấp phần thực hành mở rộng về từ vựng và ngữ pháp được giới thiệu trong sách bài học  Level 4 Advanced  thông qua hàng trăm bài tập, hoạt động và ngữ liệu nghe kèm theo.

Những đặc điểm của giáo trình:
<ul>
<li>Các bài tập đơn giản giúp bạn thực hành những kỹ năng ngôn ngữ nền tảng: viết, đọc, nói và nghe.</li>
<li>Các môđun bỏ túi giúp bạn tự học theo tiến độ cá nhân.</li>
<li>Đồ họa sinh động cung cấp ngữ cảnh mang tính trực quan, giúp bạn thực hành các chủ điểm ngữ pháp mới học một cách tự tin.</li>
<li>Các ví dụ có audio kèm theo giúp bạn phát triển kỹ năng nghe và nói.</li>
<li>Giáo trình được chia thành bốn cấp độ, mỗi cấp độ gồm một sách bài học và một sách bài tập.</li>
</ul>
<strong>Level 4 Advanced<strong> dành cho những học viên đã có năng lực sử dụng tiếng Anh ở trình độ trung cấp, sẵn sàng tiếp thu kiến thức để đạt đến cấp độ cao hơn về từ vựng, ngữ pháp và sự thông thạo ngôn ngữ. Chương trình học được thiết kế theo chuẩn Khung tham chiếu năng lực ngoại ngữ chung Châu Âu (CEFR). ')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (6, 15, 20, 1, 2, N'Bìa mềm', 191000, N'8030_tu-dien-viet-nhat-tren-45000-tu.jpg', 14, 0, 200, 100, 22, N'Từ Điển Nhật Việt - Việt Nhật', N'Đây là cuốn từ điển gồm 2 phần:
<ul>
<li>Phần 1: Nhật - Việt</li>
<li>Phần 2: Việt - Nhật</li>
</ul>
<p>Được biên soạn đầy đủ, cập nhật và mang tính chính xác cao.</p>
<p>Với cách trình bày khoa học và giải thích rõ rãng, cuốn sách sẽ đáp ứng được yêu cầu của tất cả những người đang học và sử dụng tiếng Nhật.</p>')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (7, 15, 20, 1, 2, N'Bìa mềm', 174000, N'202514_tu-dien-nhat-viet-thong-dung.jpg', 12, 0, 200, 100, 17, N'Từ Điển Nhật - Việt Thông Dụng', N'<p>Bao gồm các từ vựng mới và thông dụng nhất.</p>

<p>Các ví dụ sát thực cho người học.</p>

<p>Tiện lợi cho các bạn học sinh, sinh viên.</p>')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (8, 15, 20, 1, 1, N'Bìa mềm', 133000, N'200161_tu-dien-nhat-viet-thong-dung.jpg', 3, 0, 200, 100, 10, N'Từ Điển Nhật - Việt Thông Dụng', N'Từ Điển Nhật - Việt Thông Dụng bao gồm các từ vựng mới và thông dụng nhất. Các ví dụ sát thực cho người học. Tiện lợi cho các học sinh, sinh viên.')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (9, 15, 20, 2, 3, N'Bìa mềm', 124000, N'278751_tiep-thi-40-dich-chuyen-tu-truyen-thong-sang-cong-nghe-so.jpg', 1, 0, 200, 100, 4, N'Tiếp Thị 4.0 - Dịch Chuyển Từ Truyền Thống Sang Công Nghệ Số', N'<p>Quyển cẩm nang vô cùng cần thiết cho những người làm tiếp thị trong thời đại số. Được viết bởi cha đẻ ngành tiếp thị hiện đại, cùng hai đồng tác giả là lãnh đạo của công ty MarkPlus, quyển sách sẽ giúp bạn lèo lái thế giới không ngừng kết nối và khách hàng không ngừng thay đổi để có được nhiều khách hàng hơn, xây dựng thương hiệu hiệu quả hơn, và cuối cùng kinh doanh thành công hơn. Ngày nay khách hàng không có nhiều thời gian và sự chú ý dành cho thương hiệu của bạn – và họ còn bị bao quanh bởi vô số các chọn lựa. Bạn phải tách khỏi đám đông, phải nổi trội, để gây sự chú ý và truyền đạt thông điệp mà khách hàng muốn nghe. “Tiếp thị 4.0” tận dụng tâm lý thay đổi của khách hàng để tiếp cận nhiều khách hàng hơn và khiến họ gắn bó với thương hiệu hơn bao giờ hết.  Quyển sách cho bạn kiến thức sâu rộng để bạn thành công trong thế giới tiếp thị ngày nay: Khám phá những nguyên tắc mới trong tiếp thị; Nổi bật và tạo ra những khoảnh khắc WOW; Xây dựng nền tảng khách hàng trung thành và có tiếng nói; và Biết ai sẽ là người định hình tương lai của các chọn lựa của khách hàng…</p>
<p>Quyển sách gồm ba phần, với các nội dung:</p>
<p>"Phần đầu tiên của cuốn sách là kết quả quan sát của chúng tôi về thế giới chúng ta đang sinh sống. Chúng tôi bắt đầu bằng cách bám sát ba thay đổi lớn đang định hình thế giới chúng ta. Chúng tôi đi vào chi tiết hơn để khám phá xem khả năng kết nối đã thay đổi cơ bản cuộc sống của con người như thế nào. Không chỉ dừng lại ở đó, chúng tôi đi sâu hơn vào một số nhóm tiểu văn hóa chính trong kỷ nguyên số - đó là giới trẻ, phụ nữ và công dân mạng, hứa hẹn sẽ là nền tảng cho một thế hệ khách hàng mới.</p>
<p>Phần thứ hai cũng là phần trọng tâm của cuốn sách, sẽ thảo luận về cách người làm tiếp thị có thể gia tăng hiệu suất bằng cách tìm hiểu về hành trình khách hàng trong kỷ nguyên số. Phần này sẽ giới thiệu một hệ thống mới các chỉ số tiếp thị và cách nhìn hoàn toàn mới về  cách đánh giá hoạt động tiếp thị của chúng ta. Chúng tôi cũng đào sâu hơn vào một số ngành quan trọng và cách áp dụng những ý tưởng từ “Tiếp thị 4.0” vào các ngành này.</p>
<p>Cuối cùng, phần thứ ba miêu tả chi tiết về các chiến thuật chủ đạo của “Tiếp thị 4.0”. Chúng tôi bắt đầu với hoạt động tiếp thị lấy con người làm trung tâm với mục tiêu nhân cách hóa thương hiệu với các giá trị của con người. Sau đó, chúng tôi tiếp tục thảo luận chuyên sâu về tiếp thị nội dung nhằm tạo ra thảo luận giữa các khách hàng. Ngoài ra, chúng tôi còn mô tả những cách giúp người làm tiếp thị có thể áp dụng phương thức tiếp thị tích hợp đa kênh nhằm tăng doanh thu cao hơn. Sau cùng, chúng tôi đào sâu vào các khái niệm về sự gắn kết với khách hàng ở kỷ nguyên số."</p>')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (10, 15, 20, 2, 3, N'Bìa mềm', 97000, N'136076_quan-tri-marketing-tai-ban-12132013.jpg', 7, 10, 200, 100, 18, N'quản trị marketing - tái bản', N'
<p>Quản trị Marketing có những nội dung chủ yếu sau:</p>
<p>Định hướng quản trị:</p>
<p>Sách tập trung vào những quyết định chủ yếu mà những người quản trị như marketing và ban lãnh đạo tối cao phải thông qua nhằm phối hợp hài hòa những mục tiêu, sở trường cốt lõi và các nguồn tài nguyên của tổ chức với những nhu cầu và cơ hội trên thị trường.</p>
<p>Phương pháp phân tích:</p>
<p>Cuốn sách này trình bày một khuôn mẫu để phân tích những vấn đề thường gặp trong quản trị marketing. Các tình huống thực tế của công ty được sử dụng để minh họa cho những nguyên tắc, chiến lược và thực tiễn marketing.</p>
<p>Triển vọng cơ bản của các bộ môn:</p>
<p>Phác họa sơ lược các bộ môn kinh tế, khoa học hành vi, lý thuyết quản trị và toán học. Kinh tế học cung cấp những khái niệm cơ bản và công cụ để tìm kiếm những kết quả tối ưu trong việc sử dụng các nguồn tài nguyên khan hiếm. Khoa học hành vi cung cấp khái niệm cơ bản và công cụ để hiểu được hành vi mua sắm của khách hàng và cơ quan. Lý thuyết quản trị cung cấp một khuôn mẫu để phát hiện ra những vấn đề đang được đặt ra trước những người quản trị và những phương châm để giải quyết thỏa đáng chúng. Toán học cung cấp một ngôn ngữ chính xác để biểu diễn những mối quan hệ giữa các biến chủ yếu.</p>
<p>Phương pháp tổng hợp:</p>
<p>Cuốn sách này vận dụng những tư duy marketing vào sản phẩm, dịch vụ, thị trường, các tổ chức lợi nhuận và phi lợi nhuận, các công ty trong nước và nước ngoài, các công ty lớn và nhỏ, các doanh nghiệp sản xuất và trung gian, các ngành công nghiệp kỹ thuật cao và thấp.</p>
<p>Những kiến thức hoàn chỉnh và cân đối:</p>
<p>Đề cập tất cả những đề tài mà một người quản trị marketing am hiểu cần phải biết. Nó nêu lên những vấn đề chính đang đặt ra trước marketing chiến lược, chiến thuật và hành chính.<p>')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (11, 15, 20, 2, 3, N'Bìa mềm', 64000, N'48347_khac-biet-hay-la-chet.jpg', 3, 0, 200, 100, 16, N'Khác Biệt Hay Là Chết (Tái Bản 2016)', N'<p>Khác biệt hay là chết được đánh giá là một trong những cuốn sách marketing hay nhất của mọi thời đại. Chính qua quyển sách này, khác biệt hóa (differentiate) đã trở thành một "từ ngữ lớn" trong thế giới kinh doanh ngày nay.</p>
<p>Xét thấy tầm quan trọng của việc tạo sự khác biệt, hai tác giả Jack Trout và Steve Rivkin đã cập nhật và bổ sung nhiều ý tưởng và nội dung mới váo ấn bản lần thứ hai này.</p>
<p>Đó là sự tổng hợp thêm 18 ví dụ thực tế, sống động và ba chương hoàn toàn mới. Một chương giới thiệu các nghiên cứu về dòng sản phẩm. Một chương trình bày sự khác biệt qua những tin đồn truyền miệng và chương còn lại nhấn mạnh rằng bạn có thể khác biệt hóa mọi thứ trong mọi lĩnh vực kinh doanh của bạn.</p>
<p>Như rất nhiều nhà marketing đã đọc và giữ lại cuốn Khác biệt hay là chết đã làm kim chỉ nam trong suốt quá trình hoạt động của họ, chắc chắn bạn sẽ tìm thấy rất nhiều điều thú vị trong ấn bản mới này.</p>')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (12, 15, 20, 2, 4, N'Bìa mềm', 163000, N'33894_tax-thue-bieu-thue-xuat-khau-nhap-khau-va-thue-gtgt-hang-nhap-khau.jpg', 10, 0, 200, 100, 37, N'Tax - Thuế - Biểu Thuế Xuất Khẩu - Nhập Khẩu Và Thuế GTGT Hàng Nhập Khẩu', N'<p>Biểu Thuế Xuất Khẩu - Nhập Khẩu Và Thuế GTGT Hàng Nhập Khẩu là văn bản mới nhất tính đến tháng 6/2010 để tham khảo và sử dụng cho cán bộ thuế, cán bộ Hải quan và tổ chức cá nhân có hàng hóa được phép xuất khẩu, nhập khẩu qua cửa khẩu biên giới Việt Nam. </p>
<p>Cuốn sách được biên soạn một cách khoa học, tiện lợi và chính xác, tuân thủ hoàn toàn theo nguyên tắc phân loại hồ sơ của WCO, tiêu chuẩn danh mục AHTN phiên bản 2007/1, phù hợp với yêu cầu quản lý và thực hiện các nghiệp vụ của cán bộ thuế, cán bộ hải quan và doanh nghiệp kinh doanh xuất nhập khẩu (XNK) trong phạm vi cả nước.</p> ')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (13, 15, 20, 2, 4, N'Bìa mềm', 129000, N'32502_tai-dinh-vi-tiep-thi-trong-thoi-dai-cua-canh-tranh-thay-doi-va-khung-hoang.jpg', 8, 0, 200, 100, 23, N'Tái Định Vị - Tiếp Thị Trong Thời Đại Của Cạnh Tranh, Thay Đổi Và Khủng Hoảng', N'<p>
Vậy là bạn làm chủ được nghệ thuật tiếp thị. Bạn đã định vị cho công ty của mình, đặt thương hiệu cho sảm phẩm của mình, và nhắm tới khách hàng của mình. Nhưng tiếc thay, trong nền kinh tế ngày nay, chừng vẫn chưa đủ. Bạn cần tái định vị.
</p><p>
Đây là một cách tiếp cận xuất sắc về tâm lý người tiêu dùng và về đặc tính của doanh nghiệp, cuốn cẩm nang này chứa nhiều điều mới lạ và đang làm thay đổi cuộc đua tài sẽ chỉ cho bạn cách để...
</p><p>
- Suy nghĩ lại cách tiếp thị hiện nay của bạn
</p><p>
- Tập trung lại cách chọn nhãn hiệu cho khách hàng
</p><p>
- Đánh giá lại sức mạnh của công ty của bạn
</p><p>
- Định vị lại đặc tính doanh nghiệp của bạn
</p><p>
- Nắm lại lợi thế cạnh tranh của bạn
</p>')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (14, 15, 20, 2, 4, N'Bìa mềm', 102000, N'46279_nguyen-ly-tiep-thi.jpg', 9, 0, 200, 100, 41, N'Nguyên Lý Tiếp Thị', N'"Tiếp Thị" là hoạt động lôi kéo khách hàng, "lôi kéo con người": Không một khía cạnh tinh tế nào về tâm lý, hành vi của khách hàng (con người) mà không được khảo sát đầy đủ. Đó cũng là một lý do khiến cho cuốn sách "Những Nguyên Lý Tiếp Thị" của hai giáo sư Philip Kotler và Gary Armstrong trở thành một dịch phẩm đầy hứng thú; nó không chỉ có thể áp dụng trong phạm vi doanh nghiệp mà còn mở rộng tác dụng đến với tất cả những người đọc nó, dù ở bất kỳ cương vị nào. Từ hai thập niên nay sách được coi là tác phẩm giáo khoa kinh điển tiêu biểu nhất của khoa tiếp thị, mà có người còn gọi là "Thị trường học"...')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (15, 15, 20, 3, 5, N'Bìa mềm', 120000, N'476_lam-chu-microsoft-windows-2000-server-tap-1.jpg', 14, 0, 200, 100, 24, N'làm chủ microsoft-windows 2000 server tập 1', N'<p>Kế thừa những ưu điểm vượt trội và sự thành công của Windows Server 2003 cùng những phiên bản Windows trước đó, hãng Microsoft tiếp tục cho ra đời một phiên bản hệ điều hành dành cho máy chủ mới, Windows Server 2008. Phiên bản này đem đến cho người dùng sự nhanh chóng trong cài đặt; sự tiện lợi trong quản trị hệ thống, tương tác với các thành phần và dịch vụ vì được tập trung vài một công cụ duy nhất – Server Manager, những cải tiến đáng chú ý trên Windows Firewall; công nghệ ảo hoá…</p><p>Windows Server 2008 còn cung cấp cho người sử dụng cách thức cài đặt Server Core, bao gồm những thành phần cơ bản nhất của Windows Server và giao diện dòng lệnh. Với kiểu cài đặt này, giao diện đồ hoạ quen thuộc của Windows cùng những dịch vụ không cần thiết sẽ không được cài đặt lên hệ thống. Nhờ đó nâng cao độ bảo mật và nâng cấp hệ thống.</p>')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (16, 15, 20, 3, 5, N'Bìa mềm', 106000, N'278877_truyen-kieu.jpg', 9, 0, 200, 100, 20, N'Truyện Kiều', N'<strong>NGUYỄN DU (1765 – 1820)</strong>

<p>Ông có tự là Tố Như, hiệu là Thanh Hiên. Cha ông là Xuân Quận công Nguyễn Nghiễm, làm tới tể tướng thời Lê–Trịnh, quê gốc ở làng Tiên Điền, Nghi Xuân, Hà Tĩnh. Ông trải qua thời niên thiếu ở kinh thành Thăng Long hoa lệ.</p>

<p>Nguyễn Du bước vào đời trong buổi đất nước gặp thời biến động: nhà Lê sụp, Nguyễn và Tây Sơn giao tranh, quân Thanh ngấp nghé ngoài bờ cõi. Dòng họ của ông suy sút, ông thì trải qua mười năm gió bụi. Khi Nguyễn Ánh diệt Tây Sơn, ông ra làm quan cho nhà Nguyễn, sau được cử đi sứ nhà Thanh năm 48 tuổi (1813). Nhiều nhà phân tích văn học cho rằng Truyện Kiều chính là tiếng lòng của Nguyễn Du khóc than cho mối cô trung của mình với nhà Lê, cho thân phận bất đắc chí, nỗi đau nhân tình thế thái giữa buổi loạn ly.</p>')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (17, 15, 20, 3, 5, N'Bìa mềm', 69000, N'238977_ve-dau-nhung-vet-thuong.jpg', 6, 0, 200, 100, 6, N'Về Đâu Những Vết Thương', N'Về đâu những vết thương không đơn thuần là cuốn thơ thứ 5 của Nguyễn Phong Việt, mà đó còn là món quà dành cho những độc giả đã yêu quý thơ anh suốt 5 năm qua. Phong Việt chia sẻ: “Để có thể thực hiện lời hứa mỗi năm ra mắt 1 cuốn thơ, đương nhiên tôi gặp không ít áp lực. Bởi vì việc sáng tác chỉ là một trong những công việc mà tôi đang làm. Hơn nữa, tôi không phải là người viết chuyên nghiệp để có thể mỗi ngày lại ngồi vào bàn viết, viết liên tục. Nhưng trên tất cả, đó là niềm vui lớn của tôi, nhất là khi thấy bạn đọc chờ đợi và lựa chọn cuốn thơ của mình làm quà tặng cho chính bản thân mình hay những người thân yêu vào dịp Giáng sinh hàng năm. Chỉ với ý nghĩa ấy thôi thì chuyện áp lực hay đôi khi là những mệt mỏi trên trang viết chỉ còn là chuyện vặt vãnh…')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (18, 15, 20, 3, 6, N'Bìa mềm', 148000, N'203534_con-cho-nho-mang-gio-hoa-hong-bia-mem.jpg', 2, 0, 200, 100, 27, N'Con Chó Nhỏ Mang Giỏ Hoa Hồng (Bìa Mềm)', N'“Con chó nhỏ mang giỏ hoa hồng” là tác phẩm mới nhất của nhà văn chuyên viết cho thanh thiếu niên Nguyễn Nhật Ánh, nối tiếp sau Bảy bước tới mùa hè, Tôi thấy hoa vàng trên cỏ xanh… gây sóng gió thị trường sách năm 2015.')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (19, 15, 20, 3, 6, N'Bìa mềm', 143000, N'194692_toi-la-beto-tai-ban-2015.jpg', 2, 0, 200, 100, 12, N'Tôi Là Bêtô (Tái Bản 2015)', N'Truyện Tôi là Bêtô là sáng tác mới nhất của nhà văn Nguyễn Nhật Ánh được viết theo phong cách hoàn toàn khác so với những tác phẩm trước đây của ông. Những mẩu chuyện, hay những phát hiện của chú chó Bêtô đầy thú vị, vừa hài hước, vừa chiêm nghiệm một cách nhẹ nhàng “vô vàn những điều thú vị mà cuộc sống cố tình giấu kín ở ngóc ngách nào đó trong tâm hồn của mỗi chúng ta”.

Trong thiên truyện này, thế giới được nhìn một cách trong trẻo nhưng lồng trong đó không thiếu những ý tứ thâm trầm, khiến người đọc phải ngẫm nghĩ. Đây chắc chắn là tác phẩm không chỉ dành cho trẻ em.')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (20, 15, 20, 3, 6, N'Bìa mềm', 147000, N'220909_kinh-van-hoa-phien-ban-18-tap-tap-7.jpg', 3, 0, 200, 100, 3, N'kính vạn hoa (phiên bản 18 tập)', N'"Những tiếng cười sáng khoái tràn ngập trong Kính vạn hoa. Nguyễn Nhật Ánh có khả năng nhìn thấy và nắm bắt rất nhanh những tình huống đầy kịch tính trong triền miên những sinh hoạt hàng hàng ngày của trẻ thơ. Kết thúc mỗi tập sách bao giừo cũng lắng đọng những tâm tư và khát vọng mà tác giả muốn gửi tới bạn đọc. Nguyễn Nhật Ánh nhắn nhủ các em một cách thân tình bằng chính những câu chuyện mà các em đã trải qua hoặc chứng kiến trong cuộc sống hàng ngày. Đó là thái độ kính trọng người già (Người bạn lạ lùng); trân trọng ước mơ của người khác (Những con gấu bông); niềm yêu thương những người nghèo khổ (Bí mật kẻ trộm), và cảm thông với những số phận bị tật nguyền (Thằng thỏ đế)..v.v Rõ ràng, mỗi câu chuyện của anh là một bài học nhưng những bài học ấy không bị khô cứng, người đọc không hề có cảm giác bị giáo dục, bị dạy dỗ, mà trái lại càng thấy gần gũi, thân thương...."

 (Nhà nghiên cứu văn học Lã Thị Bắc Lý) ')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (21, 15, 20, 4, 7, N'Bìa mềm', 131000, N'21_110_cau_hoi_dap_cham_soc_bonsai.jpg', 1, 0, 200, 0, 30, N'110 Câu Hỏi Đáp Chăm Sóc & Tạo Dáng Bonsai', N'<p>được bi&ecirc;n soạn dựa tr&ecirc;n những thắc mắc thường gặp trong việc trồng v&agrave; tạo d&aacute;ng bonsai như: C&aacute;ch thức gieo hạt như thế n&agrave;o? Bonsai c&oacute; bao nhi&ecirc;u thế căn bản? Trồng bonsai c&oacute; cần thiết phải d&ugrave;ng c&aacute;c loại dụng cụ chuy&ecirc;n d&ugrave;ng? Nguy&ecirc;n tố dinh dưỡng n&agrave;o bonsai cần đến? Những bộ phận n&agrave;o của bonsai cần được tạo d&aacute;ng? C&aacute;ch chăm s&oacute;c bonsai sau khi cắt tỉa? Việc l&atilde;o h&oacute;a bonsai n&ecirc;n thực hiện từ bộ phận n&agrave;o trước? Ngừa bệnh cho bonsai bằng c&aacute;ch n&agrave;o?... S&aacute;ch đ&aacute;p ứng nhu cầu của những người mới bước v&agrave;o nghề trồng kiểng bonsai muốn tự m&igrave;nh trồng được nhiều kiểng bonsai đẹp, mang đ&uacute;ng h&igrave;nh d&aacute;ng v&agrave; sắc th&aacute;i m&agrave; nghệ thuật c&acirc;y kiểng n&agrave;y đ&ograve;i hỏi...</p>
')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (22, 15, 20, 4, 7, N'Bìa mềm', 86000, N'34585_cham-soc-83-loai-chau-canh.jpg', 1, 0, 200, 100, 29, N'Chăm Sóc 83 Loại Chậu Cảnh', N'Với hình ảnh sinh động, cụ thể, cuốn sách giới thiệu kỹ thuật và phương pháp chăm sóc cho 83 ba loại cây cảnh thường thấy')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (23, 15, 20, 4, 7, N'Bìa mềm', 90000, N'145535_tao-dang-bonsai-tai-ban-062012.jpg', 6, 0, 200, 100, 34, N'Tạo Dáng Bonsai - Tái bản 06/2012', N'Nghệ thuật cắt tỉa và tạo dáng bonsai đã có ở Trung Hoa ít nhất từ thế kỷ 17. Penjing, một dạng cây kiểng nghệ thuật cổ, được dịch là “Phong cảnh trong chậu hay đĩa”, Làng nghệ thuật tạo phố cảnh thu nhỏ. Với 17 kiểu phong cảnh được mô tả nổi bật, đặc sắc trong cuốn “Tạo dáng Bonsai” không chỉ hấp dẫn người đọc bằng những chỉ dẫn và hình minh hoạ rõ ràng, cụ thể, sắc nét mà còn giải thích về cách toạ dáng, cách trồng và chọn lựa vị trí cho các yếu tố trong phong cảnh, cách chăm sóc cây… giúp bạn có thể tạo bầu không khí trong lành, dễ chịu và tâm hồn thanh thản cho ngôi nhà của mình từ những cây kiểng nghệ thuật. Mỗi phong cảnh là một tác phẩm nghệ thuật đặc sắc, được sáng tạo một cách khéo léo và tinh vi, mang đậm dấu ấn của điều khắc, hội họa và âm nhạc, tô điểm thêm sắc màu và dư vị cho cuộc sống của bạn.')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (24, 15, 20, 4, 8, N'Bìa mềm', 92000, N'45734_gioi-tinh-va-nhung-dieu-hoc-sinh-trung-hoc-co-so-can-biet.jpg', 8, 0, 200, 100, 40, N'Giới Tính Và Những Điều Học Sinh Trung Học Cơ Sở Cần Biết', N'Các em lứa tuổi học sinh trung học cơ sở sẽ tìm thấy nhiều điều bổ ích trong cuốn sách này:

        <p>Tuổi dậy thì đến với chúng ta như thế nào?</p>

        <p>Cơ thể và tâm lý của chúng mình có những thay đổi gì?</p>

        <p>Làm thế nào để "xử lý" những "rắc rối" của tuổi dậy thì?</p>

        <p>Làm thế nào để xây dựng mối quan hệ bạn bè tốt đẹp?</p>

        <p>Học cách tự bảo vệ bản thân như thế nào?</p>

        Và rất nhiều điều thú vị khác trong các mục Cửa sổ tri thức và Tổng đài thông tin đang chờ đón các em cùng đọc và chia sẻ.')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (25, 15, 20, 4, 8, N'Bìa mềm', 152000, N'45733_gioi-tinh-va-nhung-dieu-hoc-sinh-tieu-hoc-can-biet.jpg', 4, 0, 200, 100, 20, N'Giới Tính Và Những Điều Học Sinh Tiểu Học Cần Biết', N'Các em học sinh tiểu học có biết:

        <p>Chúng mình được sinh ra từ đâu?</p>

        <p>Cơ thể của chúng mình phát triển ra sao?</p>

        <p>Các bạn nam và nữ khác nhau như thế nào?</p>

        <p>Tự chăm sóc bản thân có khó không?</p>

        <p>Làm thế nào để xây dựng tình bạn tốt đẹp?</p>

        <p>Học cách tự bảo vệ bản thân như thế nào?</p>

        Thông qua những câu chuyện sinh động với hình vẽ ngộ nghĩnh và những trò chơi khám phá, cuốn sách này giúp các em có được câu trả lời thú vị và thật dễ hiểu về lứa tuổi tiểu học đáng yêu.')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (26, 15, 20, 4, 8, N'Bìa mềm', 198000, N'45735_gioi-tinh-va-nhung-dieu-hoc-sinh-trung-hoc-pho-thong-can-biet.jpg', 12, 0, 200, 100, 28, N'Giới Tính Và Những Điều Về Trẻ Mầm Non Cần Biết', N'Cuốn sách là một cẩm nang cần thiết cho các bậc cha mẹ và giáo viên của trẻ từ 0 - 6 tuổi.
        <p>Sách giúp cha mẹ và thầy cô nhận biết tất cả các vấn đề về giới tính của trẻ ở lứa tuổi này:</p>
        <p>Sự phát triển sinh lý, tâm lý giới tính</p>
        <p>Sự phát triển dị thường ở hệ sinh dục</p>
        <p>Cách ứng phó với những tò mò về giới tính của trẻ</p>
        <p>Sự hình thành và phát triển vai trò giới tính của trẻ</p>
        <p>Giáo dục bảo vệ sức khỏe giới tính cho trẻ</p>
        Các bệnh sinh dục thường gặp ở trẻ, cách phòng trị...')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (27, 15, 20, 5, 11, N'Bìa mềm', 196000, N'kham-pha-the-gioi-nhưng-tro-choi-hap-dan-nhat-qua-dat.jpg', 12, 0, 200, 100, 5, N'Khám Phá Thế Giới - Những Trò Giải Trí Hấp Dẫn Nhất Quả Đất', N'<p>Chỉ cần một chiếc điện thoại thông minh hoặc một máy tính bảng có kết nối Internet, bạn có thể chiêm ngưỡng những hình ảnh động đầy thú vị trong cuốn sách này. Xe đua công thức nhất đầy mê hoặc sẽ phóng vút ra khỏi trang sách, Rạp hát đồ sộ nguy nga bỗng bật dậy một cách sống động… Hãy bước vào thế giới của bộ môn Đua xe công thức nhất, Lướt sóng; hay Công viên giải trí, Viện bảo tàng, Rạp xiếc, Sở thú… để cùng tìm hiểu, khám phá những điều kì diệu và đánh thức những hình ảnh sống dậy nhé!</p>')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (28, 15, 20, 5, 11, N'Bìa mềm', 70000, N'276461_kham-pha-cuoc-song-quanh-em-trong-vuon-thu.jpg', 8, 0, 200, 100, 5, N'Khám Phá Cuộc Sống Quanh Em - Trong Vườn Thú', N'<p>Cuốn sách được minh họa một cách phong phú, sinh động này giới thiệu về thế giới thú vị của vườn thú thông qua việc trả lời các câu hỏi hấp dẫn về các con vật trong vườn thú và những người chăm sóc thú. Các bé có thể biết được những thói quen hằng ngày và môi trường sống của các loài động vật trong công việc của những người chăm sóc thú. Những miêu tả ngắn về mỗi loài vật cũng cung cấp những kiến thức khoa học giá trị và các hoạt động trong mỗi mục sẽ đem đến cho các bạn nhiều thông tin của các loài động vật. Phần cuối cùng của chuyến hành trình vườn thú, các bạn đọc nhỏ tuổi có thể tìm thấy một trò chơi giải trí dành cho hai người.</p>')
INSERT [dbo].[Sach] ([id], [ChieuDai], [ChieuRong], [ChuDeId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [NhaXuatBanId], [PhanTramGiamGia], [SoLuong], [SoTrang], [TacGiaId], [TenSach], [TomTat]) VALUES (29, 15, 20, 5, 11, N'Bìa mềm', 197000, N'250805_nghe-nghiep-em-yeu-nhac-si.jpg', 9, 0, 200, 100, 26, N'Nghề Nghiệp Em Yêu - Bác Sĩ', N'Bộ sách "Nghề Nghiệp Em Yêu" ra đời trong nỗ lực đổi mới phương pháp giáo dục trẻ theo hướng để các em được học mà chơi, chơi mà học. Phong cách minh họa ấn tượng khắc sâu những thông tin bổ ích giúp các em thỏa sức tìm hiểu về nghề nghiệp yêu thích, thêm yêu thương và trân trọng người lao động, từ đó có định hướng nghề nghiệp ngay từ khi còn nhỏ.')
SET IDENTITY_INSERT [dbo].[Sach] OFF
SET IDENTITY_INSERT [dbo].[TacGia] ON 

INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (1, N'Nguyễn Thành Yến')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (2, N'The Windy')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (3, N'Lê Huy Lâm')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (4, N'Trần Việt Thanh')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (5, N'The Sakura')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (6, N'Sasaki Hitoko')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (7, N'Philip Kotler')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (8, N'Jack Trout')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (9, N'Brian Tracy')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (10, N'PGS.TS Đoàn Thị Hồng Vân')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (11, N'Minh Đức')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (12, N'Nguyễn Viết Hùng (Tổng Hợp)')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (13, N'Nguyễn Du')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (14, N'Tô Thanh Hải')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (15, N'Nguyễn Phong Việt')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (16, N'Nguyễn Nhật Ánh')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (17, N'Nguyễn Ngọc Tư')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (18, N'Nguyễn Ngọc Thạch')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (19, N'Việt Chương')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (20, N'Nguyễn Kim Dân')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (21, N'Phúc Quyên')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (22, N'Quý Thành Diệp')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (23, N'Nguyễn Thơ Sinh')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (24, N'Phan Lưu Ly')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (25, N'Phạm Hữu Khang')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (26, N'Nguyễn Nam Thuận')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (27, N'Trịnh Thế Tiến')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (28, N'Phạm Hoàng Dũng')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (29, N'VN-Guide')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (30, N'Lê Xuân Đồng')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (31, N'Nhóm Sóc Xanh')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (32, N'Rahul Singhal & Xact Team')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (33, N'Tuệ Văn')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (34, N'Nguyễn Thu Hương')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (35, N'Ngô Minh Vân')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (36, N'Ngọc Linh')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (37, N'Trần Phương Hạnh')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (38, N'Samuel Crowther')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (39, N'Walter Isaacson')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (40, N'Nguyên Hùng')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (41, N'Võ Nguyên Giáp')
INSERT [dbo].[TacGia] ([Id], [TenTacGia]) VALUES (42, N'Nguyễn Hữu Đảng')
SET IDENTITY_INSERT [dbo].[TacGia] OFF
INSERT [dbo].[Wishlist] ([SachID], [UserID]) VALUES (4, N'290a7fb2-d75b-4851-876f-df442b0459b9')
INSERT [dbo].[Wishlist] ([SachID], [UserID]) VALUES (3, N'59585b43-4523-47af-a432-df831357c08b')
INSERT [dbo].[Wishlist] ([SachID], [UserID]) VALUES (4, N'59585b43-4523-47af-a432-df831357c08b')
INSERT [dbo].[Wishlist] ([SachID], [UserID]) VALUES (5, N'59585b43-4523-47af-a432-df831357c08b')
ALTER TABLE [dbo].[TraLoiLienLac] ADD  DEFAULT ('0001-01-01T00:00:00.000') FOR [NgayTraLoi]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon_HoaDonId] FOREIGN KEY([HoaDonId])
REFERENCES [dbo].[HoaDon] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon_HoaDonId]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Sach_SachId] FOREIGN KEY([SachId])
REFERENCES [dbo].[Sach] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Sach_SachId]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[NhanXet]  WITH CHECK ADD  CONSTRAINT [FK_NhanXet_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[NhanXet] CHECK CONSTRAINT [FK_NhanXet_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[NhanXet]  WITH CHECK ADD  CONSTRAINT [FK_NhanXet_Sach_Sachid] FOREIGN KEY([Sachid])
REFERENCES [dbo].[Sach] ([id])
GO
ALTER TABLE [dbo].[NhanXet] CHECK CONSTRAINT [FK_NhanXet_Sach_Sachid]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_ChuDe_ChuDeId] FOREIGN KEY([ChuDeId])
REFERENCES [dbo].[ChuDe] ([Id])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_ChuDe_ChuDeId]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_DanhMuc_DanhMucId] FOREIGN KEY([DanhMucId])
REFERENCES [dbo].[DanhMuc] ([Id])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_DanhMuc_DanhMucId]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXuatBan_NhaXuatBanId] FOREIGN KEY([NhaXuatBanId])
REFERENCES [dbo].[NhaXuatBan] ([Id])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXuatBan_NhaXuatBanId]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia_TacGiaId] FOREIGN KEY([TacGiaId])
REFERENCES [dbo].[TacGia] ([Id])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TacGia_TacGiaId]
GO
ALTER TABLE [dbo].[TraLoiLienLac]  WITH CHECK ADD  CONSTRAINT [FK_TraLoiLienLac_LienLac_LienLacId] FOREIGN KEY([LienLacId])
REFERENCES [dbo].[LienLac] ([Id])
GO
ALTER TABLE [dbo].[TraLoiLienLac] CHECK CONSTRAINT [FK_TraLoiLienLac_LienLac_LienLacId]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_AspNetUsers_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_AspNetUsers_UserID]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Sach_SachID] FOREIGN KEY([SachID])
REFERENCES [dbo].[Sach] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_Sach_SachID]
GO
