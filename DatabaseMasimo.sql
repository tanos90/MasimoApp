USE [master]
GO
/****** Object:  Database [TestMasimo] Script Date: 06/16/2020 10:35:12 AM ******/
CREATE DATABASE [TestMasimo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestMasimo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TestMasimo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestMasimo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TestMasimo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TestMasimo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
  EXEC [TestMasimo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestMasimo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestMasimo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestMasimo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestMasimo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestMasimo] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestMasimo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TestMasimo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestMasimo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestMasimo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestMasimo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestMasimo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestMasimo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestMasimo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestMasimo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestMasimo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TestMasimo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestMasimo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestMasimo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestMasimo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestMasimo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestMasimo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TestMasimo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestMasimo] SET RECOVERY FULL 
GO
ALTER DATABASE [TestMasimo] SET  MULTI_USER 
GO
ALTER DATABASE [TestMasimo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestMasimo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestMasimo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestMasimo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TestMasimo] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TestMasimo', N'ON'
GO
ALTER DATABASE [TestMasimo] SET QUERY_STORE = OFF
GO
USE [TestMasimo]
GO
/****** Object:  Table [dbo].[ElectronicBoard] Script Date: 06/16/2020 10:35:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectronicBoard]
(
  [ElectronicBoardId] [nchar](10) NOT NULL,
  [ElectronicBoardName] [nchar](50) NOT NULL,
  [ElectronicBoardDescription] [nchar](100) NOT NULL,
  CONSTRAINT [PK_ElectronicBoard] PRIMARY KEY CLUSTERED 
(
	[ElectronicBoardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role] Script Date: 06/16/2020 10:35:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role]
(
  [RoleId] [nchar](10) NOT NULL,
  [RoleName] [nchar](50) NOT NULL,
  [RoleDescription] [nchar](100) NULL,
  CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Station] Script Date: 06/16/2020 10:35:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Station]
(
  [StationId] [nchar](10) NOT NULL,
  [StationName] [nchar](50) NOT NULL,
  [StationDescription] [nchar](100) NULL,
  [Active] [bit] NOT NULL,
  [CreationDate] [datetime] NOT NULL,
  CONSTRAINT [PK_Station] PRIMARY KEY CLUSTERED 
(
	[StationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User] Script Date: 06/16/2020 10:35:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User]
(
  [UserId] [nchar](10) NOT NULL,
  [FirstName] [nchar](50) NOT NULL,
  [LastName] [nchar](50) NOT NULL,
  [Email] [nchar](50) NOT NULL,
  [Password] [nchar](10) NULL,
  CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole] Script Date: 06/16/2020 10:35:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole]
(
  [UserRoleId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
  [UserId] [nchar](10) NOT NULL,
  [RoleId] [nchar](10) NOT NULL,
  [CreationDate] [datetime] NOT NULL,
  CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkOrder] Script Date: 06/16/2020 10:35:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrder]
(
  [WorkOrderId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
  [OrderNumber] [nchar](10) NOT NULL,
  [CreationDate] [datetime] NOT NULL,
  [CreatorId] [nchar](10) NOT NULL,
  [WorkOrderStatusId] [numeric](18, 0) NULL,
  [CurrentStationId] [nchar](10) NOT NULL,
  [FinishDate] [nchar](10) NULL,
  CONSTRAINT [PK_WorkOrder] PRIMARY KEY CLUSTERED 
(
	[WorkOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkOrderElectronicBoards] Script Date: 06/16/2020 10:35:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrderElectronicBoards]
(
  [WorkOrderElectronicBoardsId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
  [ElectronicBoardId] [nchar](10) NOT NULL,
  [WorkOrderId] [numeric](18, 0) NOT NULL,
  [ApprovedQuantity] [numeric](18, 0) NOT NULL,
  [RejectedQuantity] [numeric](18, 0) NOT NULL,
  CONSTRAINT [PK_WorkOrderElectronicBoards] PRIMARY KEY CLUSTERED 
(
	[WorkOrderElectronicBoardsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkOrderHistory] Script Date: 06/16/2020 10:35:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrderHistory]
(
  [WorkOrderHistoryId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
  [WorkOrderId] [numeric](18, 0) NULL,
  [OldStatus] [numeric](18, 0) NULL,
  [NewStatus] [numeric](18, 0) NULL,
  [ModifiedOn] [datetime] NULL,
  [ModifiedBy] [numeric](18, 0) NULL,
  [Information] [nchar](200) NULL,
  CONSTRAINT [PK_WorkOrderHistory] PRIMARY KEY CLUSTERED 
(
	[WorkOrderHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkOrderStatus] Script Date: 06/16/2020 10:35:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrderStatus]
(
  [WorkOrderStatusId] [numeric](18, 0) NOT NULL,
  [WorkOrderStatusName] [nchar](50) NOT NULL,
  [WorkOrderStatusTypeId] [numeric](18, 0) NOT NULL,
  [Active] [bit] NOT NULL,
  CONSTRAINT [PK_ProductionStatus] PRIMARY KEY CLUSTERED 
(
	[WorkOrderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkOrderStatusType] Script Date: 06/16/2020 10:35:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrderStatusType]
(
  [WorkOrderStatusTypeId] [numeric](18, 0) NOT NULL,
  [WorkOrderStatusTypeName] [nchar](50) NOT NULL,
  CONSTRAINT [PK_WorkOrderStatusType] PRIMARY KEY CLUSTERED 
(
	[WorkOrderStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ElectronicBoard]
  ([ElectronicBoardId], [ElectronicBoardName], [ElectronicBoardDescription])
VALUES
  (N'1001', N'PCB1001', N'PCB Electronic Board Version 1')
GO
INSERT [dbo].[ElectronicBoard]
  ([ElectronicBoardId], [ElectronicBoardName], [ElectronicBoardDescription])
VALUES
  (N'1002', N'PCB1002', N'PCB Electronic Board Version 2')
GO
INSERT [dbo].[Role]
  ([RoleId], [RoleName], [RoleDescription])
VALUES
  (N'101 ', N'PRODUCTION', N'PRODUCTION ')
GO
INSERT [dbo].[Role]
  ([RoleId], [RoleName], [RoleDescription])
VALUES
  (N'102 ', N'QUALITY_ASSURANCE', N'Quality Assurance Role  ')
GO
INSERT [dbo].[Role]
  ([RoleId], [RoleName], [RoleDescription])
VALUES
  (N'103 ', N'ENGINEERING', N'Engineering')
GO
INSERT [dbo].[Station]
  ([StationId], [StationName], [StationDescription], [Active], [CreationDate])
VALUES
  (N'111 ', N'Prod1  ', N'First stage production station', 1, CAST(N'2020-06-14T18:13:22.730' AS DateTime))
GO
INSERT [dbo].[Station]
  ([StationId], [StationName], [StationDescription], [Active], [CreationDate])
VALUES
  (N'112 ', N'Prod2  ', N'Second stage production station  ', 1, CAST(N'2020-06-14T18:13:22.737' AS DateTime))
GO
INSERT [dbo].[Station]
  ([StationId], [StationName], [StationDescription], [Active], [CreationDate])
VALUES
  (N'113 ', N'Prod3  ', N'Third stage production station', 1, CAST(N'2020-06-14T18:13:22.740' AS DateTime))
GO
INSERT [dbo].[Station]
  ([StationId], [StationName], [StationDescription], [Active], [CreationDate])
VALUES
  (N'211 ', N'QA1 ', N'First stage quality assurance station  ', 1, CAST(N'2020-06-14T18:13:22.743' AS DateTime))
GO
INSERT [dbo].[Station]
  ([StationId], [StationName], [StationDescription], [Active], [CreationDate])
VALUES
  (N'212 ', N'QA2 ', N'Second stage quality assurance station ', 1, CAST(N'2020-06-14T18:13:22.743' AS DateTime))
GO
INSERT [dbo].[User]
  ([UserId], [FirstName], [LastName], [Email], [Password])
VALUES
  (N'1', N'John', N'Connor ', N'j.connor@email.com  ', N'ASDF123')
GO
INSERT [dbo].[User]
  ([UserId], [FirstName], [LastName], [Email], [Password])
VALUES
  (N'2', N'Kyle', N'Reese  ', N'k.reese@email.com', N'QWE123 ')
GO
INSERT [dbo].[User]
  ([UserId], [FirstName], [LastName], [Email], [Password])
VALUES
  (N'3', N'SYS ', N'ADMIN  ', N'admin@email.com  ', N'ADMIN  ')
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 
GO
INSERT [dbo].[UserRole]
  ([UserRoleId], [UserId], [RoleId], [CreationDate])
VALUES
  (CAST(4 AS Numeric(18, 0)), N'1', N'101 ', CAST(N'2020-06-14T18:42:28.247' AS DateTime))
GO
INSERT [dbo].[UserRole]
  ([UserRoleId], [UserId], [RoleId], [CreationDate])
VALUES
  (CAST(5 AS Numeric(18, 0)), N'2', N'102 ', CAST(N'2020-06-14T18:43:18.257' AS DateTime))
GO
INSERT [dbo].[UserRole]
  ([UserRoleId], [UserId], [RoleId], [CreationDate])
VALUES
  (CAST(6 AS Numeric(18, 0)), N'3', N'103 ', CAST(N'2020-06-14T18:43:18.260' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
SET IDENTITY_INSERT [dbo].[WorkOrder] ON 
GO
INSERT [dbo].[WorkOrder]
  ([WorkOrderId], [OrderNumber], [CreationDate], [CreatorId], [WorkOrderStatusId], [CurrentStationId], [FinishDate])
VALUES
  (CAST(2 AS Numeric(18, 0)), N'10001  ', CAST(N'2020-06-14T19:04:54.793' AS DateTime), N'1', CAST(1 AS Numeric(18, 0)), N'111 ', NULL)
GO
INSERT [dbo].[WorkOrder]
  ([WorkOrderId], [OrderNumber], [CreationDate], [CreatorId], [WorkOrderStatusId], [CurrentStationId], [FinishDate])
VALUES
  (CAST(3 AS Numeric(18, 0)), N'10002  ', CAST(N'2020-06-14T19:06:55.330' AS DateTime), N'1', CAST(2 AS Numeric(18, 0)), N'111 ', NULL)
GO
INSERT [dbo].[WorkOrder]
  ([WorkOrderId], [OrderNumber], [CreationDate], [CreatorId], [WorkOrderStatusId], [CurrentStationId], [FinishDate])
VALUES
  (CAST(4 AS Numeric(18, 0)), N'10003  ', CAST(N'2020-06-14T19:06:55.340' AS DateTime), N'1', CAST(6 AS Numeric(18, 0)), N'111 ', NULL)
GO
INSERT [dbo].[WorkOrder]
  ([WorkOrderId], [OrderNumber], [CreationDate], [CreatorId], [WorkOrderStatusId], [CurrentStationId], [FinishDate])
VALUES
  (CAST(5 AS Numeric(18, 0)), N'10004  ', CAST(N'2020-06-14T19:06:55.343' AS DateTime), N'1', CAST(7 AS Numeric(18, 0)), N'111 ', NULL)
GO
SET IDENTITY_INSERT [dbo].[WorkOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[WorkOrderElectronicBoards] ON 
GO
INSERT [dbo].[WorkOrderElectronicBoards]
  ([WorkOrderElectronicBoardsId], [ElectronicBoardId], [WorkOrderId], [ApprovedQuantity], [RejectedQuantity])
VALUES
  (CAST(3 AS Numeric(18, 0)), N'1002', CAST(3 AS Numeric(18, 0)), CAST(100 AS Numeric(18, 0)), CAST(90 AS Numeric(18, 0)))
GO
INSERT [dbo].[WorkOrderElectronicBoards]
  ([WorkOrderElectronicBoardsId], [ElectronicBoardId], [WorkOrderId], [ApprovedQuantity], [RejectedQuantity])
VALUES
  (CAST(4 AS Numeric(18, 0)), N'1002', CAST(4 AS Numeric(18, 0)), CAST(120 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)))
GO
INSERT [dbo].[WorkOrderElectronicBoards]
  ([WorkOrderElectronicBoardsId], [ElectronicBoardId], [WorkOrderId], [ApprovedQuantity], [RejectedQuantity])
VALUES
  (CAST(5 AS Numeric(18, 0)), N'1001', CAST(2 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[WorkOrderElectronicBoards] OFF
GO
SET IDENTITY_INSERT [dbo].[WorkOrderHistory] ON 
GO
INSERT [dbo].[WorkOrderHistory]
  ([WorkOrderHistoryId], [WorkOrderId], [OldStatus], [NewStatus], [ModifiedOn], [ModifiedBy], [Information])
VALUES
  (CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(N'2020-05-12T00:00:00.000' AS DateTime), CAST(1 AS Numeric(18, 0)), N'Test Passed  ')
GO
SET IDENTITY_INSERT [dbo].[WorkOrderHistory] OFF
GO
INSERT [dbo].[WorkOrderStatus]
  ([WorkOrderStatusId], [WorkOrderStatusName], [WorkOrderStatusTypeId], [Active])
VALUES
  (CAST(1 AS Numeric(18, 0)), N'Open', CAST(1 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[WorkOrderStatus]
  ([WorkOrderStatusId], [WorkOrderStatusName], [WorkOrderStatusTypeId], [Active])
VALUES
  (CAST(2 AS Numeric(18, 0)), N'In Progress', CAST(1 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[WorkOrderStatus]
  ([WorkOrderStatusId], [WorkOrderStatusName], [WorkOrderStatusTypeId], [Active])
VALUES
  (CAST(3 AS Numeric(18, 0)), N'Rework ', CAST(1 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[WorkOrderStatus]
  ([WorkOrderStatusId], [WorkOrderStatusName], [WorkOrderStatusTypeId], [Active])
VALUES
  (CAST(4 AS Numeric(18, 0)), N'Cancel ', CAST(1 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[WorkOrderStatus]
  ([WorkOrderStatusId], [WorkOrderStatusName], [WorkOrderStatusTypeId], [Active])
VALUES
  (CAST(5 AS Numeric(18, 0)), N'Completed ', CAST(1 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[WorkOrderStatus]
  ([WorkOrderStatusId], [WorkOrderStatusName], [WorkOrderStatusTypeId], [Active])
VALUES
  (CAST(6 AS Numeric(18, 0)), N'Engineering Validation ', CAST(2 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[WorkOrderStatus]
  ([WorkOrderStatusId], [WorkOrderStatusName], [WorkOrderStatusTypeId], [Active])
VALUES
  (CAST(7 AS Numeric(18, 0)), N'New Production Introduction  ', CAST(2 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[WorkOrderStatus]
  ([WorkOrderStatusId], [WorkOrderStatusName], [WorkOrderStatusTypeId], [Active])
VALUES
  (CAST(8 AS Numeric(18, 0)), N'Validation', CAST(2 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[WorkOrderStatus]
  ([WorkOrderStatusId], [WorkOrderStatusName], [WorkOrderStatusTypeId], [Active])
VALUES
  (CAST(9 AS Numeric(18, 0)), N'Engineering Support ', CAST(2 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[WorkOrderStatusType]
  ([WorkOrderStatusTypeId], [WorkOrderStatusTypeName])
VALUES
  (CAST(1 AS Numeric(18, 0)), N'PRODUCTION')
GO
INSERT [dbo].[WorkOrderStatusType]
  ([WorkOrderStatusTypeId], [WorkOrderStatusTypeName])
VALUES
  (CAST(2 AS Numeric(18, 0)), N'ENGINEERING')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId] Script Date: 06/16/2020 10:35:12 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[User]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkOrderElectronicBoards] ADD  CONSTRAINT [DF_WorkOrderElectronicBoards_ApprovedQuantity]  DEFAULT ((0)) FOR [ApprovedQuantity]
GO
ALTER TABLE [dbo].[WorkOrderElectronicBoards] ADD  CONSTRAINT [DF_WorkOrderElectronicBoards_RejectedQuantity]  DEFAULT ((0)) FOR [RejectedQuantity]
GO
ALTER TABLE [dbo].[WorkOrder]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrder_Station] FOREIGN KEY([CurrentStationId])
REFERENCES [dbo].[Station] ([StationId])
GO
ALTER TABLE [dbo].[WorkOrder] CHECK CONSTRAINT [FK_WorkOrder_Station]
GO
ALTER TABLE [dbo].[WorkOrder]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrder_User] FOREIGN KEY([CreatorId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[WorkOrder] CHECK CONSTRAINT [FK_WorkOrder_User]
GO
ALTER TABLE [dbo].[WorkOrder]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrder_WorkOrderStatus] FOREIGN KEY([WorkOrderStatusId])
REFERENCES [dbo].[WorkOrderStatus] ([WorkOrderStatusId])
GO
ALTER TABLE [dbo].[WorkOrder] CHECK CONSTRAINT [FK_WorkOrder_WorkOrderStatus]
GO
ALTER TABLE [dbo].[WorkOrderElectronicBoards]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderElectronicBoards_ElectronicBoards] FOREIGN KEY([WorkOrderId])
REFERENCES [dbo].[WorkOrder] ([WorkOrderId])
GO
ALTER TABLE [dbo].[WorkOrderElectronicBoards] CHECK CONSTRAINT [FK_WorkOrderElectronicBoards_ElectronicBoards]
GO
ALTER TABLE [dbo].[WorkOrderElectronicBoards]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderElectronicBoards_WorkOrder] FOREIGN KEY([WorkOrderId])
REFERENCES [dbo].[WorkOrder] ([WorkOrderId])
GO
ALTER TABLE [dbo].[WorkOrderElectronicBoards] CHECK CONSTRAINT [FK_WorkOrderElectronicBoards_WorkOrder]
GO
ALTER TABLE [dbo].[WorkOrderStatus]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderStatus_WorkOrderStatus] FOREIGN KEY([WorkOrderStatusTypeId])
REFERENCES [dbo].[WorkOrderStatusType] ([WorkOrderStatusTypeId])
GO
ALTER TABLE [dbo].[WorkOrderStatus] CHECK CONSTRAINT [FK_WorkOrderStatus_WorkOrderStatus]
GO
/****** Object:  StoredProcedure [dbo].[GetWorkOrder] Script Date: 06/16/2020 10:35:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Juan Carlos Navarro
-- Create date: 06/14/2020
-- Description:	Get work order data
-- =============================================
CREATE PROCEDURE [dbo].[GetWorkOrder]
  -- Add the parameters for the stored procedure here
  @CurrentUserId nvarchar(50),
  @WorkOrderId numeric,
  --Search by WorkOrderId or fetch all when sending 0
  @statusId numeric
--Search by StatusId depending on the role or fetch all when sending 0
AS
BEGIN
  -- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;

  DECLARE @CurrentUserRole nvarchar(50)

  SELECT @CurrentUserRole = Trim(ro.RoleName)
  FROM [TestMasimo].[dbo].[UserRole] ur
    INNER JOIN [TestMasimo].[dbo].[Role] ro on ro.RoleId = ur.RoleId
  WHERE ur.UserId = @CurrentUserId

  BEGIN
    SELECT
      wo.[WorkOrderId]
		  , wo.[OrderNumber]
		  , wo.[CreationDate] WorkOrderCreationDate
		  , ws.WorkOrderStatusName CurrentStatus
		  , st.[StationName]
		  , CASE WHEN woeb.ApprovedQuantity + woeb.RejectedQuantity > 0 THEN  (woeb.ApprovedQuantity / (woeb.ApprovedQuantity + woeb.RejectedQuantity)) * 100  ELSE 0 END YieldPercent
		  , CASE WHEN wo.[FinishDate] IS NULL THEN DATEDIFF(minute, wo.CreationDate, getDate())ELSE DATEDIFF(minute,wo.CreationDate,wo.[FinishDate])  END LastedTimeInMinutes

    FROM [TestMasimo].[dbo].[WorkOrder] wo

      LEFT JOIN [TestMasimo].[dbo].WorkOrderStatus ws on ws.WorkOrderStatusId = wo.WorkOrderStatusId
      INNER JOIN [TestMasimo].[dbo].[Station] st on st.StationId = wo.CurrentStationId
      INNER JOIN [TestMasimo].[dbo].[WorkOrderElectronicBoards] woeb on woeb.WorkOrderId = wo.WorkOrderId
      INNER JOIN [TestMasimo].[dbo].[WorkOrderStatusType] wost on wost.WorkOrderStatusTypeId = ws.WorkOrderStatusTypeId
      INNER JOIN [TestMasimo].[dbo].[User] us on wo.CreatorId = us.UserId
      INNER JOIN [TestMasimo].[dbo].[UserRole] ur on us.UserId = ur.UserId
      INNER JOIN [TestMasimo].[dbo].[Role] ro on ro.RoleId = ur.RoleId
    WHERE 
	  (@WorkOrderId = 0 or wo.WorkOrderId = @WorkOrderId)
      and (@statusId = 0 or wo.WorkOrderStatusId = @statusId)
      and @CurrentUserRole = TRIM(wost.WorkOrderStatusTypeName)
  END

END
GO
USE [master]
GO
ALTER DATABASE [TestMasimo] SET  READ_WRITE 
GO
