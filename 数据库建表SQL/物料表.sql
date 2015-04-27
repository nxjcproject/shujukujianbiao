/*
	物料表及其相关表
*/

CREATE TABLE [dbo].[tz_Material](						--物料引领表
	[KeyID] [uniqueidentifier] NOT NULL,				--唯一标识
	[OrganizationID] [varchar](64) NOT NULL,			--组织机构ID
	[Name] [nvarchar](50) NULL,					    	--名称
	[CreatedDate] [datetime] NULL,						--创建时间
	[Type] [int]  NULL,								    --类型
	[Enable] [bit] NOT NULL,							--使能
	[State] [int] NOT NULL								--状态
)
GO

CREATE TABLE [dbo].[Material_MaterialDetail](			--物料详细信息表
	[MaterialId] [uniqueidentifier] NOT NULL,			--物料ID，唯一标识
	[VariableId] [varchar](64) NULL,					--变量ID
	[name][nvarchar](64) NULL,							--汉语描述
	[KeyID] [uniqueidentifier] NOT NULL,				--对应引领表ID
	[Type] [varchar](64) NULL,							--物料类型
	[MaterialErpCode] [varchar](64) NULL,				--ERP编码
	[TagTableName] [varchar](64) NULL,					--变量存储表
	[Formula] [varchar](1024) NULL,						--公式
	[Coefficient] [decimal](6, 4) NULL					--dcs累计量修正系数
) 
GO