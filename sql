USE [testBoard]
GO

/****** Object:  Table [dbo].[board]    Script Date: 2018-06-18 오후 3:25:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[board](
	[id] [varchar](50) NOT NULL,
	[title] [varchar](50) NOT NULL,
	[writer] [varchar](20) NOT NULL,
	[date] [datetime] NOT NULL,
	[contents] [varchar](200) NULL,
 CONSTRAINT [PK_board] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


insert into dbo.board values(1,'test1','me',getdate(),'test111');

select * from board;