CREATE TABLE [dbo].[system_TypeDictionary](
	[TYPE_ID] [varchar](64) PRIMARY KEY NOT NULL,
	[TYPE_NAME] [varchar](64) NOT NULL,
	[GROUP_ID] [varchar](64) NOT NULL,
	[DISPLAY_INDEX] [int] DEFAULT (1) NOT NULL,
	[REMARK] [varchar](128) NULL,
	[ENABLED] [bit] DEFAULT (1) NOT NULL
)
GO

CREATE TABLE [dbo].[analyse_KPI_Tags](
	[ANALYSE_DATA_ID] [uniqueidentifier] PRIMARY KEY DEFAULT (newid()) NOT NULL,
	[ANALYSE_DATA_TEXT] [varchar](64) NOT NULL,
	[ANALYSE_DATA_TAG] [varchar](128) NOT NULL,
	[ANALYSE_DATA_TABLE] [varchar](128) NULL,
	[ANALYSE_DATA_CATEGORY] [varchar](64) NOT NULL,
	[PRODUCTION_LINE_TYPE] [varchar](64) NULL,
	[USER_ID] [varchar](64) NULL,
	[ANALYSE_DATA_VALUE] [decimal](14, 4) NULL,
	[ANALYSE_DATA_GROUP] [varchar](64) NULL,
	[DISPLAY_INDEX] [int] DEFAULT (1) NOT NULL,
	[OTHER_INFO] [varchar](256) NULL,
	[ENABLED] [bit] DEFAULT (1) NOT NULL
)
GO

CREATE TABLE [dbo].[system_Organization_Instrumentation](
	[OrganizationID] [varchar](64) DEFAULT (newid()) NOT NULL,
	[LevelCode] [varchar](20) NULL,
	[DatabaseID] [uniqueidentifier] NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[ENABLED] [bit] DEFAULT (1) NULL,
	[LegalRepresentative] [nvarchar](30) NULL,
	[Address] [nvarchar](max) NULL,
	[Contacts] [nchar](10) NULL,
	[ContactInfo] [varchar](max) NULL,
	[CommissioningDate] [datetime] NULL,
	[Products] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL
)
GO

CREATE TABLE [dbo].[tz_Plan](
	[KeyID] [uniqueidentifier] PRIMARY KEY NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[Date] [char](10) NOT NULL,
	[ProductionLineType] [varchar](32) NOT NULL,
	[TableName] [char](100) NULL,
	[CreationDate] [datetime] NULL,
	[Version] [datetime] NULL,
	[ModifierID] [int] NULL,
	[Statue] [int] NULL,
	[Remarks] [nvarchar](max) NULL
)
GO


CREATE TABLE [dbo].[plan_EnergyConsumptionPlan_Template](
	[QuotasID] [varchar](64) PRIMARY KEY NOT NULL,
	[QuotasName] [varchar](64) NOT NULL,
	[DisplayIndex] [int] DEFAULT (1) NOT NULL,
	[ProductionLineType] [varchar](32) NOT NULL
)
GO

CREATE TABLE [dbo].[plan_EnergyConsumptionYearlyPlan](
	[QuotasItemID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,
	[QuotasID] [varchar](64) NOT NULL,
	[QuotasName] [varchar](64) NULL,
	[DisplayIndex] [int] DEFAULT ((1)) NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[ProductionLineType] [varchar](32) NULL,
	[January] [varchar](64) NULL,
	[February] [varchar](64) NULL,
	[March] [varchar](64) NULL,
	[April] [varchar](64) NULL,
	[May] [varchar](64) NULL,
	[June] [varchar](64) NULL,
	[July] [varchar](64) NULL,
	[August] [varchar](64) NULL,
	[September] [varchar](64) NULL,
	[October] [varchar](64) NULL,
	[November] [varchar](64) NULL,
	[December] [varchar](64) NULL,
	[Totals] [varchar](256) NULL,
	[Remarks] [varchar](256) NULL
)
GO