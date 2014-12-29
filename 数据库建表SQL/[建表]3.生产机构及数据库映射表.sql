/*
	组织机构表及数据库对照表
	所有表都建立在管理数据库中
*/
CREATE TABLE [dbo].[system_Organization](										-- 组织机构结构表
	[OrganizationID] [varchar](64) DEFAULT (newid()) NOT NULL,					-- 生成机构ID（GUID自动生成）
	[LevelCode] [varchar](20) NULL,												-- 生产机构层次码
	[DatabaseID] [uniqueidentifier] NULL,										-- 数据库ID
	[Name] [nvarchar](50) NULL,													-- 生产机构名称
	[Type] [nvarchar](50) NULL,													-- 生产线类型
	[CoefficientAltitude] [int] DEFAULT(1) NULL,								-- 海拔高度修正系数
	[RawToClinkerCoff] [decimal](18, 4) NULL,									-- 生/熟料这算系数
	[ENABLED] [bit] NULL,														-- 是否有效
	[LegalRepresentative] [nvarchar](30) NULL,									-- 法人代表
	[Address] [nvarchar](max) NULL,												-- 生产机构地址
	[Contacts] [nchar](10) NULL,												-- 联系人
	[ContactInfo] [varchar](max) NULL,											-- 联系人信息
	[CommissioningDate] [datetime] NULL,										-- 投产日期	
	[Products] [nvarchar](max) NULL,											-- 主要产品
	[Remarks] [nvarchar](max) NULL												-- 备注
)
GO

CREATE TABLE [dbo].[system_Database](											-- 数据库对照表
	[DatabaseID] [uniqueidentifier] NULL,										-- 数据库ID
	[ManagementDatabase] [varchar](max) NULL,									-- 管理数据库
	[DCSProcessDatabase] [varchar](max) NULL,									-- DCS过程数据库
	[MeterDatabase] [varchar](max) NULL											-- 电表数据库
)
GO