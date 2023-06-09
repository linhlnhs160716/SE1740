USE [Assgn_PRJ_WEB_Ban_Gau_Bong]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/11/2023 11:01:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/11/2023 11:01:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/11/2023 11:01:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/11/2023 11:01:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/11/2023 11:01:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 7/11/2023 11:01:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 7/11/2023 11:01:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (1, N'manh', N'1', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (8, N'Micah', N'RVV5SR', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (12, N'Howard', N'TSR5MR', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (13, N'Tana', N'EHS8CM', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (15, N'Echo', N'IGE8TN', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (16, N'Slade', N'OFO6QS', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (20, N'Madaline', N'QMW4EN', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (21, N'Vera', N'CZB2VM', 0, 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (23, N'Katell', N'SFS0IW', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (24, N'Summer', N'PSQ7LC', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (25, N'Robin', N'KIS9AF', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (27, N'admin', N'123', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (28, N'mra', N'mra', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (29, N'mrb', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (30, N'Camden', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (31, N'manhdsz', N'123456', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (32, N'sfdfds', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (33, N'aaaaa', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (34, N'bbbb', N'1234', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (35, N'luong', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (38, N'mit', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (39, N'aaaaaaaa', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (40, N'bantq', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (41, N'thong', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (42, N'cd', N'1234', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (43, N'trungdk', N'123', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (44, N'viet', N'123', 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'Gấu to')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'Gấu bé')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Gấu cho bé trai')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Gấu cho bé gái ')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (46, 19, N'Áo Polo Gucci Jacquard Striped', N'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/03/ao-polo-gucci-jacquard-striped-polo-shirt-phoi-mau-size-s-6230070b491da-15032022102459.jpg', 140, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (47, 19, N'Áo Polo Adidas Tennis ', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2021/10/ao-polo-adidas-tennis-club-gl5437-mau-den-size-m-617a24517e93f-28102021111721.jpg', 150, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (19, 1, 290, N'hang de vo', CAST(N'2022-04-23' AS Date), 19)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (19, N'Gấu bông Corgi', N'https://ngoinhagaubong.com/wp-content/uploads/2020/09/16481769366_490741909.jpg', 5.0000, N'Gấu bông Corgi - Vẻ đáng yêu của chú chó Corgi trong phiên bản nhỏ', N'Gấu bông Corgi là một phiên bản nhỏ gọn và đáng yêu của chú chó Corgi nổi tiếng. Với bộ lông mềm mịn và đôi tai lớn đáng yêu, gấu bông Corgi mang đến vẻ đẹp và sự quyến rũ của chó Corgi trong một hình dạng nhỏ hơn. Chúng thường được thiết kế với một vẻ mặt đáng yêu, đôi mắt lấp lánh và miệng cười vui tươi. Gấu bông Corgi là một người bạn đồng hành hoàn hảo cho mọi lứa tuổi và là món quà tuyệt vời để làm cho ai đó vui vẻ và thỏa mãn.', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (20, N'Gấu bông Teddy
', N'https://gaubongonline.vn/wp-content/uploads/2022/10/head-tales-5.jpg', 6.0000, N'Gấu bông Teddy - Biểu tượng đáng yêu và trọn vẹn của tuổi thơ', N'Gấu bông Teddy là một trong những loại gấu bông phổ biến nhất trên thế giới. Với vẻ ngoài đáng yêu, bộ lông mềm mịn và đôi mắt lấp lánh, gấu bông Teddy đã trở thành biểu tượng của tuổi thơ và là bạn đồng hành trung thành của nhiều người trên khắp thế giới. Gấu bông Teddy thường có hình dáng tròn trịa, hai tai ngắn, và đôi chân mũm mĩm. Chất liệu chủ yếu để làm gấu bông Teddy là sợi nhung mềm mại hoặc vải nhung nhân tạo, giúp cho việc ôm gấu trở nên êm ái và an lành.', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (21, N'Gấu bông Bunny', N'https://vn-live-01.slatic.net/p/dea2227d5a7e2213fad4f89979dd55e1.jpg', 8.0000, N'Gấu bông Bunny - Sự dễ thương và ngọt ngào của chú thỏ trong phiên bản nhỏ', N'Gấu bông Bunny là một phiên bản nhỏ gọn của chú thỏ dễ thương. Với bộ lông mềm mịn và đôi tai dài, gấu bông Bunny mang lại sự ngọt ngào và dễ thương của chú thỏ trong một hình dạng nhỏ hơn. Chúng thường có một vẻ mặt đáng yêu với đôi mắt lấp lánh và mũi hồng nhạt. Gấu bông Bunny là một người bạn đồng hành tuyệt vời cho trẻ em và là món quà lý tưởng để truyền tải tình yêu và niềm vui.', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (22, N'Gấu bông Paddington', N'https://my-test-11.slatic.net/p/ac74db3c894d34d259af0588e9f9a12f.jpg', 10.0000, N'Gấu bông Paddington - Nhân vật huyền thoại đầy tình yêu thương', N'Gấu bông Paddington là một nhân vật xuất hiện trong loạt truyện tranh nổi tiếng của tác giả Michael Bond. Paddington là một chú gấu từ Peru, đã đến sống ở London và mang theo mình một chiếc vali cùng một tấm bảo đảm. Gấu bông Paddington được yêu thích bởi ngoại hình đáng yêu với mũ trắng, áo choàng đỏ, và chiếc vali nâu. Gấu bông Paddington mang trong mình thông điệp về tình yêu thương, sự hòa nhã và sự hiểu biết về văn hóa khác nhau.', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (23, N'Gấu bông Kitty', N'https://gaubongonline.vn/wp-content/uploads/2022/06/kitty-om-kitty-gbol-500x500.jpg', 11.0000, N'Gấu bông Kitty - Sự dịu dàng và đáng yêu của mèo trong phiên bản nhỏ', N'Gấu bông Kitty là một phiên bản nhỏ gọn của chú mèo đáng yêu. Với bộ lông mềm mịn và đôi tai nhọn, gấu bông Kitty mang đến sự dịu dàng và đáng yêu của mèo trong một hình dạng nhỏ hơn. Chúng thường có một vẻ mặt đáng yêu với đôi mắt lấp lánh và mũi hồng nhạt. Gấu bông Kitty là một người bạn đồng hành lý tưởng cho trẻ em và những người yêu mèo, đem đến niềm vui và sự ấm áp trong ngày hằng ngày.', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (24, N'Gấu bông Polar', N'https://cf.shopee.vn/file/512c35c3b1547c7bd50e4d54c7523b53', 12.0000, N'Gấu bông Polar - Vẻ đẹp trong trắng tinh khiết của vùng băng giá', N'Gấu bông Polar là một phiên bản đáng yêu của gấu trắng sống trong vùng băng giá của Bắc Cực. Với bộ lông trắng tinh khiết và đôi mắt đen lấp lánh, gấu bông Polar mang đến vẻ đẹp thiên nhiên hoang dã và không gian băng tuyết tráng lệ. Chúng thường có vẻ ngoài phát ra sự thoải mái và sự ấm áp, là người bạn đồng hành hoàn hảo trong những ngày lạnh giá.', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (25, N'Gấu bông Panda', N'https://pos.nvncdn.net/71a8b2-3946/ps/20220725_WwzqIBckaJ0VkRc430HY90Hq.jpg', 6.0000, N'Gấu bông Panda - Biểu tượng của sự đáng yêu và bảo vệ động vật', N'Gấu bông Panda là một trong những loại gấu bông phổ biến nhất trên thế giới. Với bộ lông đen trắng đặc trưng và mặt hài hước với các mảng mắt đen lớn, gấu bông Panda đã trở thành biểu tượng của sự đáng yêu và sự bảo vệ động vật. Chúng thường được làm từ chất liệu nhung mềm mịn và có thể có kích thước từ nhỏ đến lớn. Gấu bông Panda không chỉ mang lại niềm vui cho trẻ em mà còn nhắc nhở về tầm quan trọng của việc bảo vệ môi trường và động vật hoang dã.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (26, N'Gấu bông Panda Bé', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/403/461/products/4-3aa15343-1305-4881-9499-6c641d1ed9fa.jpg?v=1604563828457', 8.0000, N'Gấu bông Panda Bé - Vẻ đáng yêu và bảo vệ môi trường trong phiên bản nhỏ', N' Gấu bông Panda Bé là một phiên bản nhỏ gọn của gấu Panda nổi tiếng. Với bộ lông đen trắng đặc trưng và mặt hài hước với các mảng mắt đen lớn, gấu bông Panda Bé mang đến vẻ đáng yêu và sự bảo vệ môi trường của loài gấu trúc trong một hình dạng nhỏ hơn. Chúng thường có kích thước hoàn hảo để ôm và mang lại sự thoải mái. Gấu bông Panda Bé không chỉ là một người bạn đồng hành đáng yêu mà còn là một biểu tượng nhắc nhở về tầm quan trọng của việc bảo vệ môi trường và động vật hoang dã.', 2, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (27, N'Gấu bông Princess', N'https://gaubongonline.com.vn/wp-content/uploads/2020/11/heo-nam-princess-16.jpg', 4.0000, N'Gấu bông Princess - Vương miện của giấc mơ và sự kiêu sa trong phòng ngủ của bé gái', N'Gấu bông Princess là một người bạn đồng hành tuyệt vời cho các bé gái. Với váy công chúa lộng lẫy, vương miện và bộ lông mềm mịn, gấu bông Princess mang đến vẻ đẹp kiêu sa và giấc mơ của công chúa trong một hình dạng đáng yêu. Chúng thường có màu sắc tươi sáng và chi tiết đáng yêu như hoa vàng, ngọc trai giả và đôi mắt lấp lánh. Gấu bông Princess truyền tải thông điệp về sự quý phái, sự tự tin và giấc mơ của bé gái.', 4, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (28, N'Gấu bông Superhero', N'https://lzd-img-global.slatic.net/g/ff/kf/S02d430871780446ca205fe3f429fd428k.jpg_720x720q80.jpg', 7.0000, N'Gấu bông Superhero - Người hùng dũng cảm trong phòng ngủ của bé trai', N'Gấu bông Superhero là một người bạn đồng hành đáng yêu dành cho các bé trai. Với trang phục và mũ trang trí như các siêu anh hùng, gấu bông Superhero khuy encouragés bé phát triển trí tưởng tượng và khám phá thế giới anh hùng. Chúng được làm bằng chất liệu mềm mịn và an toàn cho bé, và thường có màu sắc sáng và nổi bật. Gấu bông Superhero truyền tải thông điệp về sự dũng cảm, sự mạnh mẽ và khả năng vượt qua trở ngại cho bé trai của bạn.', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (29, N'Gấu bông Xe hơi', N'https://admin.có-nên-mua.vn/Uploads/C8/Products/thiet-ke-thu-bong-XE-HOI-HONG-_62122.jpg', 9.0000, N'Gấu bông Xe hơi - Sự yêu thích của bé trai đam mê ô tô', N'Gấu bông Xe hơi là một sự kết hợp tuyệt vời giữa gấu bông và đam mê về ô tô của các bé trai. Gấu bông này có thiết kế với hình dạng và trang phục liên quan đến xe hơi, với bánh xe, lái và các chi tiết khác. Chúng thường có màu sắc rực rỡ và các họa tiết vui nhộn. Gấu bông Xe hơi giúp bé trai của bạn thể hiện tình yêu với ô tô và khám phá thế giới của xe cộ trong một môi trường an toàn và vui nhộn.', 3, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (30, N'Gấu bông Unicorn', N'https://gaubongcaocap.com/wp-content/uploads/2020/04/gau-bong-unicorn-nam.jpg', 11.0000, N'Gấu bông Unicorn - Sự kỳ diệu và thần tiên trong phòng ngủ của bé gái', N'Gấu bông Unicorn là một phiên bản đáng yêu và kỳ diệu dành cho các bé gái. Với sừng đồng và bộ lông màu pastel mềm mịn, gấu bông Unicorn mang đến vẻ đẹp thần tiên và sự tưởng tượng của những chú kỳ lân trong một hình dạng đáng yêu. Chúng thường có cánh và đôi mắt lấp lánh. Gấu bông Unicorn là một người bạn đồng hành ma thuật, giúp bé gái thể hiện sự tưởng tượng và sự mơ mộng.', 4, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (31, N'Gấu bông Pirate', N'https://lzd-img-global.slatic.net/g/p/0c0b633da67a2ae64c7a4c2b931d1a86.jpg_360x360q75.jpg_.webp', 12.0000, N'Gấu bông Pirate - Sự phiêu lưu và mạo hiểm trong phòng ngủ của bé trai', N'Gấu bông Pirate là một phiên bản dễ thương và phiêu lưu của gấu bông dành cho bé trai. Với trang phục hài hước và phụ kiện như mũ lưỡi hái và mắt kính, gấu bông Pirate khuyến khích bé trai sáng tạo và thỏa sức tưởng tượng về cuộc phiêu lưu trên biển khơi. Chúng thường có màu sắc tươi sáng và một vẻ mặt dễ thương. Gấu bông Pirate là một người bạn trung thành và can đảm, sẵn sàng cùng bé trai khám phá và tạo ra những chuyến phiêu lưu tuyệt vời.', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (32, N'Gấu bông Ballerina', N'data:image/jpeg;base64,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', 21.0000, N'Gấu bông Ballerina - Điệu nhảy và sự tinh tế trong phòng ngủ của bé gái', N'Gấu bông Ballerina là một người bạn đồng hành tuyệt vời cho các bé gái yêu mến nghệ thuật ballet. Với váy màu pastel và giày ballet, gấu bông Ballerina mang đến vẻ đẹp tinh tế và đam mê của một nghệ sĩ ballet trong một hình dạng đáng yêu. Chúng thường có màu sắc nhẹ nhàng và vẻ mặt tươi cười. Gấu bông Ballerina là người bạn đồng hành của bé gái trong việc thể hiện sự nữ tính và tài năng múa ballet.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (33, N'Gấu bông Kỵ sĩ', N'https://lamphatdat.com/wp-content/uploads/2020/09/shop-thu-nhoi-bong-hinh-hiep-si.jpg', 5.0000, N'Gấu bông Kỵ sĩ - Anh hùng trong thế giới của bé trai', N'Gấu bông Kỵ sĩ là một sự kết hợp độc đáo giữa gấu bông và hình ảnh của kỵ sĩ dũng cảm. Với áo giáp, mũ kỵ sĩ và vũ khí giả, gấu bông Kỵ sĩ khuyến khích bé trai sáng tạo và tưởng tượng về cuộc phiêu lưu và chiến đấu trong thế giới giả tưởng. Chúng thường có màu sắc nổi bật và vẻ mặt quyết tâm. Gấu bông Kỵ sĩ trở thành người bạn đồng hành đáng tin cậy trong cuộc hành trình của bé trai và mang lại niềm vui và sự an toàn.', 3, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (34, N'Gấu bông Thợ xây', N'https://chus.vn/images/detailed/204/1647352731_10038-06-f1_w767_h1105.jpg', 10.0000, N'Gấu bông Thợ xây - Sự sáng tạo và xây dựng trong thế giới của bé trai', N'Gấu bông Thợ xây là một người bạn đồng hành đáng yêu cho bé trai yêu thích xây dựng và sáng tạo. Với trang phục và phụ kiện liên quan đến công việc thợ xây, gấu bông này khuyến khích bé trai thể hiện khả năng sáng tạo và xây dựng. Chúng thường có màu sắc tươi sáng và vẻ mặt tươi cười. Gấu bông Thợ xây trở thành đồng đội đáng tin cậy của bé trai trong việc xây dựng và khám phá thế giới xung quanh.', 3, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (35, N'Gấu bông Mermaid', N'https://gaubongonline.vn/wp-content/uploads/2022/06/tien-ca-2.jpg', 12.0000, N'Gấu bông Mermaid - Sự ma thuật và biển cả trong phòng ngủ của bé gái', N'Gấu bông Mermaid là một phiên bản đáng yêu và ma thuật dành cho các bé gái yêu thích chủ đề tiên cá. Với vẻ ngoài xinh đẹp của một nàng tiên cá với vây cá mềm mịn và màu sắc pastel tươi sáng, gấu bông Mermaid mang đến sự ma mị và huyền bí của biển cả trong một hình dạng đáng yêu. Chúng thường có lông mềm mịn và vẻ mặt tươi cười. Gấu bông Mermaid là người bạn đồng hành của bé gái trong thế giới ma thuật và những chuyến phiêu lưu dưới biển.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (36, N'Gấu bông Fairy', N'https://gaudepsaigon.com/wp-content/uploads/2021/05/fairy-tail-300x300.jpg', 15.0000, N'Gấu bông Fairy - Sự phép thuật và sự lãng mạn trong phòng ngủ của bé gái', N'Gấu bông Fairy là một phiên bản đáng yêu và mơ mộng dành cho các bé gái. Với cánh và váy màu pastel tinh tế, gấu bông Fairy mang đến sự phép thuật và lãng mạn của những nàng tiên trong một hình dạng đáng yêu. Chúng thường có màu sắc nhẹ nhàng và vẻ mặt dịu dàng. Gấu bông Fairy là người bạn đồng hành của bé gái trong những cuộc phiêu lưu ma thuật và những giấc mơ tuyệt vời.', 4, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (19, N'viet', N'12345678', N'hanoi')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_product] FOREIGN KEY([AccountID])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shipping]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Category]
GO
