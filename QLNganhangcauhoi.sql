USE [master]
GO
/****** Object:  Database [QLNganHangCauHoi]    Script Date: 11/28/2022 1:10:18 PM ******/
CREATE DATABASE [QLNganHangCauHoi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLBT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLBT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNganHangCauHoi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNganHangCauHoi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNganHangCauHoi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNganHangCauHoi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLNganHangCauHoi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNganHangCauHoi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLNganHangCauHoi] SET  MULTI_USER 
GO
ALTER DATABASE [QLNganHangCauHoi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNganHangCauHoi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNganHangCauHoi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNganHangCauHoi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [QLNganHangCauHoi]
GO
/****** Object:  Table [dbo].[tblBode]    Script Date: 11/28/2022 1:10:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBode](
	[Mabode] [int] IDENTITY(1,1) NOT NULL,
	[Mamonhoc] [varchar](10) NULL,
	[Mahedaotao] [varchar](10) NULL,
	[Maloai] [varchar](10) NULL,
	[Macautrucdethi] [varchar](10) NULL,
	[Ngaythi] [date] NULL,
	[Lopthi] [nvarchar](50) NULL,
	[Sode] [int] NULL,
 CONSTRAINT [PK_tblBode] PRIMARY KEY CLUSTERED 
(
	[Mabode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCauHoi]    Script Date: 11/28/2022 1:10:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCauHoi](
	[Macauhoi] [varchar](10) NOT NULL,
	[Mamonhoc] [varchar](10) NULL,
	[Mahedaotao] [varchar](10) NULL,
	[Maloai] [varchar](10) NULL,
	[Mucdocauhoi] [char](1) NULL,
	[Noidungcauhoi] [ntext] NULL,
	[Dapan] [ntext] NULL,
 CONSTRAINT [PK_tblCauHoi] PRIMARY KEY CLUSTERED 
(
	[Macauhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCautrucdethi]    Script Date: 11/28/2022 1:10:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCautrucdethi](
	[Macautrucdethi] [varchar](10) NOT NULL,
	[Tencautrucdethi] [nvarchar](50) NULL,
	[Mamonhoc] [varchar](10) NULL,
	[Mahedaotao] [varchar](10) NULL,
	[SocauA] [varchar](10) NULL,
	[DiemA] [varchar](10) NULL,
	[SocauB] [varchar](10) NULL,
	[DiemB] [varchar](10) NULL,
	[SocauC] [varchar](10) NULL,
	[DiemC] [varchar](10) NULL,
 CONSTRAINT [PK_tblCautrucdethi] PRIMARY KEY CLUSTERED 
(
	[Macautrucdethi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDethi]    Script Date: 11/28/2022 1:10:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDethi](
	[Madethi] [varchar](10) NOT NULL,
	[Mabode] [int] NULL,
	[Noidungdethi] [ntext] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Madethi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHedaotao]    Script Date: 11/28/2022 1:10:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHedaotao](
	[Mahedaotao] [varchar](10) NOT NULL,
	[Hedaotao] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblHeDaoTao] PRIMARY KEY CLUSTERED 
(
	[Mahedaotao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLoai]    Script Date: 11/28/2022 1:10:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoai](
	[Maloai] [varchar](10) NOT NULL,
	[Tenloai] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLoai] PRIMARY KEY CLUSTERED 
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMonhoc]    Script Date: 11/28/2022 1:10:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMonhoc](
	[Mamonhoc] [varchar](10) NOT NULL,
	[Tenmonhoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblMonHoc] PRIMARY KEY CLUSTERED 
(
	[Mamonhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblBode] ON 

INSERT [dbo].[tblBode] ([Mabode], [Mamonhoc], [Mahedaotao], [Maloai], [Macautrucdethi], [Ngaythi], [Lopthi], [Sode]) VALUES (1, N'1', N'1', N'1', NULL, CAST(N'2022-11-27' AS Date), N'', 2)
INSERT [dbo].[tblBode] ([Mabode], [Mamonhoc], [Mahedaotao], [Maloai], [Macautrucdethi], [Ngaythi], [Lopthi], [Sode]) VALUES (2, N'1', N'1', N'1', NULL, CAST(N'2022-11-27' AS Date), N'', 2)
INSERT [dbo].[tblBode] ([Mabode], [Mamonhoc], [Mahedaotao], [Maloai], [Macautrucdethi], [Ngaythi], [Lopthi], [Sode]) VALUES (3, N'1', N'1', N'1', NULL, CAST(N'2022-11-27' AS Date), N'', 2)
INSERT [dbo].[tblBode] ([Mabode], [Mamonhoc], [Mahedaotao], [Maloai], [Macautrucdethi], [Ngaythi], [Lopthi], [Sode]) VALUES (4, N'1', N'1', N'1', NULL, CAST(N'2022-11-27' AS Date), N'', 2)
INSERT [dbo].[tblBode] ([Mabode], [Mamonhoc], [Mahedaotao], [Maloai], [Macautrucdethi], [Ngaythi], [Lopthi], [Sode]) VALUES (5, N'1', N'1', N'1', NULL, CAST(N'2022-11-27' AS Date), N'', 2)
INSERT [dbo].[tblBode] ([Mabode], [Mamonhoc], [Mahedaotao], [Maloai], [Macautrucdethi], [Ngaythi], [Lopthi], [Sode]) VALUES (6, N'1', N'1', N'1', NULL, CAST(N'2022-11-27' AS Date), N'', 2)
INSERT [dbo].[tblBode] ([Mabode], [Mamonhoc], [Mahedaotao], [Maloai], [Macautrucdethi], [Ngaythi], [Lopthi], [Sode]) VALUES (7, N'1', N'1', N'1', NULL, CAST(N'2022-11-27' AS Date), N'', 10)
INSERT [dbo].[tblBode] ([Mabode], [Mamonhoc], [Mahedaotao], [Maloai], [Macautrucdethi], [Ngaythi], [Lopthi], [Sode]) VALUES (8, N'1', N'1', N'1', NULL, CAST(N'2022-11-27' AS Date), N'', 10)
INSERT [dbo].[tblBode] ([Mabode], [Mamonhoc], [Mahedaotao], [Maloai], [Macautrucdethi], [Ngaythi], [Lopthi], [Sode]) VALUES (9, N'1', N'1', N'1', NULL, CAST(N'2022-11-27' AS Date), N'', 11)
INSERT [dbo].[tblBode] ([Mabode], [Mamonhoc], [Mahedaotao], [Maloai], [Macautrucdethi], [Ngaythi], [Lopthi], [Sode]) VALUES (10, N'2', N'1', N'1', NULL, CAST(N'2022-11-27' AS Date), N'', 3)
INSERT [dbo].[tblBode] ([Mabode], [Mamonhoc], [Mahedaotao], [Maloai], [Macautrucdethi], [Ngaythi], [Lopthi], [Sode]) VALUES (11, N'2', N'1', N'1', NULL, CAST(N'2022-11-27' AS Date), N'', 3)
SET IDENTITY_INSERT [dbo].[tblBode] OFF
GO
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'01', N'2', N'1', N'1', N'A', N'Triết học là gì?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'02', N'2', N'1', N'1', N'A', N'Vấn đề cơ bản của triết học?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'03', N'2', N'1', N'1', N'A', N'Phương pháp nhận thức của thế giới triết học?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'04', N'2', N'1', N'1', N'A', N'Những điều kiện, tiền đề của sự ra đời chủ nghĩa Mác?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'05', N'2', N'1', N'1', N'B', N'Phân tích nguồn gốc của triết học theo khía cạnh nguồn gốc xã hội?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'06', N'2', N'1', N'1', N'B', N'Hãy nêu đối tượng nghiên cứu của triết học từ thời phục hưng đến nay?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'07', N'2', N'1', N'1', N'B', N'Hãy nêu đối tượng nghiên cứu của triết học qua trong thời kì cổ đại và trung cổ?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'08', N'2', N'1', N'1', N'C', N'Tại sao triết học Mác – Lê nin là cơ sở lý luận khoa học của công cuộc xây dựng chủ nghĩa xã hội trên thế giới và sự nghiệp đổi mới theo định hướng xã hội chủ nghĩa ở Việt Nam?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'09', N'2', N'1', N'1', N'C', N'Mục đích và yêu cầu của việc học tập, nghiên cứu môn học Những nguyên lý cơ bản của chủ nghĩa Mác-Lênin?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'10', N'2', N'2', N'1', N'A', N'Vấn đề cơ bản của triết học?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'11', N'2', N'2', N'1', N'A', N'Triết học là gì?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'12', N'2', N'2', N'1', N'A', N'Phương pháp nhận thức của thế giới triết học?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'13', N'2', N'2', N'1', N'A', N'Những điều kiện, tiền đề của sự ra đời chủ nghĩa Mác?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'14', N'2', N'2', N'1', N'A', N'Chủ nghĩa Mác – Lê nin là gì?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'15', N'2', N'2', N'1', N'A', N'Chủ nghĩa Mác – Lê nin được cấu thành từ những bộ phân lý luận cơ bản nào?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'16', N'2', N'2', N'1', N'B', N'Triết học – hạt nhân lí luận của thế giới quan có nghĩa là gì?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'17', N'2', N'2', N'1', N'B', N'Hãy nêu đối tượng nghiên cứu của triết học từ thời phục hưng đến nay?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'18', N'2', N'2', N'1', N'C', N'Tại sao triết học Mác – Lê nin là cơ sở lý luận khoa học của công cuộc xây dựng chủ nghĩa xã hội trên thế giới và sự nghiệp đổi mới theo định hướng xã hội chủ nghĩa ở Việt Nam?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'19', N'2', N'2', N'1', N'C', N'Mục đích và yêu cầu của việc học tập, nghiên cứu môn học Những nguyên lý cơ bản của chủ nghĩa Mác-Lênin?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'20', N'1', N'1', N'1', N'A', N'Đầu ra của bộ phân tích từ vựng là gì?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'21', N'1', N'1', N'1', N'A', N'Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'22', N'1', N'1', N'1', N'A', N'Trị từ vựng là gì?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'23', N'1', N'1', N'1', N'A', N'Chương trình đối tượng là gì?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'24', N'1', N'1', N'1', N'B', N'Chương trình dịch có chức năng gì?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'25', N'1', N'1', N'1', N'B', N'Các thành phần của ngôn ngữ lập trình?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'26', N'1', N'1', N'1', N'B', N'Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'27', N'1', N'1', N'1', N'C', N'Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'28', N'1', N'1', N'1', N'C', N'Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'29', N'1', N'2', N'1', N'A', N'Chương trình nguồn không thể chứa lỗi nào?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'30', N'1', N'2', N'1', N'A', N'Những giai đoạn được xử lý trong một chương trình dịch là?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'31', N'1', N'2', N'1', N'A', N'Đầu ra của bộ phân tích từ vựng là gì?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'32', N'1', N'2', N'1', N'A', N'Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'33', N'1', N'2', N'1', N'A', N'Trị từ vựng là gì?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'34', N'1', N'2', N'1', N'A', N'Chương trình đối tượng là gì?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'35', N'1', N'2', N'1', N'B', N'Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'36', N'1', N'2', N'1', N'B', N'Các thành phần của ngôn ngữ lập trình?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'37', N'1', N'2', N'1', N'C', N'Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?', NULL)
INSERT [dbo].[tblCauHoi] ([Macauhoi], [Mamonhoc], [Mahedaotao], [Maloai], [Mucdocauhoi], [Noidungcauhoi], [Dapan]) VALUES (N'38', N'1', N'2', N'1', N'C', N'Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?', NULL)
GO
INSERT [dbo].[tblCautrucdethi] ([Macautrucdethi], [Tencautrucdethi], [Mamonhoc], [Mahedaotao], [SocauA], [DiemA], [SocauB], [DiemB], [SocauC], [DiemC]) VALUES (N'1', N'Chương trình dịch ĐH 2022', N'1', N'1', N'3', N'1', N'2', N'2', N'1', N'3')
INSERT [dbo].[tblCautrucdethi] ([Macautrucdethi], [Tencautrucdethi], [Mamonhoc], [Mahedaotao], [SocauA], [DiemA], [SocauB], [DiemB], [SocauC], [DiemC]) VALUES (N'2', N'Triết học 1 ĐH 2022', N'2', N'1', N'3', N'1', N'2', N'2', N'1', N'3')
INSERT [dbo].[tblCautrucdethi] ([Macautrucdethi], [Tencautrucdethi], [Mamonhoc], [Mahedaotao], [SocauA], [DiemA], [SocauB], [DiemB], [SocauC], [DiemC]) VALUES (N'3', N'Chương trình dịch CĐ 2022', N'1', N'2', N'5', N'1', N'1', N'2', N'1', N'3')
INSERT [dbo].[tblCautrucdethi] ([Macautrucdethi], [Tencautrucdethi], [Mamonhoc], [Mahedaotao], [SocauA], [DiemA], [SocauB], [DiemB], [SocauC], [DiemC]) VALUES (N'4', N'Triết học 1 CĐ 2022', N'2', N'2', N'5', N'1', N'1', N'2', N'1', N'3')
GO
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'1_1', 1, N'Câu 1: Chương trình đối tượng là gì?
Câu 2: Trị từ vựng là gì?
Câu 3: Đầu ra của bộ phân tích từ vựng là gì?
Câu 4: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'1_2', 1, N'Câu 1: Trị từ vựng là gì?
Câu 2: Đầu ra của bộ phân tích từ vựng là gì?
Câu 3: Chương trình đối tượng là gì?
Câu 4: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 5: Chương trình dịch có chức năng gì?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'11_1', 11, N'Câu 1: Triết học là gì?
Câu 2: Vấn đề cơ bản của triết học?
Câu 3: Phương pháp nhận thức của thế giới triết học?
Câu 4: Phân tích nguồn gốc của triết học theo khía cạnh nguồn gốc xã hội?
Câu 5: Hãy nêu đối tượng nghiên cứu của triết học từ thời phục hưng đến nay?
Câu 6: Tại sao triết học Mác – Lê nin là cơ sở lý luận khoa học của công cuộc xây dựng chủ nghĩa xã hội trên thế giới và sự nghiệp đổi mới theo định hướng xã hội chủ nghĩa ở Việt Nam?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'11_2', 11, N'Câu 1: Triết học là gì?
Câu 2: Vấn đề cơ bản của triết học?
Câu 3: Phương pháp nhận thức của thế giới triết học?
Câu 4: Hãy nêu đối tượng nghiên cứu của triết học từ thời phục hưng đến nay?
Câu 5: Hãy nêu đối tượng nghiên cứu của triết học qua trong thời kì cổ đại và trung cổ?
Câu 6: Tại sao triết học Mác – Lê nin là cơ sở lý luận khoa học của công cuộc xây dựng chủ nghĩa xã hội trên thế giới và sự nghiệp đổi mới theo định hướng xã hội chủ nghĩa ở Việt Nam?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'11_3', 11, N'Câu 1: Vấn đề cơ bản của triết học?
Câu 2: Những điều kiện, tiền đề của sự ra đời chủ nghĩa Mác?
Câu 3: Phương pháp nhận thức của thế giới triết học?
Câu 4: Hãy nêu đối tượng nghiên cứu của triết học từ thời phục hưng đến nay?
Câu 5: Hãy nêu đối tượng nghiên cứu của triết học qua trong thời kì cổ đại và trung cổ?
Câu 6: Tại sao triết học Mác – Lê nin là cơ sở lý luận khoa học của công cuộc xây dựng chủ nghĩa xã hội trên thế giới và sự nghiệp đổi mới theo định hướng xã hội chủ nghĩa ở Việt Nam?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'3_1', 3, N'Câu 1: Trị từ vựng là gì?
Câu 2: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 3: Đầu ra của bộ phân tích từ vựng là gì?
Câu 4: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'3_2', 3, N'Câu 1: Trị từ vựng là gì?
Câu 2: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 3: Đầu ra của bộ phân tích từ vựng là gì?
Câu 4: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'4_1', 4, N'Câu 1: Trị từ vựng là gì?
Câu 2: Đầu ra của bộ phân tích từ vựng là gì?
Câu 3: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 4: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 5: Chương trình dịch có chức năng gì?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'4_2', 4, N'Câu 1: Trị từ vựng là gì?
Câu 2: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 3: Chương trình đối tượng là gì?
Câu 4: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 5: Chương trình dịch có chức năng gì?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'5_1', 5, N'Câu 1: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 2: Đầu ra của bộ phân tích từ vựng là gì?
Câu 3: Chương trình đối tượng là gì?
Câu 4: Chương trình dịch có chức năng gì?
Câu 5: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'5_2', 5, N'Câu 1: Trị từ vựng là gì?
Câu 2: Đầu ra của bộ phân tích từ vựng là gì?
Câu 3: Chương trình đối tượng là gì?
Câu 4: Các thành phần của ngôn ngữ lập trình?
Câu 5: Chương trình dịch có chức năng gì?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'6_1', 6, N'Câu 1: Trị từ vựng là gì?
Câu 2: Chương trình đối tượng là gì?
Câu 3: Đầu ra của bộ phân tích từ vựng là gì?
Câu 4: Các thành phần của ngôn ngữ lập trình?
Câu 5: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'6_2', 6, N'Câu 1: Chương trình đối tượng là gì?
Câu 2: Trị từ vựng là gì?
Câu 3: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 4: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'7_1', 7, N'Câu 1: Chương trình đối tượng là gì?
Câu 2: Trị từ vựng là gì?
Câu 3: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 4: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'7_10', 7, N'Câu 1: Trị từ vựng là gì?
Câu 2: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 3: Đầu ra của bộ phân tích từ vựng là gì?
Câu 4: Các thành phần của ngôn ngữ lập trình?
Câu 5: Chương trình dịch có chức năng gì?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'7_2', 7, N'Câu 1: Chương trình đối tượng là gì?
Câu 2: Trị từ vựng là gì?
Câu 3: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 4: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'7_3', 7, N'Câu 1: Chương trình đối tượng là gì?
Câu 2: Trị từ vựng là gì?
Câu 3: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 4: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'7_4', 7, N'Câu 1: Chương trình đối tượng là gì?
Câu 2: Trị từ vựng là gì?
Câu 3: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 4: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'7_5', 7, N'Câu 1: Chương trình đối tượng là gì?
Câu 2: Trị từ vựng là gì?
Câu 3: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 4: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'7_6', 7, N'Câu 1: Chương trình đối tượng là gì?
Câu 2: Trị từ vựng là gì?
Câu 3: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 4: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'7_7', 7, N'Câu 1: Trị từ vựng là gì?
Câu 2: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 3: Đầu ra của bộ phân tích từ vựng là gì?
Câu 4: Các thành phần của ngôn ngữ lập trình?
Câu 5: Chương trình dịch có chức năng gì?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'7_8', 7, N'Câu 1: Trị từ vựng là gì?
Câu 2: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 3: Đầu ra của bộ phân tích từ vựng là gì?
Câu 4: Các thành phần của ngôn ngữ lập trình?
Câu 5: Chương trình dịch có chức năng gì?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'7_9', 7, N'Câu 1: Trị từ vựng là gì?
Câu 2: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 3: Đầu ra của bộ phân tích từ vựng là gì?
Câu 4: Các thành phần của ngôn ngữ lập trình?
Câu 5: Chương trình dịch có chức năng gì?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'8_1', 8, N'Câu 1: Đầu ra của bộ phân tích từ vựng là gì?
Câu 2: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 3: Trị từ vựng là gì?
Câu 4: Chương trình dịch có chức năng gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'8_10', 8, N'Câu 1: Trị từ vựng là gì?
Câu 2: Chương trình đối tượng là gì?
Câu 3: Đầu ra của bộ phân tích từ vựng là gì?
Câu 4: Các thành phần của ngôn ngữ lập trình?
Câu 5: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'8_2', 8, N'Câu 1: Đầu ra của bộ phân tích từ vựng là gì?
Câu 2: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 3: Trị từ vựng là gì?
Câu 4: Chương trình dịch có chức năng gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'8_3', 8, N'Câu 1: Đầu ra của bộ phân tích từ vựng là gì?
Câu 2: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 3: Trị từ vựng là gì?
Câu 4: Chương trình dịch có chức năng gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'8_4', 8, N'Câu 1: Đầu ra của bộ phân tích từ vựng là gì?
Câu 2: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 3: Trị từ vựng là gì?
Câu 4: Chương trình dịch có chức năng gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'8_5', 8, N'Câu 1: Trị từ vựng là gì?
Câu 2: Chương trình đối tượng là gì?
Câu 3: Đầu ra của bộ phân tích từ vựng là gì?
Câu 4: Các thành phần của ngôn ngữ lập trình?
Câu 5: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'8_6', 8, N'Câu 1: Trị từ vựng là gì?
Câu 2: Chương trình đối tượng là gì?
Câu 3: Đầu ra của bộ phân tích từ vựng là gì?
Câu 4: Các thành phần của ngôn ngữ lập trình?
Câu 5: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'8_7', 8, N'Câu 1: Trị từ vựng là gì?
Câu 2: Chương trình đối tượng là gì?
Câu 3: Đầu ra của bộ phân tích từ vựng là gì?
Câu 4: Các thành phần của ngôn ngữ lập trình?
Câu 5: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'8_8', 8, N'Câu 1: Trị từ vựng là gì?
Câu 2: Chương trình đối tượng là gì?
Câu 3: Đầu ra của bộ phân tích từ vựng là gì?
Câu 4: Các thành phần của ngôn ngữ lập trình?
Câu 5: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'8_9', 8, N'Câu 1: Trị từ vựng là gì?
Câu 2: Chương trình đối tượng là gì?
Câu 3: Đầu ra của bộ phân tích từ vựng là gì?
Câu 4: Các thành phần của ngôn ngữ lập trình?
Câu 5: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 6: Cho văn phạm G={S->aAAB|bC; A->bB|epsilon; B->Aa|A|epsilon; C->bA|B} Sau khi loại bỏ các sản xuất rỗng trong G thì có bao nhiêu luật sinh có vế trái là S?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'9_1', 9, N'Câu 1: Chương trình đối tượng là gì?
Câu 2: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 3: Trị từ vựng là gì?
Câu 4: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 5: Chương trình dịch có chức năng gì?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'9_10', 9, N'Câu 1: Đầu ra của bộ phân tích từ vựng là gì?
Câu 2: Trị từ vựng là gì?
Câu 3: Chương trình đối tượng là gì?
Câu 4: Chương trình dịch có chức năng gì?
Câu 5: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'9_11', 9, N'Câu 1: Đầu ra của bộ phân tích từ vựng là gì?
Câu 2: Trị từ vựng là gì?
Câu 3: Chương trình đối tượng là gì?
Câu 4: Chương trình dịch có chức năng gì?
Câu 5: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'9_2', 9, N'Câu 1: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 2: Đầu ra của bộ phân tích từ vựng là gì?
Câu 3: Trị từ vựng là gì?
Câu 4: Chương trình dịch có chức năng gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'9_3', 9, N'Câu 1: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 2: Đầu ra của bộ phân tích từ vựng là gì?
Câu 3: Trị từ vựng là gì?
Câu 4: Chương trình dịch có chức năng gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'9_4', 9, N'Câu 1: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 2: Đầu ra của bộ phân tích từ vựng là gì?
Câu 3: Trị từ vựng là gì?
Câu 4: Chương trình dịch có chức năng gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'9_5', 9, N'Câu 1: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 2: Đầu ra của bộ phân tích từ vựng là gì?
Câu 3: Trị từ vựng là gì?
Câu 4: Chương trình dịch có chức năng gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'9_6', 9, N'Câu 1: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 2: Đầu ra của bộ phân tích từ vựng là gì?
Câu 3: Trị từ vựng là gì?
Câu 4: Chương trình dịch có chức năng gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'9_7', 9, N'Câu 1: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 2: Đầu ra của bộ phân tích từ vựng là gì?
Câu 3: Trị từ vựng là gì?
Câu 4: Chương trình dịch có chức năng gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'9_8', 9, N'Câu 1: Các automat hữu hạn trạng thái có thể được sử dụng để làm gì?
Câu 2: Đầu ra của bộ phân tích từ vựng là gì?
Câu 3: Trị từ vựng là gì?
Câu 4: Chương trình dịch có chức năng gì?
Câu 5: Các thành phần của ngôn ngữ lập trình?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
INSERT [dbo].[tblDethi] ([Madethi], [Mabode], [Noidungdethi]) VALUES (N'9_9', 9, N'Câu 1: Đầu ra của bộ phân tích từ vựng là gì?
Câu 2: Trị từ vựng là gì?
Câu 3: Chương trình đối tượng là gì?
Câu 4: Chương trình dịch có chức năng gì?
Câu 5: Ngôn ngữ máy tính thường được dịch thành mã giả bằng ngôn ngữ gì?
Câu 6: Cho văn phạm: S->A|BCD; A->BBA|EB; B->bEc|BC|BDc; C->c; D->a|BĐ; E->a|bE, Follow(E)=?
')
GO
INSERT [dbo].[tblHedaotao] ([Mahedaotao], [Hedaotao]) VALUES (N'1', N'Đại học')
INSERT [dbo].[tblHedaotao] ([Mahedaotao], [Hedaotao]) VALUES (N'2', N'Cao đẳng')
GO
INSERT [dbo].[tblLoai] ([Maloai], [Tenloai]) VALUES (N'1', N'Tự luận')
INSERT [dbo].[tblLoai] ([Maloai], [Tenloai]) VALUES (N'2', N'Vấn đáp')
GO
INSERT [dbo].[tblMonhoc] ([Mamonhoc], [Tenmonhoc]) VALUES (N'1', N'Chương trình dịch')
INSERT [dbo].[tblMonhoc] ([Mamonhoc], [Tenmonhoc]) VALUES (N'2', N'Triết học 1')
GO
ALTER TABLE [dbo].[tblBode]  WITH CHECK ADD  CONSTRAINT [FK_tblBode_tblCautrucdethi] FOREIGN KEY([Macautrucdethi])
REFERENCES [dbo].[tblCautrucdethi] ([Macautrucdethi])
GO
ALTER TABLE [dbo].[tblBode] CHECK CONSTRAINT [FK_tblBode_tblCautrucdethi]
GO
ALTER TABLE [dbo].[tblBode]  WITH CHECK ADD  CONSTRAINT [FK_tblBode_tblHedaotao] FOREIGN KEY([Mahedaotao])
REFERENCES [dbo].[tblHedaotao] ([Mahedaotao])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[tblBode] CHECK CONSTRAINT [FK_tblBode_tblHedaotao]
GO
ALTER TABLE [dbo].[tblBode]  WITH CHECK ADD  CONSTRAINT [FK_tblBode_tblLoai] FOREIGN KEY([Maloai])
REFERENCES [dbo].[tblLoai] ([Maloai])
GO
ALTER TABLE [dbo].[tblBode] CHECK CONSTRAINT [FK_tblBode_tblLoai]
GO
ALTER TABLE [dbo].[tblBode]  WITH CHECK ADD  CONSTRAINT [FK_tblBode_tblMonHoc] FOREIGN KEY([Mamonhoc])
REFERENCES [dbo].[tblMonhoc] ([Mamonhoc])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[tblBode] CHECK CONSTRAINT [FK_tblBode_tblMonHoc]
GO
ALTER TABLE [dbo].[tblCauHoi]  WITH CHECK ADD  CONSTRAINT [FK_tblCauHoi_tblHedaotao] FOREIGN KEY([Mahedaotao])
REFERENCES [dbo].[tblHedaotao] ([Mahedaotao])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[tblCauHoi] CHECK CONSTRAINT [FK_tblCauHoi_tblHedaotao]
GO
ALTER TABLE [dbo].[tblCauHoi]  WITH CHECK ADD  CONSTRAINT [FK_tblCauHoi_tblLoai] FOREIGN KEY([Maloai])
REFERENCES [dbo].[tblLoai] ([Maloai])
GO
ALTER TABLE [dbo].[tblCauHoi] CHECK CONSTRAINT [FK_tblCauHoi_tblLoai]
GO
ALTER TABLE [dbo].[tblCauHoi]  WITH CHECK ADD  CONSTRAINT [FK_tblCauHoi_tblMonHoc] FOREIGN KEY([Mamonhoc])
REFERENCES [dbo].[tblMonhoc] ([Mamonhoc])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[tblCauHoi] CHECK CONSTRAINT [FK_tblCauHoi_tblMonHoc]
GO
ALTER TABLE [dbo].[tblCautrucdethi]  WITH CHECK ADD  CONSTRAINT [FK_tblCautrucdethi_tblHedaotao] FOREIGN KEY([Mahedaotao])
REFERENCES [dbo].[tblHedaotao] ([Mahedaotao])
GO
ALTER TABLE [dbo].[tblCautrucdethi] CHECK CONSTRAINT [FK_tblCautrucdethi_tblHedaotao]
GO
ALTER TABLE [dbo].[tblCautrucdethi]  WITH CHECK ADD  CONSTRAINT [FK_tblCautrucdethi_tblMonHoc] FOREIGN KEY([Mamonhoc])
REFERENCES [dbo].[tblMonhoc] ([Mamonhoc])
GO
ALTER TABLE [dbo].[tblCautrucdethi] CHECK CONSTRAINT [FK_tblCautrucdethi_tblMonHoc]
GO
ALTER TABLE [dbo].[tblDethi]  WITH CHECK ADD  CONSTRAINT [FK_tblDeThi_tblBode] FOREIGN KEY([Mabode])
REFERENCES [dbo].[tblBode] ([Mabode])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblDethi] CHECK CONSTRAINT [FK_tblDeThi_tblBode]
GO
/****** Object:  StoredProcedure [dbo].[sp_CauTruc]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_CauTruc]
@Ma varchar(10)
as
select SocauA, SocauB, SocauC
from tblCautrucdethi
where Macautrucdethi = @Ma
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteCauHoi]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_DeleteCauHoi]
@Ma varchar(10)
as
delete from tblCauhoi
where Macauhoi = @Ma
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteCauTruc]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_DeleteCauTruc]
@Ma varchar(10)
as
delete from tblCautrucdethi
where Macautrucdethi = @Ma
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteHeDaoTao]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_DeleteHeDaoTao]
@Ma varchar(10)
as
delete from tblHedaotao
where Mahedaotao = @Ma
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteMonHoc]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_DeleteMonHoc]
@Ma varchar(10)
as
delete from tblMonhoc
where Mamonhoc = @Ma
GO
/****** Object:  StoredProcedure [dbo].[sp_FillComboCauTruc]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_FillComboCauTruc]
@Mamonhoc varchar(10),
@Mahedaotao varchar(10)
as
select Macautrucdethi, Tencautrucdethi
from tblCautrucdethi
where Mamonhoc = @Mamonhoc and Mahedaotao = @Mahedaotao
GO
/****** Object:  StoredProcedure [dbo].[sp_InDeThi]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InDeThi]
@Ma varchar(10)
as
select Madethi, Noidungdethi, Tenmonhoc, Hedaotao
from tblBode
inner join tblDeThi on tblBode.Mabode = tblDeThi.Mabode
inner join tblHedaotao on tblBode.Mahedaotao = tblHedaotao.Mahedaotao
inner join tblMonhoc on tblBode.Mamonhoc = tblMonhoc.Mamonhoc
where Madethi = @Ma
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertBoDe]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertBoDe]
@Mamonhoc varchar(10),
@Mahedaotao varchar(10),
@Maloai varchar(10),
@Ngay date,
@Lop nvarchar(50),
@Sode int
as
insert into tblBode(Mamonhoc, Mahedaotao, Maloai, Ngaythi, Lopthi, Sode)
values (@Mamonhoc, @Mahedaotao, @Maloai, @Ngay, @Lop, @Sode)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCauHoi]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertCauHoi]
@Ma varchar(10),
@Mamonhoc varchar(10),
@Mahedaotao varchar(10),
@Maloai varchar(10),
@Mucdocauhoi char(1),
@Noidungcauhoi ntext,
@Dapan ntext
as
insert into tblCauhoi(Macauhoi, Mamonhoc, Mahedaotao, Maloai, Mucdocauhoi, Noidungcauhoi, Dapan)
values (@Ma, @Mamonhoc, @Mahedaotao, @Maloai, @Mucdocauhoi, @Noidungcauhoi, @Dapan)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCauTruc]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_InsertCauTruc]
@Ma varchar(10),
@Ten nvarchar(50),
@Mamonhoc varchar(10),
@Mahedaotao varchar(10),
@SocauA varchar(10),
@DiemA varchar(10),
@SocauB varchar(10),
@DiemB varchar(10),
@SocauC varchar(10),
@DiemC varchar(10)
as
insert into tblCautrucdethi (Macautrucdethi, Tencautrucdethi, Mamonhoc, Mahedaotao, SocauA, DiemA, SocauB, DiemB, SocauC, DiemC)
values (@Ma, @Ten, @Mamonhoc, @Mahedaotao, @SocauA, @DiemA, @SocauB, @DiemB, @SocauC, @DiemC)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertDeThi]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_InsertDeThi]
@Ma varchar(10),
@Mabode int,
@Noidungdethi ntext
as
insert into tblDeThi(Madethi, Mabode, Noidungdethi)
values (@Ma, @Mabode, @Noidungdethi)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertHeDaoTao]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_InsertHeDaoTao]
@Ma varchar(10),
@Ten nvarchar(50)
as
insert into tblHedaotao (Mahedaotao, Hedaotao)
values (@Ma, @Ten)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertMonHoc]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_InsertMonHoc]
@Ma varchar(10),
@Ten nvarchar(50)
as
insert into tblMonhoc(Mamonhoc, Tenmonhoc)
values (@Ma, @Ten)
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectA]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_SelectA]
@Mamonhoc varchar(10),
@Mahedaotao varchar(10),
@Maloai varchar(10)
as
select Noidungcauhoi
from tblCauhoi
where Mahedaotao = @Mahedaotao and Mamonhoc = @Mamonhoc and Maloai = @Maloai and Mucdocauhoi = 'A'
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectB]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_SelectB]
@Mamonhoc varchar(10),
@Mahedaotao varchar(10),
@Maloai varchar(10)
as
select Noidungcauhoi
from tblCauhoi
where Mahedaotao = @Mahedaotao and Mamonhoc = @Mamonhoc and Maloai = @Maloai and Mucdocauhoi = 'B'
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectBoDe]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_SelectBoDe]
as
select Mabode, Tenmonhoc, Hedaotao, Tenloai, Ngaythi, Lopthi, Sode
from tblBode
inner join tblMonhoc on tblBode.Mamonhoc = tblMonhoc.Mamonhoc
inner join tblHedaotao on tblBode.Mahedaotao = tblHedaotao.Mahedaotao
inner join tblLoai on tblBode.Maloai = tblLoai.Maloai
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectC]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_SelectC]
@Mamonhoc varchar(10),
@Mahedaotao varchar(10),
@Maloai varchar(10)
as
select Noidungcauhoi
from tblCauhoi
where Mahedaotao = @Mahedaotao and Mamonhoc = @Mamonhoc and Maloai = @Maloai and Mucdocauhoi = 'C'
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectCauHoi]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_SelectCauHoi]
as
select Macauhoi, Tenmonhoc, Hedaotao, Tenloai, Mucdocauhoi, Noidungcauhoi, Dapan
from tblCauhoi
inner join tblMonhoc on tblCauhoi.Mamonhoc = tblMonhoc.Mamonhoc
inner join tblHedaotao on tblCauhoi.Mahedaotao = tblHedaotao.Mahedaotao
inner join tblLoai on tblCauhoi.Maloai = tblLoai.Maloai
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectCauTruc]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SelectCauTruc]
as
select Macautrucdethi, Tencautrucdethi, Tenmonhoc, Hedaotao, SocauA, DiemA, SocauB, DiemB, SocauC, DiemC
from tblCautrucdethi
inner join tblMonhoc on tblCautrucdethi.Mamonhoc = tblMonhoc.Mamonhoc
inner join tblHedaotao on tblCautrucdethi.Mahedaotao = tblHedaotao.Mahedaotao
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectDeThi]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_SelectDeThi]
@Ma int
as
select Madethi
from tblDeThi
where Mabode = @Ma
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectHeDaoTao]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SelectHeDaoTao]
as
select *
from tblHedaotao
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectLoai]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SelectLoai]
as
select *
from tblLoai
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectMonHoc]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SelectMonHoc]
as
select *
from tblMonhoc
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectNoiDung]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SelectNoiDung]
@Ma varchar(10)
as
select Noidungdethi
from tblDeThi
where Madethi = @Ma
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectTop]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SelectTop]
as
select Top(1)Mabode
from tblBode
order by Mabode desc
GO
/****** Object:  StoredProcedure [dbo].[sp_SoCauC]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SoCauC]
@Ma varchar(10)
as
select dbo.fu_SocauC(@Ma);
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateCauHoi]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateCauHoi]
@Ma varchar(10),
@Mamonhoc varchar(10),
@Mahedaotao varchar(10),
@Maloai varchar(10),
@Mucdocauhoi char(1),
@Noidungcauhoi ntext,
@Dapan ntext
as
update tblCauhoi
set Mamonhoc = @Mamonhoc,
Mahedaotao = @Mahedaotao,
Maloai = @Maloai,
Mucdocauhoi = @Mucdocauhoi,
Noidungcauhoi = @Noidungcauhoi,
Dapan = @Dapan
where Macauhoi = @Ma
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateCauTruc]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateCauTruc]
@Ma varchar(10),
@Ten nvarchar(50),
@Mamonhoc varchar(10),
@Mahedaotao varchar(10),
@SocauA varchar(10),
@DiemA varchar(10),
@SocauB varchar(10),
@DiemB varchar(10),
@SocauC varchar(10),
@DiemC varchar(10)
as
update tblCautrucdethi
set Tencautrucdethi = @Ten,
Mamonhoc = @Mamonhoc,
Mahedaotao = @Mahedaotao,
SocauA = @SocauA,
DiemA = @DiemA,
SocauB = @SocauB,
DiemB = @DiemB,
SocauC = @SocauC,
DiemC = @DiemC
where Macautrucdethi = @Ma
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateHeDaoTao]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateHeDaoTao]
@Ma varchar(10),
@Ten nvarchar(50)
as
update tblHedaotao
set Hedaotao = @Ten
where Mahedaotao = @Ma
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateMonHoc]    Script Date: 11/28/2022 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateMonHoc]
@Ma varchar(10),
@Ten nvarchar(50)
as
update tblMonhoc
set Tenmonhoc = @Ten
where Mamonhoc = @Ma
GO
USE [master]
GO
ALTER DATABASE [QLNganHangCauHoi] SET  READ_WRITE 
GO
