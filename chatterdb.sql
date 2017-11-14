USE [master]
GO
/****** Object:  Database [Chatter]    Script Date: 11/14/2017 1:15:05 PM ******/
CREATE DATABASE [Chatter]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Chatter', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Chatter.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Chatter_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Chatter_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Chatter] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Chatter].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Chatter] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Chatter] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Chatter] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Chatter] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Chatter] SET ARITHABORT OFF 
GO
ALTER DATABASE [Chatter] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Chatter] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Chatter] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Chatter] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Chatter] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Chatter] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Chatter] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Chatter] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Chatter] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Chatter] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Chatter] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Chatter] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Chatter] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Chatter] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Chatter] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Chatter] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Chatter] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Chatter] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Chatter] SET  MULTI_USER 
GO
ALTER DATABASE [Chatter] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Chatter] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Chatter] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Chatter] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Chatter] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Chatter]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11/14/2017 1:15:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/14/2017 1:15:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/14/2017 1:15:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/14/2017 1:15:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/14/2017 1:15:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/14/2017 1:15:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chat]    Script Date: 11/14/2017 1:15:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chat](
	[chatId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ChatMessage] [nvarchar](140) NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
 CONSTRAINT [PK_Chat] PRIMARY KEY CLUSTERED 
(
	[chatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201711141811241_InitialCreate', N'Chatter.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5F6FE336127F2F70DF41D053AF48ADFCE92EF6027B8BD449EE826EFE609D5DF46D414BB423AC44A912954D70E827BB877EA47E851B4A942C52A444D98AED140B2C2C72F89BE170480E87C3FCF5BF3FC73F3F8581F58893D48FC8C43E1A1DDA16266EE4F96439B133BAF8F19DFDF3FB7F7C37BEF0C227EB734977C2E8A0254927F603A5F1A9E3A4EE030E513A0A7D3789D26841476E143AC88B9CE3C3C37F3947470E06081BB02C6BFC3123D40F71FE019FD388B838A6190AAE230F07292F879A598E6ADDA010A73172F1C49E3E204A71322A286DEB2CF0114831C3C1C2B61021114514643CFD94E2194D22B29CC5508082FBE71803DD020529E6B29FAEC84DBB7178CCBAE1AC1A96506E96D228EC097874C2F5E2C8CDD7D2AE5DE90D3477011AA6CFACD7B9F626F69587F3A28F51000A90199E4E8384114FECEB8AC5591ADF603A2A1B8E0AC8CB04E0BE45C9D7511DF1C0326E7750D9D1F1E890FD3BB0A65940B3044F08CE68828203EB2E9B07BEFB2B7EBE8FBE623239399A2F4EDEBD798BBC93B73FE19337F59E425F814E2880A2BB248A7102B2E145D57FDB72C4768EDCB06A566B5368056C09A6846D5DA3A70F982CE9034C96E377B675E93F61AF2CE1C6F589F83083A0114D32F8BCC98200CD035CD53BAD3CD9FF2D5C8FDFBC1D84EB0D7AF497F9D04BFC61E22430AF3EE220AF4D1FFCB8985EC2787FE164974914B26FD1BE8ADA2FB3284B5CD699484B728F9225A6A274636765BC4626CDA08637EB1275FF4D9B49DA346F2529EBD03A33A164B1EDD950CAFBB27C8D2DEE2C8E61F072D3621A69333871A31A492DC1308AFA95C91C999A0C81AEFC9D57C08B10F9C1004BA00117F03C167E12E2AA97BF44607088F496F90EA529AC00DE7F50FAD0223AFC1C40F41976B3040C73465118BF38B7BB8788E09B2C9C337BDF1EAFC186E6FE5B74895C1A251784B5DA18EF43E47E8D327A41BC7344F127EA9680ECF3DE0FCD010611E7CC75719A5E8231636F1A81635D025E117A72DC1B8E2D4EBB7641A601F243B50F222DA35F4AD2951FA2A668F8221A32953FD226EA8768E91333514B52BDA80545A7A89CACAFA80CCC4C524EA9173427E894B3A01ACCC3CB476878172F87DD7F1F6FB3CD5BB716D4D438831512FF1B139CC032E6DDE5CE09598D80C9BAB10B67211F3EC6F4C5F7A69CD367146443B35A6B36E48BC0F0B32187DDFFD9908B09C58FBEC7BC1283834F490CF046F4EA3355F79C9324DBF67410BAB96DE6DB590374D3E52C4D23D7CF678122E4C50316A2FCE0C359DDD18BA2377204043A0686EEB32D0F4AA06FB66C54B7E41C079862EBCC2D42825394BAC86BAA113AE4F510ACDC511582AD2221A2703F347882A5E3843542EC1094C24CF5096D4E0B9FB87E8C824E2D492D0DB730D6F78A875C738E634C18C34E4D983057073E9800151F6950BA3434766A16D76E881AAF5537E65D2EEC6ADC1BF188ADD86487EFACB14BEEBFBD8861B66B6C0BC6D9AE121301B441BC5D18283FAB981A807C70D93703954E4C1A03E52ED5560C54D4D80E0C5454C9AB33D0E2886A3AFED27975DFCC533C286F7F5B6F55D70E6C53D0C79E9966E17B421B0A2D70D234CFF339ABC44F5471380339F9F92CE5AEAE6C220C7C86A918B259F9BB4A3FD46907918DA80D7065681DA0FCFAAF01D498503D842B6379ADD2712FA2076C19776B85E56BBF045BB3812676FD1AB446A8BF2C958DD3E8F451F5ACB28686911B1D166A380A8390172FB1E3064AD1C5659B8A31F185FB78C3B58EF1C168515087E7AA5152D999C1B5549A66B796540E591F976C232D49EE93464B656706D712B7D16E25299C821E6EC1462A12B7F081265B19E9A8769BAA6EEC149951BC60EC6852A8C6D7288E7DB2ACA554F1126BC6F3A97E9CF54F360A0B0CC74D15394795B415271A256889A55A600D925EFA494ACF114573C4E23C532F6C9029F756CDF25FB2AC6F9FCD412CF781929AFDE6315EF1D25ED8679B8E086F7F09BD0B99379387D01563AF6E6EB1F43614A04411B59F46411612BD73A56F5DDCDDD5DB17254D84B123C9DF709E1A9A6AB8B8A2DA8D06A539210618A0CA6F597F90F4103A55975E675DD93A4F548F5206A6EA28BA60D5CE064DE7C0180F94EC17F61FA74E8497994F3C19A50EC08B7A62D4F2191A60B53A735431E5A48E29D698234A79257548A9AA8794F5EC1141C87AC55A781A8DAA29CC3934F345EAE8CD5A736445E6481D5A51BD06B64266B9CE1C55915C520756549B63AF324DE405748F772CED6965AD2DAB38CC6EB66769305E66351C66CBABDDD9D7816AC53DB1F8AD7C038C97EFA525694F746B595211BFD8CC923418FA1547B8E916179CD6EB793DA6707D2D2CEA6DD7F77ABC7EF6FAA256D138CCC92415F7EA50271DDEC6FC2065F048463E591524B655AA1136F4E794E270C40846B3DF8369E063B67C9704D788F80B9CD22265C33E3E3C3A96DEDAECCFBB17274DBD407110D53D7E11C76C0BD957E41125EE034A9AB9101BBC0D598136C2CC57C4C34F13FBBF79ABD33C62C17EE5C507D655FA89F8BF6750719F64D8FAA399DB394CAEBCC1EB8C4AD03F5EC5B30773955FFDF6A5687A60DD26309D4EAD4349D1EB0CBFF818A2973445D30DA459FB89C4EB9D6DC23B0425AA345BD67F7630F7E9204F0E4A29BF0FD1D33FFB8AA67C56B011A2E2E9C0507883A850F734601D2CEDB3000F3E69FE2CA05F67D5CF04D6114DFB44C027FDC1E40702E6CB50D97287FB90E2B0B48D2529D7736782F546D996BBDE9B1A79D81B4DF466AE750FB841F3A93773515E599EF2605BA7220D7930EC5DDAFD8BE71EEF4BBAF1CA69DF6D96F136138B5B2E91FE56F9C47B9001A7C8E8D97DD6F0B66D4D17FDDDF3D4CB7EB9C17B666C7C9BDF7D06F0B68D4D1720DE7363EB95E7BB67B6B6ABFD73C79666BC85EE3C6BB79980A4B9C5514591BBB2728B903B1CFFE7111841E151168F29D569606D29AC1D0C57247AA6FAFC33997163E234F83628DAD9F6EB2BDFF05B3BCB69DAD96AB236DB78F3F5BF9537A769E7ADC985DC453EB1321B5195E3DDB18EB5A54CBDA6FC61A1271DE9EA5D3E6BEB95FC6B4A171E4429C2ECD1DC2EBF9EECE0415432E4D4E9910DDCBC2886BDB3F6371761FF4EFDE50A82FD0546825D61D7AC68AEC8222A376F49A292448AD05C638A3CD852CF12EA2F904BA19A05A0F3D7E079508F5D83CCB177456E331A6714BA8CC3792004BC9813D0C63F4F7916651EDFC6EC2B1DA20B20A6CF02F7B7E497CC0FBC4AEE4B454C4803C1BC0B1EEE65634959D877F95C21DD44C41088ABAF728AEE7118070096DE92197AC4EBC806E6F7012F91FBBC8A00EA40BA074254FBF8DC47CB048529C758B5874FB0612F7C7AFF7F7891746C7A540000, N'6.2.0-61023')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'95a20875-1b11-48f8-a409-55319dcf1b4f', N'annormalperson@gmail.com', 0, N'ADxyRaYatHd79xkeHL8TcrqRGgK2KUjl6w66+N9rPmz+sSQL8knzSfgYLvCwhfmz7A==', N'a598c6be-cb84-4c92-820a-9d4f8a8618cb', NULL, 0, 0, NULL, 1, 0, N'annormalperson@gmail.com')
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/14/2017 1:15:05 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/14/2017 1:15:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/14/2017 1:15:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 11/14/2017 1:15:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/14/2017 1:15:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/14/2017 1:15:05 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chat] ADD  CONSTRAINT [DF_Chat_TimeStamp]  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [Chatter] SET  READ_WRITE 
GO
