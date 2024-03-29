USE [master]
GO
CREATE DATABASE [IMDB]
USE [IMDB]
GO
CREATE TABLE [dbo].[directors](
	[movie_id] [int] NOT NULL,
	[person_id] [int] NOT NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[movies](
	[id] [int] NOT NULL,
	[title] [nvarchar](256) NOT NULL,
	[year] [smallint] NOT NULL,
CONSTRAINT [PK_movies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
))
CREATE TABLE [dbo].[people](
	[id] [int] NOT NULL,
	[name] [nvarchar](256) NOT NULL,
	[birth] [smallint] NULL,
CONSTRAINT [PK_people] PRIMARY KEY CLUSTERED 
(
	[id] ASC
))
CREATE TABLE [dbo].[ratings](
	[movie_id] [int] NOT NULL,
	[rating] [float] NOT NULL,
	[votes] [int] NOT NULL,
 CONSTRAINT [PK_ratings] PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC
))
GO
/****** Object:  Table [dbo].[starts]    Script Date: 3/7/2024 5:15:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[starts](
	[movie_id] [int] NOT NULL,
	[person_id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[starts]  WITH CHECK ADD  CONSTRAINT [FK_movie_stars] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([id])
GO
ALTER TABLE [dbo].[starts] CHECK CONSTRAINT [FK_movie_stars]
GO
USE [master]
GO
ALTER DATABASE [IMDB] SET  READ_WRITE 
GO
