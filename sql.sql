USE [INTPNC_SNJKIT]
GO
/****** Object:  Table [dbo].[AGNTPF]    Script Date: 6/16/2023 5:10:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AGNTPF](
	[CLNTNUM] [nchar](10) NULL,
	[AGNTNUM] [nchar](10) NOT NULL,
	[AGNTNAME] [nvarchar](255) NULL,
	[EXPIDATE] [nchar](10) NULL,
	[CODUDATE] [bit] NULL,
	[SERBRANCH] [nchar](10) NULL,
 CONSTRAINT [PK_AGNTPF] PRIMARY KEY CLUSTERED 
(
	[AGNTNUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLNTPF]    Script Date: 6/16/2023 5:10:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLNTPF](
	[CLNTNUM] [nchar](10) NULL,
	[CLNTNAME] [nvarchar](255) NULL,
	[BIOFDATE] [nchar](10) NULL,
	[COUNTRY] [nchar](10) NULL,
	[ADDRESS] [nchar](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (N'12355     ', N'11zzxc    ', N'zcaa', N'14/06/2023', 1, N'HY        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (NULL, N'123123    ', N'test cÆ¡ sÆ¡Ì dÆ°Ì liÃªÌ£u', N'16/06/2023', 1, N'HY        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (NULL, N'123123123 ', N'zxczxczxc', N'14/06/2023', 1, N'HY        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (N'3123zxcaa ', N'123aa     ', N'zxcaa', N'14/06/2023', 0, N'HY        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (N'123123czxc', N'1qweqwe   ', N'zxczxc', N'14/06/2023', 1, N'HQ        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (N'0007      ', N'21312xa   ', N'7878z9z9', N'16/06/2023', 0, N'HY        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (N'0089      ', N'456a6a    ', N'zxczxc', N'10/06/2023', 0, N'HY        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (N'5580145   ', N'580789    ', N'Quang Dat Agent', N'16/06/2023', 1, N'HQ        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (N'789879    ', N'66788     ', N'6786', N'14/06/2023', 0, N'HY        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (N'77789     ', N'7789zx    ', N'a6asda', N'23/06/2023', 0, N'HY        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (N'zxcaa     ', N'cczz      ', N'zxca', N'14/06/2023', 0, N'HY        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (N'99292     ', N'sadqq     ', N'zxczxczc', N'10/06/2023', 1, N'HY        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (N'231231    ', N'zxcaq     ', N'zxczxcaa', N'16/06/2023', 1, N'HY        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (N'113       ', N'zxcww     ', N'zxcaaa', N'16/06/2023', 1, N'HY        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (N'123123    ', N'zxcz      ', N'zxczxc', N'19/06/2023', 1, N'HQ        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (N'12312zxczc', N'zxczxczxc ', N'zxczxczxczxczxc', N'09/06/2023', 1, N'HY        ')
INSERT [dbo].[AGNTPF] ([CLNTNUM], [AGNTNUM], [AGNTNAME], [EXPIDATE], [CODUDATE], [SERBRANCH]) VALUES (N'adsd      ', N'zxzaa     ', N'zxcza', N'16/06/2023', 0, N'HQ        ')
GO
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'123       ', N'quang ÄaÌ£t', N'17/05/2001', N'T         ', N'quÃ¢Ì£n 3 ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'123123    ', N'zxczxc', N'17/05/2001', N'V         ', N'zxczxczxc ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'123123    ', N'zxczxc', N'26/06/2023', N'T         ', N'zxczxc    ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'123123123 ', N'zxczxcz', N'17/05/2001', N'V         ', N'zxczxczxc ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'12312zxczc', N'zxcz', N'17/05/2001', N'V         ', N'xczxczxc  ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'123123czxc', N'xzxzc', N'17/05/2001', N'V         ', N'xczzxc    ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'xczxczxc  ', N'zxczxc', N'09/05/2001', N'V         ', N'xczxczxc  ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'3123123   ', N'zxczxc', N'17/05/2001', N'T         ', N'zxczxc    ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'0007      ', N'zxczxcz', N'16/06/2023', N'T         ', N'czxczxc   ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'0089      ', N'zxczxc', N'17/05/2001', N'T         ', N'zxczxc    ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'99292     ', N'zxc', N'17/05/2001', N'T         ', N'zxcz      ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'adsd      ', N'zxc', N'17/05/2001', N'V         ', N'xzcxcz    ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'zxcaa     ', N'zxc', N'17/05/2001', N'T         ', N'zxc       ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'789879    ', N'887678', N'17/05/2001', N'V         ', N'6786      ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'113       ', N'zxczxc', N'05/06/2023', N'T         ', N'zxczxc    ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'77789     ', N'zxczx', N'04/06/2023', N'T         ', N'czxc      ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'231231    ', N'zxczxc', N'12/06/2023', N'V         ', N'zxczxc    ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'12355     ', N'aÌd', N'17/05/2001', N'V         ', N'aÌd      ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'3123zxcaa ', N'zxcz', N'17/05/2001', N'V         ', N'xczxczxc  ')
INSERT [dbo].[CLNTPF] ([CLNTNUM], [CLNTNAME], [BIOFDATE], [COUNTRY], [ADDRESS]) VALUES (N'5580145   ', N'quang dat', N'16/06/2001', N'V         ', N'quan 3    ')
GO
