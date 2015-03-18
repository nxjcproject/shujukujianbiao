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
	[FileItemId] [varchar](64) NOT NULL,                                        --�ļ���ID
	[FileName] [varchar](128) NOT NULL,                                         --�ļ���
	[FileGroupId] [varchar](128) NOT NULL,                                      --�ļ�����,һ�������������ļ���һ�����⼴Ϊһ��
	[FileClassify] [varchar](64) NOT NULL,                                      --�ļ�����,һ�����ܱ�ʾһ�࣬����һ��ҳ��Ϊһ������
	[FilePath] [varchar](512) NOT NULL,                                         --�ļ�·����ȫ·����
	[FileSize] [float] NOT NULL,                                                --�ļ���С
	[UserId] [varchar](32) NOT NULL,                                            --�û�ID
	[CreateTime] [datetime] NOT NULL,                                           --�ϴ�ʱ��
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

