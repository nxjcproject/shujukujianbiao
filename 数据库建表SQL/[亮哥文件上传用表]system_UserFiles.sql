USE [NXJC]
GO

/****** Object:  Table [dbo].[system_UserFiles]    Script Date: 2015/3/16 16:31:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[system_UserFiles](
	[FileItemId] [varchar](64) NOT NULL,                                        --文件项ID
	[FileName] [varchar](128) NOT NULL,                                         --文件名
	[FileGroupId] [varchar](128) NOT NULL,                                      --文件分组,一个主题关联多个文件，一个主题即为一组
	[FileClassify] [varchar](64) NOT NULL,                                      --文件分类,一个功能表示一类，往往一个页面为一个功能
	[FilePath] [varchar](512) NOT NULL,                                         --文件路径（全路径）
	[FileSize] [float] NOT NULL,                                                --文件大小
	[UserId] [varchar](32) NOT NULL,                                            --用户ID
	[CreateTime] [datetime] NOT NULL,                                           --上传时间
 CONSTRAINT [PK_system_UserFiles] PRIMARY KEY CLUSTERED 
(
	[FileItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[system_UserFiles] ADD  CONSTRAINT [DF_system_UserFiles_FileItemId]  DEFAULT (newid()) FOR [FileItemId]
GO

ALTER TABLE [dbo].[system_UserFiles] ADD  CONSTRAINT [DF_system_UserFiles_FileSize]  DEFAULT ((1.0)) FOR [FileSize]
GO

