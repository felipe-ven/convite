USE [master]
GO
/****** Object:  Database [convite_aniversario]    Script Date: 04/04/2025 15:32:10 ******/
CREATE DATABASE [convite_aniversario]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'convite_aniversario', FILENAME = N'D:\Maquina Virtual\Nova pasta\MSSQL14.SQLEXPRESS\MSSQL\DATA\convite_aniversario.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'convite_aniversario_log', FILENAME = N'D:\Maquina Virtual\Nova pasta\MSSQL14.SQLEXPRESS\MSSQL\DATA\convite_aniversario_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [convite_aniversario] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [convite_aniversario].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [convite_aniversario] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [convite_aniversario] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [convite_aniversario] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [convite_aniversario] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [convite_aniversario] SET ARITHABORT OFF 
GO
ALTER DATABASE [convite_aniversario] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [convite_aniversario] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [convite_aniversario] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [convite_aniversario] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [convite_aniversario] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [convite_aniversario] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [convite_aniversario] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [convite_aniversario] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [convite_aniversario] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [convite_aniversario] SET  DISABLE_BROKER 
GO
ALTER DATABASE [convite_aniversario] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [convite_aniversario] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [convite_aniversario] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [convite_aniversario] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [convite_aniversario] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [convite_aniversario] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [convite_aniversario] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [convite_aniversario] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [convite_aniversario] SET  MULTI_USER 
GO
ALTER DATABASE [convite_aniversario] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [convite_aniversario] SET DB_CHAINING OFF 
GO
ALTER DATABASE [convite_aniversario] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [convite_aniversario] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [convite_aniversario] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [convite_aniversario] SET QUERY_STORE = OFF
GO
USE [convite_aniversario]
GO
/****** Object:  User [user]    Script Date: 04/04/2025 15:32:10 ******/
CREATE USER [user] FOR LOGIN [user] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [convite_user]    Script Date: 04/04/2025 15:32:10 ******/
CREATE USER [convite_user] FOR LOGIN [convite_user] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [user]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [user]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [user]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [user]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [user]
GO
ALTER ROLE [db_datareader] ADD MEMBER [user]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [user]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [user]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [user]
GO
ALTER ROLE [db_owner] ADD MEMBER [convite_user]
GO
/****** Object:  Table [dbo].[convidado]    Script Date: 04/04/2025 15:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[convidado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [convite_aniversario] SET  READ_WRITE 
GO
