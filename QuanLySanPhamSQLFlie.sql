USE [master]
GO
/****** Object:  Database [QuanLySanPham]    Script Date: 10/28/2024 4:00:42 PM ******/
CREATE DATABASE [QuanLySanPham]
GO
ALTER DATABASE [QuanLySanPham] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLySanPham] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLySanPham] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLySanPham] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLySanPham] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLySanPham] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLySanPham] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLySanPham] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLySanPham] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLySanPham] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLySanPham] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLySanPham] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLySanPham] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLySanPham] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLySanPham] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLySanPham] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLySanPham] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLySanPham] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLySanPham] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLySanPham] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLySanPham] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLySanPham] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLySanPham] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLySanPham] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLySanPham] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLySanPham] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLySanPham] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLySanPham] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLySanPham] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLySanPham] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLySanPham] SET QUERY_STORE = OFF
GO
USE [QuanLySanPham]
GO
/****** Object:  Table [dbo].[Catalog]    Script Date: 10/28/2024 4:00:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatalogCode] [nvarchar](50) NULL,
	[CatalogName] [nvarchar](250) NULL,
 CONSTRAINT [PK_Catalog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/28/2024 4:00:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatalogId] [int] NULL,
	[ProductCode] [nvarchar](50) NULL,
	[ProductName] [nvarchar](250) NULL,
	[Picture] [nvarchar](max) NULL,
	[UnitPrice] [float] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/28/2024 4:00:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Catalog] ON 

INSERT [dbo].[Catalog] ([Id], [CatalogCode], [CatalogName]) VALUES (1, N'EM01', N'Điện Thoại')
INSERT [dbo].[Catalog] ([Id], [CatalogCode], [CatalogName]) VALUES (2, N'DM02', N'Máy Tính')
INSERT [dbo].[Catalog] ([Id], [CatalogCode], [CatalogName]) VALUES (3, N'DM03', N'Thời Trang')
INSERT [dbo].[Catalog] ([Id], [CatalogCode], [CatalogName]) VALUES (4, N'DM04', N'Gia Dụng')
INSERT [dbo].[Catalog] ([Id], [CatalogCode], [CatalogName]) VALUES (7, N'Da011', N'Máy tính bảng')
INSERT [dbo].[Catalog] ([Id], [CatalogCode], [CatalogName]) VALUES (8, N'Em112', N'Ti vi')
SET IDENTITY_INSERT [dbo].[Catalog] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [CatalogId], [ProductCode], [ProductName], [Picture], [UnitPrice]) VALUES (1, 1, N'PRO01', N'SamSung J7 Primess2233', N'PRO01.PNG', 10000000)
INSERT [dbo].[Product] ([Id], [CatalogId], [ProductCode], [ProductName], [Picture], [UnitPrice]) VALUES (2, 1, N'PRO02', N'Iphone X', N'PRO02.PNG', 33000000)
INSERT [dbo].[Product] ([Id], [CatalogId], [ProductCode], [ProductName], [Picture], [UnitPrice]) VALUES (3, 2, N'PRO03', N'Dell Inspiron N355222', N'PRO03.PNG', 12000000)
INSERT [dbo].[Product] ([Id], [CatalogId], [ProductCode], [ProductName], [Picture], [UnitPrice]) VALUES (4, 2, N'PRO04', N'Dell Inspiron N3467', N'PRO04.PNG', 13000000)
INSERT [dbo].[Product] ([Id], [CatalogId], [ProductCode], [ProductName], [Picture], [UnitPrice]) VALUES (7, 3, N'ER122', N'Acer Nitro 5', N'PRO05.PNG', 12000000)
INSERT [dbo].[Product] ([Id], [CatalogId], [ProductCode], [ProductName], [Picture], [UnitPrice]) VALUES (10, 1, N'asdasdsad', N'qwewqe', N'asdfds', 123123)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [Username], [Password]) VALUES (1, N'namdam', N'1')
INSERT [dbo].[User] ([UserId], [Username], [Password]) VALUES (2, N'admin', N'2')
INSERT [dbo].[User] ([UserId], [Username], [Password]) VALUES (3, N'namdam1123', N'123')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Catalog] FOREIGN KEY([CatalogId])
REFERENCES [dbo].[Catalog] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Catalog]
GO
/****** Object:  StoredProcedure [dbo].[CapNhatGia]    Script Date: 10/28/2024 4:00:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CapNhatGia]
@Id int,
@UnitPrice int
as
begin
update Product set UnitPrice=@UnitPrice
where Id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTietSanPham]    Script Date: 10/28/2024 4:00:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTietSanPham]
@id int
as
begin
select * from Product where Id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[ThemSanPham]    Script Date: 10/28/2024 4:00:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemSanPham]
@CatalogId int,
@ProductCode nvarchar(50),
@ProductName nvarchar(250),
@Picture nvarchar(max),
@UnitPrice float
as
begin
 insert into Product(CatalogId,ProductCode,ProductName,Picture,UnitPrice)
 values(@CatalogId,@ProductCode,@ProductName,@Picture,@UnitPrice)
end
GO
/****** Object:  StoredProcedure [dbo].[ToanBoSanPham]    Script Date: 10/28/2024 4:00:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ToanBoSanPham]
as
begin
select * from Product
end
GO
/****** Object:  StoredProcedure [dbo].[XoaSanPham]    Script Date: 10/28/2024 4:00:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XoaSanPham]
@Id int
as
begin
delete from Product 
where Id=@Id
end
GO
USE [master]
GO
ALTER DATABASE [QuanLySanPham] SET  READ_WRITE 
GO
