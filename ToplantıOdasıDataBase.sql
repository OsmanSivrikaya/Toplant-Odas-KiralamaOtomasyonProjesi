USE [u7173324_iMRRS]
GO
/****** Object:  User [u7173324_team5]    Script Date: 18.12.2021 15:31:37 ******/
CREATE USER [u7173324_team5] FOR LOGIN [u7173324_team5] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [u7173324_team5]
GO
/****** Object:  Table [dbo].[datDepartments]    Script Date: 18.12.2021 15:31:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datDepartments](
	[DeptID] [tinyint] IDENTITY(1,1) NOT NULL,
	[DeptName] [nvarchar](50) NULL,
 CONSTRAINT [PK_datDepartments] PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datLog]    Script Date: 18.12.2021 15:31:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datLog](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [smallint] NOT NULL,
	[LoginDT] [nvarchar](12) NOT NULL,
	[LogoutDT] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_datLog] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datResRequest]    Script Date: 18.12.2021 15:31:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datResRequest](
	[RRID] [int] IDENTITY(1,1) NOT NULL,
	[RoomID] [smallint] NULL,
	[ResSDT] [nvarchar](12) NULL,
	[ResEDT] [nvarchar](12) NULL,
	[UserID] [smallint] NULL,
	[RStatus] [char](1) NULL,
	[RezervOnay] [smallint] NULL,
 CONSTRAINT [PK_datResReq] PRIMARY KEY CLUSTERED 
(
	[RRID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datRoom]    Script Date: 18.12.2021 15:31:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datRoom](
	[RoomID] [smallint] IDENTITY(1,1) NOT NULL,
	[RName] [nvarchar](50) NOT NULL,
	[RStatus] [smallint] NOT NULL,
	[RPCapacity] [tinyint] NULL,
	[RProjection] [smallint] NULL,
	[RIBoard] [smallint] NULL,
	[RInternet] [smallint] NULL,
	[RIPTV] [smallint] NULL,
	[RVOIP] [smallint] NULL,
 CONSTRAINT [PK_datRoom] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datUser]    Script Date: 18.12.2021 15:31:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datUser](
	[UserID] [smallint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](10) NOT NULL,
	[UserPass] [nvarchar](10) NOT NULL,
	[UserFName] [nvarchar](20) NULL,
	[UserLName] [nvarchar](20) NULL,
	[UserEMail] [nvarchar](30) NULL,
	[UserType] [char](1) NULL,
	[UserDeptID] [tinyint] NULL,
 CONSTRAINT [PK_datUser] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[datDepartments] ON 

INSERT [dbo].[datDepartments] ([DeptID], [DeptName]) VALUES (1, N'Bilgi İşlem')
INSERT [dbo].[datDepartments] ([DeptID], [DeptName]) VALUES (2, N'İnsan Kaynakları')
INSERT [dbo].[datDepartments] ([DeptID], [DeptName]) VALUES (3, N'Tasarım')
INSERT [dbo].[datDepartments] ([DeptID], [DeptName]) VALUES (4, N'Üretim')
INSERT [dbo].[datDepartments] ([DeptID], [DeptName]) VALUES (5, N'Eğitim')
SET IDENTITY_INSERT [dbo].[datDepartments] OFF
GO
SET IDENTITY_INSERT [dbo].[datResRequest] ON 

INSERT [dbo].[datResRequest] ([RRID], [RoomID], [ResSDT], [ResEDT], [UserID], [RStatus], [RezervOnay]) VALUES (1, 1, N'202112160900', N'202112161000', 1, N'1', 1)
INSERT [dbo].[datResRequest] ([RRID], [RoomID], [ResSDT], [ResEDT], [UserID], [RStatus], [RezervOnay]) VALUES (2, 6, N'202112161300', N'202112161600', 2, N'1', 0)
INSERT [dbo].[datResRequest] ([RRID], [RoomID], [ResSDT], [ResEDT], [UserID], [RStatus], [RezervOnay]) VALUES (3, 10, N'202112161300', N'202112161700', 2, N'1', 0)
INSERT [dbo].[datResRequest] ([RRID], [RoomID], [ResSDT], [ResEDT], [UserID], [RStatus], [RezervOnay]) VALUES (5, 4, N'202112160900', N'202112161300', 2, N'1', 0)
INSERT [dbo].[datResRequest] ([RRID], [RoomID], [ResSDT], [ResEDT], [UserID], [RStatus], [RezervOnay]) VALUES (6, 6, N'202112161400', N'202112161600', 2, N'1', 0)
INSERT [dbo].[datResRequest] ([RRID], [RoomID], [ResSDT], [ResEDT], [UserID], [RStatus], [RezervOnay]) VALUES (7, 9, N'202112160900', N'202112161200', 2, N'1', 0)
SET IDENTITY_INSERT [dbo].[datResRequest] OFF
GO
SET IDENTITY_INSERT [dbo].[datRoom] ON 

INSERT [dbo].[datRoom] ([RoomID], [RName], [RStatus], [RPCapacity], [RProjection], [RIBoard], [RInternet], [RIPTV], [RVOIP]) VALUES (1, N'Ephesus', 1, 50, 0, 1, 0, 0, 0)
INSERT [dbo].[datRoom] ([RoomID], [RName], [RStatus], [RPCapacity], [RProjection], [RIBoard], [RInternet], [RIPTV], [RVOIP]) VALUES (2, N'Phokaia', 1, 200, 1, 1, 1, 1, 0)
INSERT [dbo].[datRoom] ([RoomID], [RName], [RStatus], [RPCapacity], [RProjection], [RIBoard], [RInternet], [RIPTV], [RVOIP]) VALUES (3, N'Milet', 1, 10, 1, 0, 1, 0, 1)
INSERT [dbo].[datRoom] ([RoomID], [RName], [RStatus], [RPCapacity], [RProjection], [RIBoard], [RInternet], [RIPTV], [RVOIP]) VALUES (4, N'Aspendos', 1, 20, 1, 1, 1, 0, 0)
INSERT [dbo].[datRoom] ([RoomID], [RName], [RStatus], [RPCapacity], [RProjection], [RIBoard], [RInternet], [RIPTV], [RVOIP]) VALUES (5, N'Theos', 1, 100, 1, 1, 1, 1, 0)
INSERT [dbo].[datRoom] ([RoomID], [RName], [RStatus], [RPCapacity], [RProjection], [RIBoard], [RInternet], [RIPTV], [RVOIP]) VALUES (6, N'Aizanoi', 1, 6, 1, 0, 1, 0, 1)
INSERT [dbo].[datRoom] ([RoomID], [RName], [RStatus], [RPCapacity], [RProjection], [RIBoard], [RInternet], [RIPTV], [RVOIP]) VALUES (7, N'Anavarza', 1, 6, 1, 0, 1, 0, 0)
INSERT [dbo].[datRoom] ([RoomID], [RName], [RStatus], [RPCapacity], [RProjection], [RIBoard], [RInternet], [RIPTV], [RVOIP]) VALUES (8, N'Zeugma', 1, 10, 1, 0, 1, 0, 1)
INSERT [dbo].[datRoom] ([RoomID], [RName], [RStatus], [RPCapacity], [RProjection], [RIBoard], [RInternet], [RIPTV], [RVOIP]) VALUES (9, N'Knidos', 1, 50, 1, 1, 1, 1, 0)
INSERT [dbo].[datRoom] ([RoomID], [RName], [RStatus], [RPCapacity], [RProjection], [RIBoard], [RInternet], [RIPTV], [RVOIP]) VALUES (10, N'Apollon', 1, 30, 1, 0, 1, 0, 0)
SET IDENTITY_INSERT [dbo].[datRoom] OFF
GO
SET IDENTITY_INSERT [dbo].[datUser] ON 

INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (1, N'ukaracivi', N'12345', N'Ümit', N'KARAÇİVİ', N'umit.karacivi@outlook.com', N'1', 1)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (2, N'osivrikaya', N'12345', N'Osman', N'SİVRİKAYA', N'osmansivrikaya@outlook.com', N'1', 1)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (3, N'asimsek', N'12345', N'Adem', N'ŞİMŞEK', N'ademsiimsek@gmail.com', N'1', 1)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (4, N'tergun', N'12345', N'Tuğcan', N'ERGÜN', N'tugcanergun@hotmail.com', N'1', 1)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (5, N'abowsher', N'12345', N'Athena', N'Bowsher', N'abowsher0@wsj.com', N'2', 2)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (6, N'aflipsen', N'12345', N'Aubrey', N'Flipsen', N'aflipsen1@guardian.co.uk', N'3', 2)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (8, N'atatem', N'12345', N'Anson', N'Tatem', N'atatem3@accuweather.com', N'3', 2)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (9, N'cdrance', N'12345', N'Curcio', N'Drance', N'cdrance4@bbc.co.uk', N'3', 2)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (10, N'lsuatt', N'12345', N'Lyndel', N'Suatt', N'lsuatt5@taobao.com', N'3', 2)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (11, N'dmainston', N'12345', N'Darill', N'Mainston', N'dmainston6@gov.uk', N'3', 2)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (14, N'agoldsack', N'12345', N'Aubert', N'Goldsack', N'agoldsack9@columbia.edu', N'2', 3)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (16, N'rbirdsall', N'12345', N'Rebecka', N'Birdsall', N'rbirdsallb@theatlantic.com', N'3', 3)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (18, N'kastill', N'12345', N'Kittie', N'Astill', N'kastilld@java.com', N'3', 3)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (19, N'jtidbury', N'12345', N'Jecho', N'Tidbury', N'jtidburye@ask.com', N'3', 3)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (21, N'wkew', N'12345', N'Willem', N'Kew', N'wkewg@1688.com', N'3', 3)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (22, N'dennew', N'12345', N'Delano', N'Ennew', N'dennewh@google.com', N'3', 3)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (23, N'eeyer', N'12345', N'Esta', N'Eyer', N'eeyeri@umich.edu', N'2', 4)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (24, N'esallans', N'12345', N'Evie', N'Sallans', N'esallansj@blinklist.com', N'3', 4)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (25, N'jtarbet', N'12345', N'Julieta', N'Tarbet', N'jtarbetk@histats.com', N'3', 4)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (26, N'jbraundt', N'12345', N'Jere', N'Braundt', N'jbraundtl@artisteer.com', N'3', 4)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (27, N'rducker', N'12345', N'Rosemonde', N'Ducker', N'rduckerm@hc360.com', N'3', 4)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (28, N'tspaxman', N'12345', N'Teodor', N'Spaxman', N'tspaxmann@businesswire.com', N'3', 4)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (29, N'ananni', N'12345', N'Agnese', N'Nanni', N'anannio@miibeian.gov.cn', N'2', 5)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (30, N'esokill', N'12345', N'Everett', N'Sokill', N'esokillp@slashdot.org', N'3', 5)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (33, N'sfucher', N'12345', N'Sara', N'Fucher', N'sfuchers@pcworld.com', N'3', 5)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (35, N'xkemmis', N'12345', N'Xylia', N'Kemmis', N'xkemmisu@spotify.com', N'3', 5)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (37, N'smalcolm', N'12345', N'Saw', N'Malcolm', N'smalcolmw@mozilla.org', N'3', 5)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (39, N'mdefraine', N'12345', N'Milissent', N'Defraine', N'mdefrainey@sourceforge.net', N'3', 5)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (40, N'wbeurich', N'12345', N'Winfred', N'Beurich', N'wbeurichz@oaic.gov.au', N'3', 2)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (42, N'thelwig', N'12345', N'Teirtza', N'Helwig', N'thelwig11@example.com', N'3', 2)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (43, N'lmoreno', N'12345', N'Liza', N'Moreno', N'lmoreno12@last.fm', N'3', 3)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (44, N'jhewell', N'12345', N'Johannah', N'Hewell', N'jhewell13@yellowbook.com', N'3', 3)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (45, N'jerrowe', N'12345', N'Jorge', N'Errowe', N'jerrowe14@shinystat.com', N'3', 4)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (49, N'sbelli', N'12345', N'Sibelle', N'Belli', N'sbelli18@shareasale.com', N'3', 5)
INSERT [dbo].[datUser] ([UserID], [UserName], [UserPass], [UserFName], [UserLName], [UserEMail], [UserType], [UserDeptID]) VALUES (52, N'gwinny', N'12345', N'Gasparo', N'Winny', N'gwinny1b@xinhuanet.com', N'3', 4)
SET IDENTITY_INSERT [dbo].[datUser] OFF
GO
ALTER TABLE [dbo].[datResRequest]  WITH CHECK ADD  CONSTRAINT [FK_datResRequest_datRoom] FOREIGN KEY([RoomID])
REFERENCES [dbo].[datRoom] ([RoomID])
GO
ALTER TABLE [dbo].[datResRequest] CHECK CONSTRAINT [FK_datResRequest_datRoom]
GO
ALTER TABLE [dbo].[datResRequest]  WITH CHECK ADD  CONSTRAINT [FK_datResRequest_datUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[datUser] ([UserID])
GO
ALTER TABLE [dbo].[datResRequest] CHECK CONSTRAINT [FK_datResRequest_datUser]
GO
