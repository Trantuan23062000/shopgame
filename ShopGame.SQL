USE [ShopGame]
GO
/****** Object:  Table [dbo].[DatHang]    Script Date: 6/8/2021 2:49:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KhachHang_ID] [int] NULL,
	[NgayDatHang] [datetime] NULL,
	[TinhTrang] [smallint] NULL,
 CONSTRAINT [PK_DatHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DatHang_ChiTiet]    Script Date: 6/8/2021 2:49:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatHang_ChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DatHang_ID] [int] NULL,
	[Game_ID] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_DatHang_ChiTiet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Game]    Script Date: 6/8/2021 2:49:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NhaSanXuat_ID] [int] NULL,
	[LoaiGame_ID] [int] NULL,
	[TenGame] [nvarchar](255) NULL,
	[DonGia] [int] NULL,
	[HinhAnhBia] [nvarchar](255) NULL,
	[MoTa] [ntext] NULL,
	[NhanVien_ID] [int] NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/8/2021 2:49:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoVaTen] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](255) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiGame]    Script Date: 6/8/2021 2:49:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiGame](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](255) NULL,
 CONSTRAINT [PK_LoaiGame] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/8/2021 2:49:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoVaTen] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](255) NULL,
	[Quyen] [bit] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 6/8/2021 2:49:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaSanXuat] [nvarchar](255) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DatHang] ON 

INSERT [dbo].[DatHang] ([ID], [KhachHang_ID], [NgayDatHang], [TinhTrang]) VALUES (20, 4, CAST(N'2021-06-08 14:35:56.640' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DatHang] OFF
SET IDENTITY_INSERT [dbo].[DatHang_ChiTiet] ON 

INSERT [dbo].[DatHang_ChiTiet] ([ID], [DatHang_ID], [Game_ID], [DonGia]) VALUES (14, 20, 6, 150000)
SET IDENTITY_INSERT [dbo].[DatHang_ChiTiet] OFF
SET IDENTITY_INSERT [dbo].[Game] ON 

INSERT [dbo].[Game] ([ID], [NhaSanXuat_ID], [LoaiGame_ID], [TenGame], [DonGia], [HinhAnhBia], [MoTa], [NhanVien_ID]) VALUES (5, 1, 2, N'Gta5', 250000, N'Storage/37a5d924-ab0c-40e5-b270-f9303d1cd0a3.jpg', NULL, 6)
INSERT [dbo].[Game] ([ID], [NhaSanXuat_ID], [LoaiGame_ID], [TenGame], [DonGia], [HinhAnhBia], [MoTa], [NhanVien_ID]) VALUES (6, 4, 5, N'Fifa 21', 150000, N'Storage/d2afaf64-af94-46a1-b428-d3dbd1bfefd3.jpg', NULL, 7)
INSERT [dbo].[Game] ([ID], [NhaSanXuat_ID], [LoaiGame_ID], [TenGame], [DonGia], [HinhAnhBia], [MoTa], [NhanVien_ID]) VALUES (7, 8, 3, N'Assassin''s creed valhalla', 500000, N'Storage/9ac6d752-83ac-4b39-b8af-b615a55735e9.jpg', N'Assassin''s Creed là một sê-ri trò chơi điện tử thể loại hành động phiêu lưu trong một thế giới mở có nội dung mang tính lịch sử-viễn tưởng. Dòng trò chơi gồm năm bản chính, bốn bản phụ và một vài các phim ngắn bổ trợ cho nội dung của game.', 7)
INSERT [dbo].[Game] ([ID], [NhaSanXuat_ID], [LoaiGame_ID], [TenGame], [DonGia], [HinhAnhBia], [MoTa], [NhanVien_ID]) VALUES (8, 1, 7, N'Red Dead Redemption', 200000, N'Storage/7015495c-00b5-4007-9b10-0b1f38a053c5.jpg', NULL, 6)
INSERT [dbo].[Game] ([ID], [NhaSanXuat_ID], [LoaiGame_ID], [TenGame], [DonGia], [HinhAnhBia], [MoTa], [NhanVien_ID]) VALUES (9, 8, 3, N'Cyberpunk', 750000, N'Storage/90fd4900-e186-401b-a2f8-3be8d6767d84.jpg', N'Cyberpunk 2077 là một trò chơi điện tử hành động nhập vai năm 2020 do CD Projekt phát triển và phát hành. Cốt truyện của trò chơi diễn ra tại Night City, một thế giới mở lấy bối cảnh trong vũ trụ của Cyberpunk. Người chơi nhập vai từ góc nhìn thứ nhất vào một tên lính đánh thuê tên là V, người có khả năng chiến đấu cận chiến và tầm xa, cũng như học được các kỹ năng hack và vận hành máy móc.', 6)
INSERT [dbo].[Game] ([ID], [NhaSanXuat_ID], [LoaiGame_ID], [TenGame], [DonGia], [HinhAnhBia], [MoTa], [NhanVien_ID]) VALUES (10, 11, 8, N'ARK', 500000, N'Storage/807afaf5-2823-448c-b2b0-757cc327d75b.jpg', NULL, 7)
INSERT [dbo].[Game] ([ID], [NhaSanXuat_ID], [LoaiGame_ID], [TenGame], [DonGia], [HinhAnhBia], [MoTa], [NhanVien_ID]) VALUES (11, 5, 5, N'PES', 5000000, N'Storage/8c9d68d3-3b94-4e13-b66b-b63f5bb20f1d.jpg', NULL, 8)
INSERT [dbo].[Game] ([ID], [NhaSanXuat_ID], [LoaiGame_ID], [TenGame], [DonGia], [HinhAnhBia], [MoTa], [NhanVien_ID]) VALUES (12, 11, 7, N'Spider Man ', 6000000, N'Storage/67831f5b-83fd-43cb-ade5-3cebce129458.jpg', NULL, 8)
INSERT [dbo].[Game] ([ID], [NhaSanXuat_ID], [LoaiGame_ID], [TenGame], [DonGia], [HinhAnhBia], [MoTa], [NhanVien_ID]) VALUES (13, 4, 5, N'NBA', 7000000, N'Storage/34d165ef-ecc6-4ea5-864a-fcb2c09001e8.png', NULL, 6)
INSERT [dbo].[Game] ([ID], [NhaSanXuat_ID], [LoaiGame_ID], [TenGame], [DonGia], [HinhAnhBia], [MoTa], [NhanVien_ID]) VALUES (14, 3, 5, N'Rocket League', 500000, N'Storage/c1c35ffa-68e6-4392-ae88-d71ff391b7ac.jpg', NULL, 6)
INSERT [dbo].[Game] ([ID], [NhaSanXuat_ID], [LoaiGame_ID], [TenGame], [DonGia], [HinhAnhBia], [MoTa], [NhanVien_ID]) VALUES (15, 10, 8, N'Among Us', 600000, N'Storage/d83bd864-a084-4cc2-b393-b76d26a9548d.jpg', NULL, 6)
INSERT [dbo].[Game] ([ID], [NhaSanXuat_ID], [LoaiGame_ID], [TenGame], [DonGia], [HinhAnhBia], [MoTa], [NhanVien_ID]) VALUES (16, 8, 8, N'Fortnite', 700000, N'Storage/fbeda02c-8cc7-47eb-8812-26872a7ef1aa.jpg', NULL, 6)
SET IDENTITY_INSERT [dbo].[Game] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 


SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiGame] ON 

INSERT [dbo].[LoaiGame] ([ID], [TenLoai]) VALUES (2, N'Phiêu lưu')
INSERT [dbo].[LoaiGame] ([ID], [TenLoai]) VALUES (3, N'Hành động')
INSERT [dbo].[LoaiGame] ([ID], [TenLoai]) VALUES (4, N'Kinh dị')
INSERT [dbo].[LoaiGame] ([ID], [TenLoai]) VALUES (5, N'Thể thao')
INSERT [dbo].[LoaiGame] ([ID], [TenLoai]) VALUES (6, N'Moba')
INSERT [dbo].[LoaiGame] ([ID], [TenLoai]) VALUES (7, N'Nhập vai')
INSERT [dbo].[LoaiGame] ([ID], [TenLoai]) VALUES (8, N'Sinh tồn')
SET IDENTITY_INSERT [dbo].[LoaiGame] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([ID], [HoVaTen], [DienThoai], [DiaChi], [TenDangNhap], [MatKhau], [Quyen]) VALUES (6, N'Nguyễn Minh Hiếu', N'08123456789', N'Long Xuyên', N'hieu', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1)
INSERT [dbo].[NhanVien] ([ID], [HoVaTen], [DienThoai], [DiaChi], [TenDangNhap], [MatKhau], [Quyen]) VALUES (7, N'Nguyễn Minh Tường', N'08123456789', N'Long Xuyên', N'tuong', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0)
INSERT [dbo].[NhanVien] ([ID], [HoVaTen], [DienThoai], [DiaChi], [TenDangNhap], [MatKhau], [Quyen]) VALUES (8, N'Nguyễn Minh Tuấn', N'08123456789', N'Long Xuyên', N'tuan', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([ID], [TenNhaSanXuat]) VALUES (1, N'Rockstar')
INSERT [dbo].[NhaSanXuat] ([ID], [TenNhaSanXuat]) VALUES (3, N'GameLoft')
INSERT [dbo].[NhaSanXuat] ([ID], [TenNhaSanXuat]) VALUES (4, N'EA')
INSERT [dbo].[NhaSanXuat] ([ID], [TenNhaSanXuat]) VALUES (5, N'Konami')
INSERT [dbo].[NhaSanXuat] ([ID], [TenNhaSanXuat]) VALUES (6, N'Tencent')
INSERT [dbo].[NhaSanXuat] ([ID], [TenNhaSanXuat]) VALUES (7, N'Riot')
INSERT [dbo].[NhaSanXuat] ([ID], [TenNhaSanXuat]) VALUES (8, N'Ubisoft')
INSERT [dbo].[NhaSanXuat] ([ID], [TenNhaSanXuat]) VALUES (9, N'Namco Bandai')
INSERT [dbo].[NhaSanXuat] ([ID], [TenNhaSanXuat]) VALUES (10, N'Sega')
INSERT [dbo].[NhaSanXuat] ([ID], [TenNhaSanXuat]) VALUES (11, N'Sony')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD  CONSTRAINT [FK_DatHang_KhachHang] FOREIGN KEY([KhachHang_ID])
REFERENCES [dbo].[KhachHang] ([ID])
GO
ALTER TABLE [dbo].[DatHang] CHECK CONSTRAINT [FK_DatHang_KhachHang]
GO
ALTER TABLE [dbo].[DatHang_ChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_DatHang_ChiTiet_DatHang] FOREIGN KEY([DatHang_ID])
REFERENCES [dbo].[DatHang] ([ID])
GO
ALTER TABLE [dbo].[DatHang_ChiTiet] CHECK CONSTRAINT [FK_DatHang_ChiTiet_DatHang]
GO
ALTER TABLE [dbo].[DatHang_ChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_DatHang_ChiTiet_Game] FOREIGN KEY([Game_ID])
REFERENCES [dbo].[Game] ([ID])
GO
ALTER TABLE [dbo].[DatHang_ChiTiet] CHECK CONSTRAINT [FK_DatHang_ChiTiet_Game]
GO
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_LoaiGame] FOREIGN KEY([LoaiGame_ID])
REFERENCES [dbo].[LoaiGame] ([ID])
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_LoaiGame]
GO
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_NhanVien] FOREIGN KEY([NhanVien_ID])
REFERENCES [dbo].[NhanVien] ([ID])
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_NhanVien]
GO
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_NhaSanXuat] FOREIGN KEY([NhaSanXuat_ID])
REFERENCES [dbo].[NhaSanXuat] ([ID])
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_NhaSanXuat]
GO
