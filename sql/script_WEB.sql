Create Database WebLapTop
go
USE [WebLapTop]
GO
/****** Object:  Table [dbo].[CTDonHang]    Script Date: 11/8/2022 6:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDonHang](
	[Madon] [int] NOT NULL,
	[Masp] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
	[Thanhtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CTDonHang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC,
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 11/8/2022 6:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[Madon] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[Tinhtrang] [int] NULL,
	[Tinhtrangthanhtoan] [int] NULL,
	[MaNguoidung] [int] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipTel] [nchar](10) NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[ShipAddress] [nvarchar](100) NULL,
	[Status] [nvarchar](100) NULL,
	[Tongthanhtien] [decimal](18, 0) NULL,
	[ThanhCong] [bit] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangSanXuat]    Script Date: 11/8/2022 6:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSanXuat](
	[Mahang] [int] IDENTITY(1,1) NOT NULL,
	[TenHang] [nchar](10) NULL,
	[ChiTietHang] [nvarchar](200) NULL,
 CONSTRAINT [PK_HangSanXuat] PRIMARY KEY CLUSTERED 
(
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 11/8/2022 6:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Dienthoai] [nchar](10) NULL,
	[Matkhau] [varchar](50) NULL,
	[IDQuyen] [int] NULL,
	[Diachi] [nvarchar](100) NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[Facebook] [nvarchar](200) NULL,
	[Instagram] [nvarchar](200) NULL,
	[Twitter] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.Nguoidung] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 11/8/2022 6:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/8/2022 6:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Masp] [int] IDENTITY(1,1) NOT NULL,
	[Tensp] [nvarchar](50) NULL,
	[Giatien] [decimal](18, 0) NULL,
	[Mota] [ntext] NULL,
	[Anhbia] [nvarchar](50) NULL,
	[Mahang] [int] NULL,
	[Soluong] [nvarchar](max) NULL,
	[Kho] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 11/8/2022 6:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[MaThanhToan] [int] IDENTITY(1,1) NOT NULL,
	[LoaiThanhToan] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThanhToan] PRIMARY KEY CLUSTERED 
(
	[MaThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhTrang]    Script Date: 11/8/2022 6:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrang](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[LoaiTT] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhTrang] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTDonHang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (185, 30, 1, CAST(1000 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[CTDonHang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (186, 30, 1, CAST(1000 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([Madon], [Ngaydat], [Ngaygiao], [Tinhtrang], [Tinhtrangthanhtoan], [MaNguoidung], [ShipName], [ShipTel], [ShipEmail], [ShipAddress], [Status], [Tongthanhtien], [ThanhCong]) VALUES (184, CAST(N'2022-11-04T23:32:08.233' AS DateTime), CAST(N'2022-11-11T10:28:55.793' AS DateTime), 4, 1, 47, N'', N'          ', N'namle123@gmail.com', N'', NULL, CAST(231 AS Decimal(18, 0)), 0)
INSERT [dbo].[DonHang] ([Madon], [Ngaydat], [Ngaygiao], [Tinhtrang], [Tinhtrangthanhtoan], [MaNguoidung], [ShipName], [ShipTel], [ShipEmail], [ShipAddress], [Status], [Tongthanhtien], [ThanhCong]) VALUES (185, CAST(N'2022-11-08T10:22:51.843' AS DateTime), NULL, 1, 1, 47, N'', N'          ', N'namle123@gmail.com', N'', NULL, CAST(1000 AS Decimal(18, 0)), 0)
INSERT [dbo].[DonHang] ([Madon], [Ngaydat], [Ngaygiao], [Tinhtrang], [Tinhtrangthanhtoan], [MaNguoidung], [ShipName], [ShipTel], [ShipEmail], [ShipAddress], [Status], [Tongthanhtien], [ThanhCong]) VALUES (186, CAST(N'2022-11-08T10:24:06.420' AS DateTime), NULL, 1, 1, 47, N'', N'          ', N'namle123@gmail.com', N'', NULL, CAST(1000 AS Decimal(18, 0)), 0)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[HangSanXuat] ON 

INSERT [dbo].[HangSanXuat] ([Mahang], [TenHang], [ChiTietHang]) VALUES (1, N'Asus      ', NULL)
INSERT [dbo].[HangSanXuat] ([Mahang], [TenHang], [ChiTietHang]) VALUES (2, N'Acer      ', NULL)
INSERT [dbo].[HangSanXuat] ([Mahang], [TenHang], [ChiTietHang]) VALUES (3, N'Dell      ', NULL)
INSERT [dbo].[HangSanXuat] ([Mahang], [TenHang], [ChiTietHang]) VALUES (4, N'MSI       ', NULL)
INSERT [dbo].[HangSanXuat] ([Mahang], [TenHang], [ChiTietHang]) VALUES (5, N'HP        ', NULL)
INSERT [dbo].[HangSanXuat] ([Mahang], [TenHang], [ChiTietHang]) VALUES (6, N'Lenovo    ', NULL)
INSERT [dbo].[HangSanXuat] ([Mahang], [TenHang], [ChiTietHang]) VALUES (7, N'Gigabyte  ', NULL)
SET IDENTITY_INSERT [dbo].[HangSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [HinhAnh], [Facebook], [Instagram], [Twitter]) VALUES (22, N'ADMIN', N'admin@gmail.com', N'0339587545', N'123', 1, N'52 NTMK', N'stk22.jpg', N'https://www.facebook.com/dqv166/', N'vinh2', N'vinh2')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [HinhAnh], [Facebook], [Instagram], [Twitter]) VALUES (46, N'Phương Nam', N'namle@gmail.com', N'0123456   ', N'123', 3, N'abc', NULL, NULL, NULL, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [HinhAnh], [Facebook], [Instagram], [Twitter]) VALUES (47, N'Phương Nam', N'namle123@gmail.com', N'0123456   ', N'123', 2, N'abc', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Admin')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Khách hàng ( Đồng )')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (3, N'Nhân Viên')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (4, N'Boss')
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([Masp], [Tensp], [Giatien], [Mota], [Anhbia], [Mahang], [Soluong], [Kho]) VALUES (1, N'Acer Aspire 7', CAST(68090000 AS Decimal(18, 0)), N'Thiết kế tinh tế, trung tính theo phong cách học tập, văn phòng nhưng Aspire 7 sở hữu cấu hình mạnh. Với bộ vi xử lý AMD Ryzen và card đồ họa rời NVIDIA GeForce GTX kết hợp cùng hai quạt tản nhiệt đem lại khả năng làm mát tối đa.
Bộ vi xử lý AMD Ryzen™ 5 5625U, card đồ họa rời NVIDIA GeForce® RTX 3050 4GB, màn hình 15.6″ FHD IPS đẹp mắt với tần số quét 144Hz chuẩn chiến game. Công nghệ tản nhiệt hàng đầu phân khúc với 2 quạt tản nhiệt và hệ thống ống đồng cải tiến. Cùng phần mềm tối ưu hóa hệ thống Acer Care Center tiện dụng.', N'as1.png', 2, NULL, 200)
INSERT [dbo].[SanPham] ([Masp], [Tensp], [Giatien], [Mota], [Anhbia], [Mahang], [Soluong], [Kho]) VALUES (2, N'Acer Aspire 7 Intel', CAST(290000000 AS Decimal(18, 0)), N'Thiết kế tinh tế, trung tính theo phong cách học tập, văn phòng nhưng ACER ASPIRE 7 A715-75G-58U4 sở hữu cấu hình mạnh với bộ vi xử lý Intel, card đồ họa rời NVIDIA GeForce GTX kết hợp cùng hai quạt tản nhiệt đem lại khả năng làm mát tối đa.
– Bộ vi xử lý Intel Core i5 10300H.
– Card đồ họa rời NVIDIA GeForce® GTX 1650 4GB.
– Màn hình 15.6″ FHD IPS đẹp mắt với tần số quét lên đến 144Hz chuẩn chiến game.
– Công nghệ tản nhiệt hàng đầu phân khúc với 2 quạt tản nhiệt và hệ thống ống đồng cải tiến, cùng phần mềm tối ưu hóa hệ thống Acer Care Center tiện dụng.', N'as7i1.png', 1, NULL, 200)
INSERT [dbo].[SanPham] ([Masp], [Tensp], [Giatien], [Mota], [Anhbia], [Mahang], [Soluong], [Kho]) VALUES (3, N'Acer Predator Helios 300', CAST(21500000 AS Decimal(18, 0)), N'Trải nghiệm hoàn hảo dành cho game thủ với Acer Predator Helios 300 PH315-55-751D 2022 hoàn toàn mới. Màn hình 165Hz cực nhanh giúp bạn nắm chiến thắng trong tay và tiêu diệt đối thủ dễ dàng. Trang bị card đồ hoạ NVIDIA® GeForce RTX ™ 3070Ti Intel® Core ™ i7 thế hệ thứ 12 và Công nghệ 3D AeroBlade ™ thế hệ thứ 5 được thiết kế riêng độc quyền.', N'he.png', 1, NULL, 200)
INSERT [dbo].[SanPham] ([Masp], [Tensp], [Giatien], [Mota], [Anhbia], [Mahang], [Soluong], [Kho]) VALUES (4, N'Acer Nitro 5 Eagle', CAST(2380000 AS Decimal(18, 0)), N'Acer Nitro 5 AN515-57-5669 sở hữu thiết kế ấn tượng với hai màu đen-đỏ chủ đạo. Bề mặt được thiết kế hầm hố và góc cạnh hơn. Thể hiện phong cách hiếu chiến đặc trưng của dòng Nitro. Viền màn hình siêu mỏng 6.3mm cho cảm giác không gian thoáng đãng hơn trước.', N'nitro.png', 2, NULL, 200)
INSERT [dbo].[SanPham] ([Masp], [Tensp], [Giatien], [Mota], [Anhbia], [Mahang], [Soluong], [Kho]) VALUES (5, N'ASUS ROG Strix G17', CAST(6990000 AS Decimal(18, 0)), N'Asus ROG Strix G17 G713RW-LL178W với CPU manh mẽ R9 6900HX và GPU GeForce RTX™ 3070Ti. Mọi hoạt động từ chơi game tới thao tác đa nhiệm đều nhanh và mượt mà. Chơi game với màn hình siêu nhanh hỗ trợ FHD 360Hz hoặc QHD 240Hz. Công nghệ Adaptive-Sync cho tựa game siêu mượt. Hệ thống tản nhiệt cao cấp giữ cho máy luôn mát mẻ dưới những thử thách cam go. Với bất kỳ game nào, bạn đều có thể có được những màn chơi hoàn hảo.', N'rog1.png', 2, NULL, 200)
INSERT [dbo].[SanPham] ([Masp], [Tensp], [Giatien], [Mota], [Anhbia], [Mahang], [Soluong], [Kho]) VALUES (6, N'ASUS ROG Flow X13', CAST(5499000 AS Decimal(18, 0)), N'Máy có thiết kế siêu mỏng, nhẹ chỉ 15,8mm và có trọng lượng 1,3kg. Mặt lưng của máy làm bằng kim loại được vác xéo nhau sờ khá mát tay.  ROG Flow X13 hoạt động ở mức công suất tối đa với bộ sạc chuẩn USB Type-C 100W nhỏ gọn, đi kèm là dung lượng pin lên đến 10 tiếng xem video. Flow X13 định nghĩa lại những gì có thể làm được trên thiết bị 13-inch. Cho phép người dùng khả năng di động linh hoạt, trong khi vẫn cung cấp hiệu suất đủ game, công việc và sáng tạo nội dung.', N'rogf.png', 2, NULL, 200)
INSERT [dbo].[SanPham] ([Masp], [Tensp], [Giatien], [Mota], [Anhbia], [Mahang], [Soluong], [Kho]) VALUES (7, N'ASUS TUF Gaming F15', CAST(12900000 AS Decimal(18, 0)), N'ASUS TUF Gaming F15 FX506HM-HN366W sẽ thay đổi cách bạn nhìn vào laptop chơi game. được trang bị phần cứng ấn tượng, thiết kế gọn nhưng mạnh mẽ. Trang bị bộ vi xử lý AMD thế hệ mới nhất, hỗ trợ ram tối đa 32GB, VGA RTX 30 series, màn hình IPS 144Hz với bàn phím có đèn nền RGB. Có bàn phím chuyên dụng chơi game với các phím RGB-backlit. Cụm phím WASD nổi bật và công nghệ Overstroke để thao tác nhanh và chính xác. Với màn hình NanoEdge IPS cấp độ tiên tiến, và độ bền được chứng nhận kiểm tra MIL-STD-810G. ASUS TUF Gaming F15 FX506HM-HN366W mang đến trải nghiệm chơi game phong phú mọi lúc mọi nơi!', N'tuf1.png', 3, NULL, 200)
INSERT [dbo].[SanPham] ([Masp], [Tensp], [Giatien], [Mota], [Anhbia], [Mahang], [Soluong], [Kho]) VALUES (8, N'Dell G15 5515', CAST(9900000 AS Decimal(18, 0)), N'Laptop Dell sở hữu CPU AMD Ryzen 5 5600H kết hợp với card đồ họa NVIDIA RTX 3050 4 GB giúp khả năng chơi game trơn tru. Trong lúc trải nghiệm, hầu hết khi chiến các tựa game trực tuyến như Liên Minh Huyền Thoại, CS:GO,... tình trạng giật lag thường xảy ra ở các dòng laptop gaming giá rẻ do máy thu bắt sóng internet yếu, tuy nhiên chiếc máy này đã vượt qua và chạy tốt, không ảnh hưởng đến trải nghiệm chơi game nhờ công nghệ Wi-Fi 6 (802.11ax).', N'g15.png', 3, NULL, 200)
INSERT [dbo].[SanPham] ([Masp], [Tensp], [Giatien], [Mota], [Anhbia], [Mahang], [Soluong], [Kho]) VALUES (9, N'Dell Latitude 3520', CAST(8400000 AS Decimal(18, 0)), N'Laptop Dell được trang bị CPU Intel Core i5 Tiger Lake 1135G7 đem lại hiệu năng vượt trội với cấu trúc 4 nhân 8 luồng và cung cấp xung nhịp cơ bản 2.4 GHz và tối đa 4.2 GHz ở chế độ Turbo Boost. Với mức hiệu năng này máy hoàn toàn đáp ứng dễ dàng các tác vụ văn phòng như: Word, Excel, PowerPoint,...', N'lat1.png', 3, NULL, 200)
INSERT [dbo].[SanPham] ([Masp], [Tensp], [Giatien], [Mota], [Anhbia], [Mahang], [Soluong], [Kho]) VALUES (22, N'Lenovo IdeaPad Gaming 3', CAST(3690000 AS Decimal(18, 0)), N'Laptop Lenovo IdeaPad Gaming 3 15IHU6 i5 (82K10178VN) thật sự làm mình hài lòng khi với mức giá chưa đầy 20 triệu mà vẫn có thể cân được mọi tác vụ từ học tập, văn phòng đến chiến game giải trí nhờ con chip Intel Gen 11 kết hợp cùng card đồ họa NVIDIA GeForce GTX mạnh mẽ.
', N'idea1.png', 4, NULL, 100)
INSERT [dbo].[SanPham] ([Masp], [Tensp], [Giatien], [Mota], [Anhbia], [Mahang], [Soluong], [Kho]) VALUES (30, N'Lenovo Legion 5', CAST(1000 AS Decimal(18, 0)), N'Laptop Lenovo Legion 5 15ACH6 82JW00JPVN là thế hệ thứ 5 của dòng laptop Lenovo Legion. Vậy nên, đây được xem là bản nâng cấp tối ưu nhất thời điểm hiện tại với thông số nổi bật như CPU R5, Ram 8GB, ổ cứng SSD lên đến 256GB và màn hình 15.6’ inch FHD.', N'lg1.png', 5, NULL, 200)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhToan] ON 

INSERT [dbo].[ThanhToan] ([MaThanhToan], [LoaiThanhToan]) VALUES (1, N'Tiền mặt khi nhận hàng ')
INSERT [dbo].[ThanhToan] ([MaThanhToan], [LoaiThanhToan]) VALUES (2, N'Momo')
INSERT [dbo].[ThanhToan] ([MaThanhToan], [LoaiThanhToan]) VALUES (3, N'Paypal')
SET IDENTITY_INSERT [dbo].[ThanhToan] OFF
GO
SET IDENTITY_INSERT [dbo].[TinhTrang] ON 

INSERT [dbo].[TinhTrang] ([MaTT], [LoaiTT]) VALUES (1, N'Đang chờ xác nhận')
INSERT [dbo].[TinhTrang] ([MaTT], [LoaiTT]) VALUES (2, N'Đã xác nhận')
INSERT [dbo].[TinhTrang] ([MaTT], [LoaiTT]) VALUES (3, N'Đang giao hàng')
INSERT [dbo].[TinhTrang] ([MaTT], [LoaiTT]) VALUES (4, N'Giao hàng thành công')
SET IDENTITY_INSERT [dbo].[TinhTrang] OFF
GO
ALTER TABLE [dbo].[DonHang] ADD  CONSTRAINT [DF_DonHang_Tinhtrang]  DEFAULT ((1)) FOR [Tinhtrang]
GO
ALTER TABLE [dbo].[CTDonHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDonHang_DonHang] FOREIGN KEY([Madon])
REFERENCES [dbo].[DonHang] ([Madon])
GO
ALTER TABLE [dbo].[CTDonHang] CHECK CONSTRAINT [FK_CTDonHang_DonHang]
GO
ALTER TABLE [dbo].[CTDonHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDonHang_SanPham] FOREIGN KEY([Masp])
REFERENCES [dbo].[SanPham] ([Masp])
GO
ALTER TABLE [dbo].[CTDonHang] CHECK CONSTRAINT [FK_CTDonHang_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NguoiDung] FOREIGN KEY([MaNguoidung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NguoiDung]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_ThanhToan] FOREIGN KEY([Tinhtrangthanhtoan])
REFERENCES [dbo].[ThanhToan] ([MaThanhToan])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_ThanhToan]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TinhTrang] FOREIGN KEY([Tinhtrang])
REFERENCES [dbo].[TinhTrang] ([MaTT])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TinhTrang]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Nguoidung_dbo.PhanQuyen] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[PhanQuyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_dbo.Nguoidung_dbo.PhanQuyen]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_HangSanXuat] FOREIGN KEY([Mahang])
REFERENCES [dbo].[HangSanXuat] ([Mahang])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_HangSanXuat]
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetReportProductByMonth]    Script Date: 11/8/2022 6:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_GetReportProductByMonth]
	@Month INT
AS
BEGIN
	select MONTH(ord.Ngaydat) as months, pro.Tensp, COUNT(pro.Masp) as total
from DonHang ord  join CTDonHang od on ord.Madon = od.Madon join SanPham pro on pro.Masp = od.Masp

GROUP BY MONTH(ord.Ngaydat), pro.Tensp
ORDER BY MONTH(ord.Ngaydat)
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetReportProductByYear]    Script Date: 11/8/2022 6:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_GetReportProductByYear]
	@Year INT
AS
BEGIN
	select YEAR(ord.Ngaydat) as years, pro.Tensp, COUNT(pro.Masp) as total
from DonHang ord  join CTDonHang od on ord.Madon = od.Madon join SanPham pro on pro.Masp = od.Masp

GROUP BY YEAR(ord.Ngaydat), pro.Tensp
ORDER BY YEAR(ord.Ngaydat)
END
GO
