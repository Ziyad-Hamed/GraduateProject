USE [master]
GO
/****** Object:  Database [HMS]    Script Date: 3/16/2021 3:20:37 AM ******/
CREATE DATABASE [HMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HMS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HMS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HMS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [HMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HMS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HMS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HMS] SET  MULTI_USER 
GO
ALTER DATABASE [HMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HMS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HMS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HMS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HMS] SET QUERY_STORE = OFF
GO
USE [HMS]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 3/16/2021 3:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Admin_ID] [int] NOT NULL,
	[Admin_Name] [nvarchar](50) NULL,
	[Admin_FatherName] [nvarchar](50) NULL,
	[Admin_Email] [nvarchar](max) NULL,
	[Admin_Password] [nvarchar](max) NULL,
	[Admin_ContactNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Admin_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 3/16/2021 3:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[Appointment_ID] [int] NOT NULL,
	[General_OPD_Patient_ID] [int] NULL,
	[Appointment_Disease] [nvarchar](50) NULL,
	[Doctor_ID] [int] NULL,
	[Appointment_DateTime] [datetime] NULL,
	[Appointment_Price] [decimal](18, 2) NULL,
	[Department_ID] [int] NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[Appointment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 3/16/2021 3:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Department_ID] [int] NOT NULL,
	[Department_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Department_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 3/16/2021 3:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[Doctor_ID] [int] NOT NULL,
	[Doctor_Name] [nvarchar](50) NULL,
	[Doctor_FatherName] [nvarchar](50) NULL,
	[Doctor_Email] [nvarchar](max) NULL,
	[Doctor_Age] [int] NULL,
	[Doctor_Password] [nvarchar](max) NULL,
	[Doctor_Gender] [bit] NULL,
	[Doctor_ContactNumber] [nvarchar](50) NULL,
	[Doctor_Salary] [decimal](18, 2) NULL,
	[Doctor_Address] [nvarchar](max) NULL,
	[Department_ID] [int] NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[Doctor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor_Test_Report]    Script Date: 3/16/2021 3:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor_Test_Report](
	[Doctor_Test_Report_ID] [int] NOT NULL,
	[General_OPD_Patient_ID] [int] NULL,
	[Doctor_ID] [int] NULL,
	[Doctor_Test_Report_Details] [nvarchar](max) NULL,
	[Appointment_ID] [int] NULL,
 CONSTRAINT [PK_Doctor_Test_Report] PRIMARY KEY CLUSTERED 
(
	[Doctor_Test_Report_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor_Test_Report_Surgery]    Script Date: 3/16/2021 3:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor_Test_Report_Surgery](
	[Doctor_Test_Report_Surgery_ID] [int] NOT NULL,
	[Surgery_OPD_Patient_ID] [int] NULL,
	[Doctor_ID] [int] NULL,
	[Doctor_Test_Report_Surgery__Details] [nvarchar](max) NULL,
	[SurgeryAppoinrment_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[General_OPD_Patient]    Script Date: 3/16/2021 3:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[General_OPD_Patient](
	[General_OPD_Patient_ID] [int] NOT NULL,
	[General_OPD_Patient_Name] [nvarchar](50) NULL,
	[General_OPD_Patient_FatherName] [nvarchar](50) NULL,
	[General_OPD_Patient_Address] [nvarchar](max) NULL,
	[General_OPD_Patient_Gender] [bit] NULL,
	[General_OPD_Patient_Age] [int] NULL,
	[General_OPD_Patient_ContactNumber] [nvarchar](50) NULL,
	[General_OPD_Patient_Disease] [nvarchar](50) NULL,
	[General_OPD_Patient_BloodType] [nvarchar](50) NULL,
	[General_OPD_Patient_Email] [nvarchar](max) NULL,
	[General_OPD_Patient_Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_General_OPD_Patient] PRIMARY KEY CLUSTERED 
(
	[General_OPD_Patient_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicine]    Script Date: 3/16/2021 3:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine](
	[Medicine_ID] [int] NOT NULL,
	[Medicine_Name] [nvarchar](50) NULL,
	[Medicine_Epire] [datetime] NULL,
	[Medicine_Price] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Medicine] PRIMARY KEY CLUSTERED 
(
	[Medicine_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicine_Selected]    Script Date: 3/16/2021 3:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine_Selected](
	[Medicine_Selected_ID] [int] NOT NULL,
	[Medicine_ID] [int] NULL,
	[General_OPD_Patient_ID] [int] NULL,
	[Doctor_ID] [int] NULL,
 CONSTRAINT [PK_Medicine_Selected] PRIMARY KEY CLUSTERED 
(
	[Medicine_Selected_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient_Payment]    Script Date: 3/16/2021 3:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient_Payment](
	[PatientPayment_ID] [int] NOT NULL,
	[General_OPD_Patient_ID] [int] NULL,
	[PatientPayment_DateTime] [datetime] NULL,
	[PatientPayment_Amount] [decimal](18, 2) NULL,
	[Appointment_ID] [int] NULL,
 CONSTRAINT [PK_Patient_Payment] PRIMARY KEY CLUSTERED 
(
	[PatientPayment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receptionist]    Script Date: 3/16/2021 3:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receptionist](
	[Receptionist_ID] [int] NOT NULL,
	[Receptionist_Name] [nvarchar](50) NULL,
	[Receptionist_FatherName] [nvarchar](50) NULL,
	[Receptionist_Email] [nvarchar](max) NULL,
	[Receptionist_Password] [nvarchar](max) NULL,
	[Receptionist_Gender] [bit] NULL,
	[Receptionist_Address] [nvarchar](max) NULL,
	[Receptionist_Salary] [decimal](18, 2) NULL,
	[Receptionist_ContactNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_Receptionist] PRIMARY KEY CLUSTERED 
(
	[Receptionist_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Surgery_OPD_Patient]    Script Date: 3/16/2021 3:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Surgery_OPD_Patient](
	[Surgery_OPD_Patient_ID] [int] NOT NULL,
	[Surgery_OPD_Patient_Name] [nvarchar](50) NULL,
	[Surgery_OPD_Patient_FatherName] [nvarchar](50) NULL,
	[Surgery_OPD_Patient_Address] [nvarchar](max) NULL,
	[Surgery_OPD_Patient_Gender] [bit] NULL,
	[Surgery_OPD_Patient_Age] [int] NULL,
	[Surgery_OPD_Patient_ContactNumber] [nvarchar](50) NULL,
	[Surgery_OPD_Patient_Disease] [nvarchar](50) NULL,
	[Surgery_OPD_Patient_BloodType] [nvarchar](50) NULL,
	[Surgery_OPD_Patient_Email] [nvarchar](max) NULL,
	[Surgery_OPD_Patient_Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_Surgery_OPD_Patient] PRIMARY KEY CLUSTERED 
(
	[Surgery_OPD_Patient_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Surgery_Patient_Payment]    Script Date: 3/16/2021 3:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Surgery_Patient_Payment](
	[Surgery_PatientPayment_ID] [int] NOT NULL,
	[Surgery_OPD_Patient_ID] [int] NULL,
	[Surgery_PatientPayment_DateTime] [datetime] NULL,
	[Surgery_PatientPayment_Amount] [decimal](18, 2) NULL,
	[SurgeryAppoinrment_ID] [int] NULL,
 CONSTRAINT [PK_Surgery_Patient_Payment] PRIMARY KEY CLUSTERED 
(
	[Surgery_PatientPayment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurgeryAppointment]    Script Date: 3/16/2021 3:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurgeryAppointment](
	[SurgeryAppoinrment_ID] [int] NOT NULL,
	[SurgeryAppoinrment_DateTime] [datetime] NULL,
	[SurgeryAppoinrment_Price] [decimal](18, 2) NULL,
	[Surgery_OPD_Patient_ID] [int] NULL,
	[Doctor_ID] [int] NULL,
	[SurgeryAppoinrment_Disease] [nvarchar](50) NULL,
	[Department_ID] [int] NULL,
 CONSTRAINT [PK_SurgeryAppointment] PRIMARY KEY CLUSTERED 
(
	[SurgeryAppoinrment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Department] FOREIGN KEY([Department_ID])
REFERENCES [dbo].[Department] ([Department_ID])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Department]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Doctor] FOREIGN KEY([Doctor_ID])
REFERENCES [dbo].[Doctor] ([Doctor_ID])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Doctor]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_General_OPD_Patient] FOREIGN KEY([General_OPD_Patient_ID])
REFERENCES [dbo].[General_OPD_Patient] ([General_OPD_Patient_ID])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_General_OPD_Patient]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Department] FOREIGN KEY([Department_ID])
REFERENCES [dbo].[Department] ([Department_ID])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Department]
GO
ALTER TABLE [dbo].[Doctor_Test_Report]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Test_Report_Doctor] FOREIGN KEY([Doctor_ID])
REFERENCES [dbo].[Doctor] ([Doctor_ID])
GO
ALTER TABLE [dbo].[Doctor_Test_Report] CHECK CONSTRAINT [FK_Doctor_Test_Report_Doctor]
GO
ALTER TABLE [dbo].[Doctor_Test_Report]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Test_Report_General_OPD_Patient] FOREIGN KEY([General_OPD_Patient_ID])
REFERENCES [dbo].[General_OPD_Patient] ([General_OPD_Patient_ID])
GO
ALTER TABLE [dbo].[Doctor_Test_Report] CHECK CONSTRAINT [FK_Doctor_Test_Report_General_OPD_Patient]
GO
ALTER TABLE [dbo].[Doctor_Test_Report_Surgery]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Test_Report_Surgery_Doctor] FOREIGN KEY([Doctor_ID])
REFERENCES [dbo].[Doctor] ([Doctor_ID])
GO
ALTER TABLE [dbo].[Doctor_Test_Report_Surgery] CHECK CONSTRAINT [FK_Doctor_Test_Report_Surgery_Doctor]
GO
ALTER TABLE [dbo].[Doctor_Test_Report_Surgery]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Test_Report_Surgery_SurgeryAppointment] FOREIGN KEY([SurgeryAppoinrment_ID])
REFERENCES [dbo].[SurgeryAppointment] ([SurgeryAppoinrment_ID])
GO
ALTER TABLE [dbo].[Doctor_Test_Report_Surgery] CHECK CONSTRAINT [FK_Doctor_Test_Report_Surgery_SurgeryAppointment]
GO
ALTER TABLE [dbo].[Medicine_Selected]  WITH CHECK ADD  CONSTRAINT [FK_Medicine_Selected_Medicine] FOREIGN KEY([Medicine_ID])
REFERENCES [dbo].[Medicine] ([Medicine_ID])
GO
ALTER TABLE [dbo].[Medicine_Selected] CHECK CONSTRAINT [FK_Medicine_Selected_Medicine]
GO
ALTER TABLE [dbo].[Patient_Payment]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Payment_Appointment] FOREIGN KEY([Appointment_ID])
REFERENCES [dbo].[Appointment] ([Appointment_ID])
GO
ALTER TABLE [dbo].[Patient_Payment] CHECK CONSTRAINT [FK_Patient_Payment_Appointment]
GO
ALTER TABLE [dbo].[Patient_Payment]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Payment_General_OPD_Patient] FOREIGN KEY([General_OPD_Patient_ID])
REFERENCES [dbo].[General_OPD_Patient] ([General_OPD_Patient_ID])
GO
ALTER TABLE [dbo].[Patient_Payment] CHECK CONSTRAINT [FK_Patient_Payment_General_OPD_Patient]
GO
ALTER TABLE [dbo].[Surgery_Patient_Payment]  WITH CHECK ADD  CONSTRAINT [FK_Surgery_Patient_Payment_Surgery_OPD_Patient] FOREIGN KEY([Surgery_OPD_Patient_ID])
REFERENCES [dbo].[Surgery_OPD_Patient] ([Surgery_OPD_Patient_ID])
GO
ALTER TABLE [dbo].[Surgery_Patient_Payment] CHECK CONSTRAINT [FK_Surgery_Patient_Payment_Surgery_OPD_Patient]
GO
ALTER TABLE [dbo].[Surgery_Patient_Payment]  WITH CHECK ADD  CONSTRAINT [FK_Surgery_Patient_Payment_SurgeryAppointment] FOREIGN KEY([SurgeryAppoinrment_ID])
REFERENCES [dbo].[SurgeryAppointment] ([SurgeryAppoinrment_ID])
GO
ALTER TABLE [dbo].[Surgery_Patient_Payment] CHECK CONSTRAINT [FK_Surgery_Patient_Payment_SurgeryAppointment]
GO
ALTER TABLE [dbo].[SurgeryAppointment]  WITH CHECK ADD  CONSTRAINT [FK_SurgeryAppointment_Department] FOREIGN KEY([Department_ID])
REFERENCES [dbo].[Department] ([Department_ID])
GO
ALTER TABLE [dbo].[SurgeryAppointment] CHECK CONSTRAINT [FK_SurgeryAppointment_Department]
GO
ALTER TABLE [dbo].[SurgeryAppointment]  WITH CHECK ADD  CONSTRAINT [FK_SurgeryAppointment_Doctor] FOREIGN KEY([Doctor_ID])
REFERENCES [dbo].[Doctor] ([Doctor_ID])
GO
ALTER TABLE [dbo].[SurgeryAppointment] CHECK CONSTRAINT [FK_SurgeryAppointment_Doctor]
GO
ALTER TABLE [dbo].[SurgeryAppointment]  WITH CHECK ADD  CONSTRAINT [FK_SurgeryAppointment_Surgery_OPD_Patient] FOREIGN KEY([Surgery_OPD_Patient_ID])
REFERENCES [dbo].[Surgery_OPD_Patient] ([Surgery_OPD_Patient_ID])
GO
ALTER TABLE [dbo].[SurgeryAppointment] CHECK CONSTRAINT [FK_SurgeryAppointment_Surgery_OPD_Patient]
GO
USE [master]
GO
ALTER DATABASE [HMS] SET  READ_WRITE 
GO
