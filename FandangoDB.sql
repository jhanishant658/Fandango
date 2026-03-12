USE [FandangoDB]
GO
/****** Object:  Table [dbo].[account_he194197]    Script Date: 01/03/2025 3:30:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account_he194197](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone_number] [nvarchar](20) NULL,
	[role_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event_he194197]    Script Date: 01/03/2025 3:30:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event_he194197](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[startHour] [time](0) NULL,
	[date] [date] NULL,
 CONSTRAINT [PK__event__3213E83FE5458121] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[film_he194197]    Script Date: 01/03/2025 3:30:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[film_he194197](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[category] [nvarchar](50) NULL,
	[length] [int] NULL,
	[description] [ntext] NULL,
	[age_limit] [int] NULL,
	[director] [nvarchar](100) NULL,
	[actor] [nvarchar](255) NULL,
	[warning_text] [ntext] NULL,
	[publish_time] [datetime] NULL,
	[origin] [nvarchar](50) NULL,
	[img] [nvarchar](255) NULL,
	[img_background] [nvarchar](255) NULL,
	[status] [int] NULL,
	[trailer] [nvarchar](255) NULL,
 CONSTRAINT [PK__film__3213E83FECC0E214] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[news_he194197]    Script Date: 01/03/2025 3:30:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news_he194197](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[img] [nvarchar](255) NULL,
	[date] [date] NULL,
	[description] [ntext] NULL,
 CONSTRAINT [PK__news__3213E83FB84E9344] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room_he194197]    Script Date: 01/03/2025 3:30:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room_he194197](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[capacity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[seat_he194197]    Script Date: 01/03/2025 3:30:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seat_he194197](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[seat_number] [nvarchar](20) NOT NULL,
	[type] [nvarchar](50) NULL,
	[price] [int] NULL,
	[roomid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticket_film_he194197]    Script Date: 01/03/2025 3:30:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket_film_he194197](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[filmid] [int] NOT NULL,
	[roomid] [int] NOT NULL,
	[eventid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticket_he194197]    Script Date: 01/03/2025 3:30:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket_he194197](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[accountid] [int] NOT NULL,
	[seatid] [int] NOT NULL,
	[ticket_filmid] [int] NOT NULL,
	[bookingTime] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK__ticket__3213E83F39FA43E3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account_he194197] ON 

INSERT [dbo].[account_he194197] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (1, N'admin', N'123', N'Đặng', N'Huy', N'dqh02010505@gmail.com', N'0902676273', 0)
INSERT [dbo].[account_he194197] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (2, N'quan', N'123', N'Kiều', N'Quân', N'quan@123', N'0123456', 1)
INSERT [dbo].[account_he194197] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (4, N'tung', N'123', N'Phạm', N'Tùng', N'tung@123', N'012345', 1)
INSERT [dbo].[account_he194197] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (5, N'duc', N'123456', N'Trần', N'Đức', N'duc@123', N'012587', 1)
INSERT [dbo].[account_he194197] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (6, N'duong', N'123', N'Nguyễn', N'Dương', N'minh@123', N'1', 1)
INSERT [dbo].[account_he194197] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (7, N'phong', N'123', N'Phạm ', N'Phong', N'phong@123', N'0987563385', 1)
INSERT [dbo].[account_he194197] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (13, N'anna', N'123', N'Nguyễn', N'anna', N'anna@123', N'0983453445', 1)
INSERT [dbo].[account_he194197] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (15, N'khuongpd', N'123', N'Thành', N'Vinh', N'vinh@123', N'0980677028', 1)
INSERT [dbo].[account_he194197] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (16, N'tungtung', N'1234', N'Tùng', N'Tùng', N'tung@123', N'036750', 1)
INSERT [dbo].[account_he194197] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (18, N'tung', N'1234', N'Nguyễn', N'Tùng', N'ngtung@123', N'036750', 1)
INSERT [dbo].[account_he194197] ([id], [username], [password], [first_name], [last_name], [email], [phone_number], [role_id]) VALUES (19, N'minh', N'123', N'Minh', N'Sannnoo', N'tuffffffffn@222', N'11111222225', 1)
SET IDENTITY_INSERT [dbo].[account_he194197] OFF
GO
SET IDENTITY_INSERT [dbo].[event_he194197] ON 

INSERT [dbo].[event_he194197] ([id], [startHour], [date]) VALUES (1, CAST(N'09:00:00' AS Time), CAST(N'2025-03-01' AS Date))
INSERT [dbo].[event_he194197] ([id], [startHour], [date]) VALUES (2, CAST(N'11:00:00' AS Time), CAST(N'2025-03-01' AS Date))
INSERT [dbo].[event_he194197] ([id], [startHour], [date]) VALUES (3, CAST(N'13:00:00' AS Time), CAST(N'2025-03-01' AS Date))
INSERT [dbo].[event_he194197] ([id], [startHour], [date]) VALUES (4, CAST(N'15:00:00' AS Time), CAST(N'2025-03-01' AS Date))
INSERT [dbo].[event_he194197] ([id], [startHour], [date]) VALUES (5, CAST(N'17:00:00' AS Time), CAST(N'2025-03-01' AS Date))
INSERT [dbo].[event_he194197] ([id], [startHour], [date]) VALUES (6, CAST(N'19:00:00' AS Time), CAST(N'2025-03-01' AS Date))
SET IDENTITY_INSERT [dbo].[event_he194197] OFF
GO
SET IDENTITY_INSERT [dbo].[film_he194197] ON 

INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) VALUES (1, N'FLOW
', N'Hoạt Hình, Phiêu Lưu, Thần thoại
', 89, N'Trước bối cảnh hậu tận thế, chú mèo xám nhút nhát, vốn luôn sợ nước phải rời bỏ vùng an toàn khi căn nhà thân yêu bị cuốn trôi bởi cơn lũ dữ. Trên hành trình vượt đại dương mênh mông, chú mèo cùng những người bạn đồng hành (Capybara, chó Labrador Retriever, Vượn Cáo, chim Thư ký) phải học cách vượt qua nỗi sợ và chấp nhận những điểm khác biệt để cùng nhau tồn tại.', 0, N'Gints Zilbalodis
', N'
', N'P - Phim được phép phổ biến đến người xem ở mọi độ tuổi.
', CAST(N'2025-03-07T00:00:00.000' AS DateTime), N'Latvia', N'flow.jpg
', N'flow_backdrop.jpg
', 0
, N'https://www.youtube.com/watch?v=82WW9dVbglI') -- Add the YouTube trailer link here)
INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) VALUES (2, N'INTERSTELLAR
', N'Khoa Học Viễn Tưởng
', 169, N'Một đoàn thám hiểm vũ trụ sử dụng một hố đen mới được khám phá để du hành xuyên không gian đến những vì sao xa xôi và tìm kiếm hy vọng cho loài người. “Interstellar” là biên niên ký về cuộc phiêu lưu vĩ đại của một nhóm các nhà thám hiểm sử dụng khám phá mới về lỗ đen vũ trụ để vượt qua các giới hạn thông thường trong du hành không gian, chinh phục khoảng không mênh mông trên một chuyến hành trình xuyên dải ngân hà.', 13, N'Christopher Nolan', N'Matthew McConaughey, Anne Hathaway, Jessica Chastain', N'T13 - Phim được phổ biến đến người xem từ đủ 13 tuổi trở lên (13+)
', CAST(N'2025-02-28T00:00:00.000' AS DateTime), N'Mỹ', N'interstellar.jpg
', N'interstellar_backdrop.jpg
', 0
, N'https://www.youtube.com/watch?v=2LqzF5WauAw') -- Add the YouTube trailer link here)
INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) 
VALUES 
(3, N'The Substance', N'Kinh Dị, Khoa Học Viễn Tưởng', 125, N'Một câu chuyện kinh dị khoa học viễn tưởng xoay quanh một chất bí ẩn có khả năng thay đổi con người.', 18, N'Coralie Fargeat', N'Demi Moore, Margaret Qualley', N'18+ - Chỉ dành cho người trưởng thành.', CAST(N'2025-06-15T00:00:00.000' AS DateTime), N'Mỹ', N'the_substance.jpg', N'the_substance_backdrop.jpg', 0, N'https://www.youtube.com/watch?v=LNlrGhBpYjc');
INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) 
VALUES 
(4, N'Captain America: Brave New World', N'Hành Động, Siêu Anh Hùng', 140, N'Steve Rogers không còn là Captain America, nhưng thế giới vẫn cần một người hùng mới.', 13, N'Julius Onah', N'Anthony Mackie, Harrison Ford', N'T13 - Phim dành cho người từ 13 tuổi trở lên.', CAST(N'2025-07-26T00:00:00.000' AS DateTime), N'Mỹ', N'captain_america_brave_new_world.jpg', N'captain_america_brave_new_world_backdrop.jpg', 0, N'https://www.youtube.com/watch?v=1pHDWnXmK7Y');

INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) 
VALUES 
(5, N'Flight Risk', N'Hành Động, Hình Sự', 115, N'Một phi công bị buộc phải tham gia vào một phi vụ nguy hiểm để cứu mạng sống của mình.', 16, N'Mel Gibson', N'Mark Wahlberg, Michelle Dockery', N'T16 - Phim dành cho người từ 16 tuổi trở lên.', CAST(N'2025-09-10T00:00:00.000' AS DateTime), N'Mỹ', N'flight_risk.jpg', N'flight_risk_backdrop.jpg', 0, N'https://www.youtube.com/watch?v=ojC9JBuccJA');

INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) 
VALUES 
(6, N'Attack On Titan: The Last Attack', N'Hành Động, Anime', 130, N'Cuộc chiến cuối cùng giữa nhân loại và các Titan sẽ quyết định số phận của thế giới.', 16, N'Tetsuro Araki', N'Yuki Kaji, Yui Ishikawa', N'T16 - Phim dành cho người từ 16 tuổi trở lên.', CAST(N'2025-08-18T00:00:00.000' AS DateTime), N'Nhật Bản', N'aot.jpg', N'aot_backdrop.jpg', 0, N'https://www.youtube.com/watch?v=3xNH23QkNpk');

INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) 
VALUES 
(7, N'Paddington In Peru', N'Gia Đình, Phiêu Lưu', 100, N'Gấu Paddington trở lại với một cuộc phiêu lưu mới tại Peru.', 0, N'Douglas Wilson', N'Ben Whishaw', N'P - Phim dành cho mọi lứa tuổi.', CAST(N'2025-12-01T00:00:00.000' AS DateTime), N'Anh', N'paddington_in_peru.jpg', N'paddington_in_peru_backdrop.jpg', 0, N'https://www.youtube.com/watch?v=NTvudSGfHRI');

INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) 
VALUES 
(8, N'Mobile Suit Gundam GQuuuuuuX', N'Khoa Học Viễn Tưởng, Anime', 125, N'Chiến tranh giữa các vì sao với những bộ giáp máy Gundam tối tân.', 13, N'Yoshiyuki Tomino', N'Ayane Sakura, Mamoru Miyano', N'T13 - Phim dành cho người từ 13 tuổi trở lên.', CAST(N'2025-11-15T00:00:00.000' AS DateTime), N'Nhật Bản', N'gundam_gquuuuuux.jpg', N'gundam_gquuuuuux_backdrop.jpg', 0, N'https://www.youtube.com/watch?v=LnMIaFV4q6M');
INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) VALUES 
(9, N'The Monkey', N'Kinh Dị, Giật Gân', 105, N'Một con khỉ máy bí ẩn mang lại những tai họa chết chóc.', 16, N'Osgood Perkins', N'Theo James', N'T16 - Phim dành cho người từ 16 tuổi trở lên.', CAST(N'2025-10-05T00:00:00.000' AS DateTime), N'Mỹ', N'the_monkey.jpg', N'the_monkey_backdrop.jpg', 1, N'https://www.youtube.com/watch?v=husMGbXEIho');

INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) VALUES 
(10, N'Nosferatu', N'Hồi Hộp', 130, N'Một câu chuyện Gothic về nỗi ám ảnh giữa một phụ nữ trẻ bị ma ám và con ma cà rồng đáng sợ say mê cô ấy, gây ra nỗi kinh hoàng chưa từng thấy.', 18, N'Robert Eggers', N'Lily-Rose Depp, Nicholas Hoult, Bill Skarsgard', N'T18 - Phim được phổ biến đến người xem từ đủ 18 tuổi trở lên (18+)', CAST(N'2025-10-20T00:00:00.000' AS DateTime), N'Mỹ', N'nosferatu.jpg', N'nosferatu_backdrop.jpg', 0, N'https://www.youtube.com/watch?v=nulvWqYUM8k');

INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) VALUES 
(11, N'The Brutalist', N'Tâm Lý, Lịch Sử', 140, N'Một kiến trúc sư tài năng chiến đấu với sự bất công để thực hiện giấc mơ của mình.', 16, N'Brady Corbet', N'Adrien Brody, Felicity Jones', N'T16 - Phim dành cho người từ 16 tuổi trở lên.', CAST(N'2025-10-20T00:00:00.000' AS DateTime), N'Mỹ', N'the_brutalist.jpg', N'the_brutalist_backdrop.jpg', 0, N'https://www.youtube.com/watch?v=GdRXPAHIEW4');

INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) VALUES 
(12, N'Mickey 17', N'Khoa Học Viễn Tưởng', 118, N'Một người đàn ông bị buộc phải sống lại nhiều lần để hoàn thành một sứ mệnh.', 13, N'Bong Joon-ho', N'Robert Pattinson', N'T13 - Phim dành cho người từ 13 tuổi trở lên.', CAST(N'2025-09-20T00:00:00.000' AS DateTime), N'Mỹ', N'mickey_17.jpg', N'mickey_17_backdrop.jpg', 1, N'https://www.youtube.com/watch?v=osYpGSz_0i4');

INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) VALUES 
(13, N'A Minecraft Movie', N'Phiêu Lưu, Gia Đình', 115, N'Một thế giới Minecraft được đưa lên màn ảnh rộng với những thử thách không ngờ tới.', 7, N'Jared Hess', N'Jason Momoa', N'T7 - Phim dành cho người từ 7 tuổi trở lên.', CAST(N'2025-12-25T00:00:00.000' AS DateTime), N'Mỹ', N'minecraft_movie.jpg', N'minecraft_movie_backdrop.jpg', 1, N'https://www.youtube.com/watch?v=wJO_vIDZn-I');

INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) VALUES 
(14, N'Novocaine', N'Hài, Tội Phạm', 98, N'Một nha sĩ bình thường bị kéo vào một vụ án tội phạm nguy hiểm.', 16, N'David Atkins', N'Steve Martin, Helena Bonham Carter', N'T16 - Phim dành cho người từ 16 tuổi trở lên.', CAST(N'2025-06-30T00:00:00.000' AS DateTime), N'Mỹ', N'novocaine.jpg', N'novocaine_backdrop.jpg', 1, N'https://www.youtube.com/watch?v=-PyOIlJEdqA');

INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) VALUES 
(15, N'Thunderbolts', N'Hành Động, Siêu Anh Hùng', 135, N'Một nhóm siêu anh hùng bị lãng quên quay trở lại để hoàn thành nhiệm vụ cuối cùng.', 13, N'Jake Schreier', N'Florence Pugh, Sebastian Stan', N'T13 - Phim dành cho người từ 13 tuổi trở lên.', CAST(N'2025-07-25T00:00:00.000' AS DateTime), N'Mỹ', N'thunderbolts.jpg', N'thunderbolts_backdrop.jpg', 1, N'https://www.youtube.com/watch?v=hUUszE29jS0');

INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) VALUES 
(16, N'Superman', N'Hành Động, Siêu Anh Hùng', 150, N'Siêu nhân đối mặt với một thách thức lớn chưa từng có.', 13, N'James Gunn', N'David Corenswet, Rachel Brosnahan', N'T13 - Phim dành cho người từ 13 tuổi trở lên.', CAST(N'2025-07-11T00:00:00.000' AS DateTime), N'Mỹ', N'superman.jpg', N'superman_backdrop.jpg', 1, N'https://www.youtube.com/watch?v=uhUht6vAsMY');

INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) VALUES 
(17, N'The Fantastic Four: The First Steps', N'Khoa Học Viễn Tưởng, Siêu Anh Hùng', 145, N'Nhóm siêu anh hùng Fantastic Four bước vào một cuộc phiêu lưu vĩ đại.', 13, N'Matt Shakman', N'John Krasinski', N'T13 - Phim dành cho người từ 13 tuổi trở lên.', CAST(N'2025-08-08T00:00:00.000' AS DateTime), N'Mỹ', N'fantastic_four.jpg', N'fantastic_four_backdrop.jpg', 1, N'https://www.youtube.com/watch?v=AzMo-FgRp64');

INSERT [dbo].[film_he194197] ([id], [title], [category], [length], [description], [age_limit], [director], [actor], [warning_text], [publish_time], [origin], [img], [img_background], [status], [trailer]) VALUES 
(18, N'How To Train Your Dragon', N'Hài, Hành Động, Phiêu Lưu, Thần thoại', 135, N'Câu chuyện về một chàng trai trẻ với ước mơ trở thành thợ săn rồng, nhưng định mệnh lại đưa đẩy anh đến tình bạn bất ngờ với một chú rồng.', 0, N'Dean DeBlois', N'Mason Thames, Nico Parker, Gerard Butler', N'P - Phim dành cho mọi lứa tuổi.', CAST(N'2025-08-08T00:00:00.000' AS DateTime), N'Mỹ', N'httyd.jpg', N'httyd_backdrop.jpg', 1, N'https://www.youtube.com/watch?v=22w7z_lT6YM');

SET IDENTITY_INSERT [dbo].[film_he194197] OFF
GO
SET IDENTITY_INSERT [dbo].[news_he194197] ON 

INSERT [dbo].[news_he194197] ([id], [img], [date], [description]) VALUES (1, N'news1.jpg', CAST(N'2025-02-22' AS Date), N'“Flow” – Hiện tượng hoạt hình gây chấn động thế giới công bố lịch chiếu tại Việt Nam')
INSERT [dbo].[news_he194197] ([id], [img], [date], [description]) VALUES (2, N'news2.jpg', CAST(N'2025-02-28' AS Date), N'12 bộ phim bạn cần xem trước thềm Oscar 2025')
INSERT [dbo].[news_he194197] ([id], [img], [date], [description]) VALUES (3, N'news3.jpg', CAST(N'2025-02-17' AS Date), N'“Captain America: Brave New World” – “Mắt xích” trung gian trong tham vọng đại tu MCU')
INSERT [dbo].[news_he194197] ([id], [img], [date], [description]) VALUES (4, N'news4.jpg', CAST(N'2025-03-06' AS Date), N'Huyền thoại anime Gundam tái xuất màn ảnh rộng')
INSERT [dbo].[news_he194197] ([id], [img], [date], [description]) VALUES (5, N'news5.jpg', CAST(N'2025-03-05' AS Date), N'8 bộ phim nổi bật làm nên tên tuổi của Adrien Brody')
INSERT [dbo].[news_he194197] ([id], [img], [date], [description]) VALUES (6, N'news6.jpg', CAST(N'2025-03-03' AS Date), N'Oscar 2025: “Anora” thắng lớn với 5 giải thưởng, Adrien Brody giành giải Oscar thứ 2 sau 2 thập kỷ')
INSERT [dbo].[news_he194197] ([id], [img], [date], [description]) VALUES (7, N'news7.jpg', CAST(N'2025-02-18' AS Date), N'Tài tử Mark Wahlberg tái xuất với cuộc đào tẩu trên không trên không gây cấn tột độ')
INSERT [dbo].[news_he194197] ([id], [img], [date], [description]) VALUES (8, N'news8.jpg', CAST(N'2025-02-09' AS Date), N'Giải mã sức hút của “Na Tra: Ma Đồng Náo Hải” – siêu phẩm sắp đổ bộ rạp Việt')
INSERT [dbo].[news_he194197] ([id], [img], [date], [description]) VALUES (9, N'news9.jpg', CAST(N'2025-02-07' AS Date), N'Lý do “Attack on Titan” là anime xuất sắc nhất mọi thời đại')
INSERT [dbo].[news_he194197] ([id], [img], [date], [description]) VALUES (10, N'news10.jpg', CAST(N'2025-03-09' AS Date), N'Top 5 bộ phim hay nhất của đạo diễn Sean Baker')
INSERT [dbo].[news_he194197] ([id], [img], [date], [description]) VALUES (11, N'news11.jpg', CAST(N'2025-03-01' AS Date), N'“Nghề Siêu Khó Nói” – Phim hài Hàn Quốc dán nhãn T18 chuẩn bị đổ bộ rạp Việt')
INSERT [dbo].[news_he194197] ([id], [img], [date], [description]) VALUES (12, N'news12.jpg', CAST(N'2025-02-24' AS Date), N'“WE VIVA CINEMA” – Cuộc hội ngộ của những tâm hồn say mê Điện ảnh')
SET IDENTITY_INSERT [dbo].[news_he194197] OFF
GO
SET IDENTITY_INSERT [dbo].[room_he194197] ON 

INSERT [dbo].[room_he194197] ([id], [name], [capacity]) VALUES (1, N'Room A', 60)
INSERT [dbo].[room_he194197] ([id], [name], [capacity]) VALUES (2, N'Room B', 40)
INSERT [dbo].[room_he194197] ([id], [name], [capacity]) VALUES (3, N'Room C', 50)
INSERT [dbo].[room_he194197] ([id], [name], [capacity]) VALUES (4, N'Room D', 40)
INSERT [dbo].[room_he194197] ([id], [name], [capacity]) VALUES (5, N'Room E', 50)
INSERT [dbo].[room_he194197] ([id], [name], [capacity]) VALUES (6, N'Room F', 60)
INSERT [dbo].[room_he194197] ([id], [name], [capacity]) VALUES (7, N'Room H', 40)
INSERT [dbo].[room_he194197] ([id], [name], [capacity]) VALUES (8, N'Room G', 50)
INSERT [dbo].[room_he194197] ([id], [name], [capacity]) VALUES (9, N'Room J', 60)
SET IDENTITY_INSERT [dbo].[room_he194197] OFF
GO
SET IDENTITY_INSERT [dbo].[seat_he194197] ON 

INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (1, N'A1', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (2, N'A2', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (3, N'A3', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (4, N'A4', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (5, N'A5', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (6, N'A6', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (7, N'A7', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (8, N'A8', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (9, N'A9', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (10, N'A10', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (11, N'B1', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (12, N'B2', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (13, N'B3', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (14, N'B4', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (15, N'B5', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (16, N'B6', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (17, N'B7', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (18, N'B8', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (19, N'B9', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (20, N'B10', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (21, N'C1', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (22, N'C2', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (23, N'C3', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (24, N'C4', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (25, N'C5', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (26, N'C6', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (27, N'C7', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (28, N'C8', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (29, N'C9', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (30, N'C10', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (31, N'A1', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (32, N'A2', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (33, N'A3', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (34, N'A4', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (35, N'A5', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (36, N'A6', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (37, N'A7', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (38, N'A8', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (39, N'A9', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (40, N'A10', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (41, N'B1', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (42, N'B2', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (43, N'B3', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (44, N'B4', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (45, N'B5', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (46, N'B6', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (47, N'B7', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (48, N'B8', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (49, N'B9', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (50, N'B10', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (51, N'C1', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (52, N'C2', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (53, N'C3', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (54, N'C4', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (55, N'C5', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (56, N'C6', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (57, N'C7', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (58, N'C8', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (59, N'C9', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (60, N'C10', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (61, N'D1', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (62, N'D2', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (63, N'D3', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (64, N'D4', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (65, N'D5', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (66, N'D6', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (67, N'D7', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (68, N'D8', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (69, N'D9', N'VIP', 150000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (70, N'D10', N'Standard', 100000, 2)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (71, N'A1', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (72, N'A2', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (73, N'A3', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (74, N'A4', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (75, N'A5', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (76, N'A6', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (77, N'A7', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (78, N'A8', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (79, N'A9', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (80, N'A10', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (81, N'B1', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (82, N'B2', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (83, N'B3', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (84, N'B4', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (85, N'B5', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (86, N'B6', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (87, N'B7', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (88, N'B8', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (89, N'B9', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (90, N'B10', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (91, N'C1', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (92, N'C2', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (93, N'C3', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (94, N'C4', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (95, N'C5', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (96, N'C6', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (97, N'C7', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (98, N'C8', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (99, N'C9', N'Standard', 100000, 3)
GO
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (100, N'C10', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (101, N'D1', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (102, N'D2', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (103, N'D3', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (104, N'D4', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (105, N'D5', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (106, N'D6', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (107, N'D7', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (108, N'D8', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (109, N'D9', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (110, N'D10', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (111, N'E1', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (112, N'E2', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (113, N'E3', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (114, N'E4', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (115, N'E5', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (116, N'E6', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (117, N'E7', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (118, N'E8', N'VIP', 150000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (119, N'E9', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (120, N'E10', N'Standard', 100000, 3)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (121, N'D1', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (122, N'D2', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (123, N'D3', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (124, N'D4', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (125, N'D5', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (126, N'D6', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (127, N'D7', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (128, N'D8', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (129, N'D9', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (130, N'D10', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (131, N'E1', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (132, N'E2', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (133, N'E3', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (134, N'E4', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (135, N'E5', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (136, N'E6', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (137, N'E7', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (138, N'E8', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (139, N'E9', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (140, N'E10', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (141, N'F1', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (142, N'F2', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (143, N'F3', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (144, N'F4', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (145, N'F5', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (146, N'F6', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (147, N'F7', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (148, N'F8', N'VIP', 150000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (149, N'F9', N'Standard', 100000, 1)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (150, N'F10', N'Standard', 100000, 1)

INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (151, N'A1', N'Standard', 100000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (152, N'A2', N'Standard', 100000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (153, N'A3', N'Standard', 100000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (154, N'A4', N'Standard', 100000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (155, N'A5', N'Standard', 100000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (156, N'A6', N'Standard', 100000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (157, N'A7', N'Standard', 100000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (158, N'A8', N'Standard', 100000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (159, N'A9', N'Standard', 100000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (160, N'A10', N'Standard', 100000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (161, N'B1', N'Standard', 100000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (162, N'B2', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (163, N'B3', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (164, N'B4', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (165, N'B5', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (166, N'B6', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (167, N'B7', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (168, N'B8', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (169, N'B9', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (170, N'B10', N'Standard', 100000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (171, N'C1', N'Standard', 100000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (172, N'C2', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (173, N'C3', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (174, N'C4', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (175, N'C5', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (176, N'C6', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (177, N'C7', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (178, N'C8', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (179, N'C9', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (180, N'C10', N'Standard', 100000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (181, N'D1', N'Standard', 100000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (182, N'D2', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (183, N'D3', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (184, N'D4', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (185, N'D5', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (186, N'D6', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (187, N'D7', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (188, N'D8', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (189, N'D9', N'VIP', 150000, 4)
INSERT [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid]) VALUES (190, N'D10', N'Standard', 100000, 4)



SET IDENTITY_INSERT [dbo].[seat_he194197] OFF
GO
SET IDENTITY_INSERT [dbo].[ticket_film_he194197] ON 

INSERT [dbo].[ticket_film_he194197] ([id], [filmid], [roomid], [eventid]) VALUES (1, 1, 1, 1)
INSERT [dbo].[ticket_film_he194197] ([id], [filmid], [roomid], [eventid]) VALUES (2, 1, 2, 2)
INSERT [dbo].[ticket_film_he194197] ([id], [filmid], [roomid], [eventid]) VALUES (3, 1, 3, 4)
INSERT [dbo].[ticket_film_he194197] ([id], [filmid], [roomid], [eventid]) VALUES (4, 2, 2, 3)
INSERT [dbo].[ticket_film_he194197] ([id], [filmid], [roomid], [eventid]) VALUES (5, 2, 3, 1)
INSERT [dbo].[ticket_film_he194197] ([id], [filmid], [roomid], [eventid]) VALUES (6, 3, 3, 3)
INSERT [dbo].[ticket_film_he194197] ([id], [filmid], [roomid], [eventid]) VALUES (7, 3, 2, 1)
INSERT [dbo].[ticket_film_he194197] ([id], [filmid], [roomid], [eventid]) VALUES (8, 11, 6, 6)
INSERT [dbo].[ticket_film_he194197] ([id], [filmid], [roomid], [eventid]) VALUES (9, 11, 7, 5)
INSERT [dbo].[ticket_film_he194197] ([id], [filmid], [roomid], [eventid]) VALUES (10, 11, 7, 5)
INSERT [dbo].[ticket_film_he194197] ([id], [filmid], [roomid], [eventid]) VALUES (11, 9, 6, 5)
INSERT [dbo].[ticket_film_he194197] ([id], [filmid], [roomid], [eventid]) VALUES (12, 9, 6, 5)
INSERT [dbo].[ticket_film_he194197] ([id], [filmid], [roomid], [eventid]) VALUES (13, 9, 6, 5)
INSERT [dbo].[ticket_film_he194197] ([id], [filmid], [roomid], [eventid]) VALUES (14, 8, 7, 4)
INSERT [dbo].[ticket_film_he194197] ([id], [filmid], [roomid], [eventid]) VALUES (15, 8, 7, 3)
SET IDENTITY_INSERT [dbo].[ticket_film_he194197] OFF
GO
SET IDENTITY_INSERT [dbo].[ticket_he194197] ON 

INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (1, 2, 1, 1, CAST(N'2025-03-02T11:20:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (3, 2, 3, 1, CAST(N'2025-03-02T19:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (4, 2, 14, 1, CAST(N'2025-03-02T21:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (20, 7, 17, 1, CAST(N'2025-03-02T20:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (21, 7, 55, 2, CAST(N'2025-03-01T10:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (22, 7, 56, 2, CAST(N'2025-03-03T11:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (23, 2, 55, 4, CAST(N'2025-03-03T11:00:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (24, 2, 56, 4, CAST(N'2025-03-01T11:11:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (25, 2, 95, 6, CAST(N'2025-03-01T11:22:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (26, 13, 64, 4, CAST(N'2025-03-01T10:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (27, 13, 65, 4, CAST(N'2025-03-01T10:22:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (28, 13, 125, 1, CAST(N'2025-03-01T09:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (29, 13, 68, 2, CAST(N'2025-03-01T08:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (30, 13, 56, 7, CAST(N'2025-03-01T17:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (31, 2, 126, 1, CAST(N'2025-03-01T16:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (32, 15, 143, 1, CAST(N'2025-03-01T15:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (33, 15, 142, 1, CAST(N'2025-03-01T14:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (34, 16, 99, 6, CAST(N'2025-03-01T13:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (35, 16, 100, 6, CAST(N'2025-03-01T12:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (36, 18, 105, 6, CAST(N'2025-03-01T01:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (37, 18, 106, 6, CAST(N'2025-03-01T02:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (41, 7, 83, 6, CAST(N'2025-03-01T02:22:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (49, 7, 31, 4, CAST(N'2025-03-05T11:19:51.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (50, 7, 32, 4, CAST(N'2025-03-05T11:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (51, 7, 33, 4, CAST(N'2025-03-05T11:21:21.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (52, 7, 41, 4, CAST(N'2025-03-05T11:24:14.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (53, 7, 42, 4, CAST(N'2025-03-05T11:24:14.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (54, 7, 51, 4, CAST(N'2025-03-05T11:24:14.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (103, 2, 128, 1, CAST(N'2025-03-05T19:10:37.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (316, 7, 9, 1, CAST(N'2025-03-06T13:04:29.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (317, 7, 10, 1, CAST(N'2025-03-06T13:04:29.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (342, 19, 121, 1, CAST(N'2025-03-06T14:23:12.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (343, 19, 131, 1, CAST(N'2025-03-06T14:23:12.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (368, 15, 140, 1, CAST(N'2025-03-07T10:19:41.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (369, 15, 150, 1, CAST(N'2025-03-07T10:19:41.000' AS DateTime), 1)
INSERT [dbo].[ticket_he194197] ([id], [accountid], [seatid], [ticket_filmid], [bookingTime], [status]) VALUES (372, 15, 145, 1, CAST(N'2025-03-07T10:20:26.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ticket_he194197] OFF
GO
ALTER TABLE [dbo].[seat_he194197]  WITH CHECK ADD  CONSTRAINT [FKseat283365] FOREIGN KEY([roomid])
REFERENCES [dbo].[room_he194197] ([id])
GO
ALTER TABLE [dbo].[seat_he194197] CHECK CONSTRAINT [FKseat283365]
GO
ALTER TABLE [dbo].[ticket_film_he194197]  WITH CHECK ADD  CONSTRAINT [FKticket_fil165113] FOREIGN KEY([filmid])
REFERENCES [dbo].[film_he194197] ([id])
GO
ALTER TABLE [dbo].[ticket_film_he194197] CHECK CONSTRAINT [FKticket_fil165113]
GO
ALTER TABLE [dbo].[ticket_film_he194197]  WITH CHECK ADD  CONSTRAINT [FKticket_fil419413] FOREIGN KEY([eventid])
REFERENCES [dbo].[event_he194197] ([id])
GO
ALTER TABLE [dbo].[ticket_film_he194197] CHECK CONSTRAINT [FKticket_fil419413]
GO
ALTER TABLE [dbo].[ticket_film_he194197]  WITH CHECK ADD  CONSTRAINT [FKticket_fil621101] FOREIGN KEY([roomid])
REFERENCES [dbo].[room_he194197] ([id])
GO
ALTER TABLE [dbo].[ticket_film_he194197] CHECK CONSTRAINT [FKticket_fil621101]
GO
ALTER TABLE [dbo].[ticket_he194197]  WITH CHECK ADD  CONSTRAINT [FKticket397351] FOREIGN KEY([ticket_filmid])
REFERENCES [dbo].[ticket_film_he194197] ([id])
GO
ALTER TABLE [dbo].[ticket_he194197] CHECK CONSTRAINT [FKticket397351]
GO
ALTER TABLE [dbo].[ticket_he194197]  WITH CHECK ADD  CONSTRAINT [FKticket662524] FOREIGN KEY([accountid])
REFERENCES [dbo].[account_he194197] ([id])
GO
ALTER TABLE [dbo].[ticket_he194197] CHECK CONSTRAINT [FKticket662524]
GO
ALTER TABLE [dbo].[ticket_he194197]  WITH CHECK ADD  CONSTRAINT [FKticket767716] FOREIGN KEY([seatid])
REFERENCES [dbo].[seat_he194197] ([id])
GO
ALTER TABLE [dbo].[ticket_he194197] CHECK CONSTRAINT [FKticket767716]
GO






DECLARE @id INT = 301;
DECLARE @row CHAR(1), @num INT;
DECLARE @seat_type NVARCHAR(50);

DECLARE seat_cursor CURSOR FOR
SELECT r FROM (VALUES ('A'), ('B'), ('C'), ('D')) AS Rooms(r);

OPEN seat_cursor;
FETCH NEXT FROM seat_cursor INTO @row;

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @num = 1;
    WHILE @num <= 10
    BEGIN
        SET @seat_type = CASE
            WHEN @row = 'A' THEN 'Standard'  -- Ensure all A row seats are Standard
            WHEN @num BETWEEN 2 AND 9 THEN 'VIP'
            ELSE 'Standard'
        END;
        
		SET IDENTITY_INSERT [dbo].[seat_he194197] ON;


        INSERT INTO [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid])
        VALUES (@id, N'' + @row + CAST(@num AS NVARCHAR), @seat_type, 
                CASE WHEN @seat_type = 'VIP' THEN 150000 ELSE 100000 END, 7);
        
        SET @id = @id + 1;
        SET @num = @num + 1;
    END;
    
    FETCH NEXT FROM seat_cursor INTO @row;
END;

CLOSE seat_cursor;
DEALLOCATE seat_cursor;

go

DECLARE @id INT = 341;
DECLARE @row CHAR(1), @num INT;
DECLARE @seat_type NVARCHAR(50);

DECLARE seat_cursor CURSOR FOR
SELECT r FROM (VALUES ('A'), ('B'), ('C'), ('D'), ('E')) AS Rooms(r);

OPEN seat_cursor;
FETCH NEXT FROM seat_cursor INTO @row;

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @num = 1;
    WHILE @num <= 10
    BEGIN
        SET @seat_type = CASE
            WHEN @row = 'A' THEN 'Standard'  -- Ensure all A row seats are Standard
            WHEN @num BETWEEN 3 AND 8 THEN 'VIP'
            ELSE 'Standard'
        END;
        
        INSERT INTO [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid])
        VALUES (@id, N'' + @row + CAST(@num AS NVARCHAR), @seat_type, 
                CASE WHEN @seat_type = 'VIP' THEN 150000 ELSE 100000 END, 8);
        
        SET @id = @id + 1;
        SET @num = @num + 1;
    END;
    
    FETCH NEXT FROM seat_cursor INTO @row;
END;

CLOSE seat_cursor;
DEALLOCATE seat_cursor;


go

DECLARE @id INT = 391;
DECLARE @row CHAR(1), @num INT;
DECLARE @seat_type NVARCHAR(50);

DECLARE seat_cursor CURSOR FOR
SELECT r FROM (VALUES ('A'), ('B'), ('C'), ('D'), ('E'), ('F')) AS Rooms(r);

OPEN seat_cursor;
FETCH NEXT FROM seat_cursor INTO @row;

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @num = 1;
    WHILE @num <= 10
    BEGIN
        SET @seat_type = CASE
            WHEN @row = 'A' THEN 'Standard'  -- Ensure all A row seats are Standard
            WHEN @num BETWEEN 3 AND 8 THEN 'VIP'
            ELSE 'Standard'
        END;
        
        INSERT INTO [dbo].[seat_he194197] ([id], [seat_number], [type], [price], [roomid])
        VALUES (@id, N'' + @row + CAST(@num AS NVARCHAR), @seat_type, 
                CASE WHEN @seat_type = 'VIP' THEN 150000 ELSE 100000 END, 9);
        
        SET @id = @id + 1;
        SET @num = @num + 1;
    END;
    
    FETCH NEXT FROM seat_cursor INTO @row;
END;

CLOSE seat_cursor;
DEALLOCATE seat_cursor;




UPDATE seat_he194197
SET roomid = 8
WHERE roomid = 5 AND id >= 341 AND id < (341 + 50);



select tf.id, f.title, e.startHour, e.date, r.name
from ticket_film_he194197 tf, film_he194197 f, event_he194197 e, room_he194197 r
where tf.filmid = f.id and tf.eventid=e.id and r.id=tf.roomid




select * from account_he194197

Insert into Account_he194197 values (N'minhsan', N'1', N'Minh', N'Sannnoo', N'tuffffffffn@222', N'0989718189', 1)
SET IDENTITY_INSERT [dbo].[seat_he194197] OFF;

SELECT SUM(s.price) FROM ticket_he194197 t 
JOIN seat_he194197 s ON t.seatid = s.id



SELECT TOP 5 f.title, COUNT(t.id) AS sales FROM ticket_he194197 t 
JOIN ticket_film_he194197 tf ON t.ticket_filmid = tf.id 
JOIN film_he194197 f ON tf.filmid = f.id 
GROUP BY f.title ORDER BY sales DESC 


SELECT TOP 5 a.username, COUNT(t.id) AS tickets FROM ticket_he194197 t 
JOIN account_he194197 a ON t.accountid = a.id 
GROUP BY a.username ORDER BY tickets DESC 