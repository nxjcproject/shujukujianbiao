CREATE TABLE [dbo].[forecast_ProductionLineEnergyConsumptionTemplate](     		-- 生产线能耗预测结果模板
	[OrganizationID] [varchar](64) NOT NULL,
	[Name] [nchar](50) NULL,													-- 生产机构名称
	[Type] nchar(50) NOT NULL,													-- 生产线类型：水泥磨、熟料
	[IdSort] int NOT NULL,														-- 输出排序用 ID
	[QuotasID] [varchar](64) NOT NULL,											-- 程序中使用的行ID
	[IndicatorName] [nchar](50) NOT NULL,										-- 指标项目名称
	[January] decimal(18, 2)  DEFAULT (0) NULL,
	[February] decimal(18, 2)  DEFAULT (0) NULL,
	[March] decimal(18, 2)  DEFAULT (0) NULL,
	[April] decimal(18, 2)  DEFAULT (0) NULL,
	[May] decimal(18, 2)  DEFAULT (0) NULL,
	[June] decimal(18, 2)  DEFAULT (0) NULL,
	[July] decimal(18, 2)  DEFAULT (0) NULL,
	[August] decimal(18, 2)  DEFAULT (0) NULL,
	[September] decimal(18, 2)  DEFAULT (0) NULL,
	[October] decimal(18, 2)  DEFAULT (0) NULL,
	[November] decimal(18, 2)  DEFAULT (0) NULL,
	[December] decimal(18, 2)  DEFAULT (0) NULL,
	[Totals] decimal(18, 2)  DEFAULT (0) NULL,									-- 年度
	[Remarks] [nvarchar](256) NULL
)
GO

CREATE TABLE [dbo].[forecast_ProductionLineEnergyConsumptionReference](			-- 生产线能耗预测参考值
	[OrganizationID] [varchar](64) NOT NULL,
	[QuotasID] [varchar](64) NOT NULL,											-- 程序中使用的行ID
	[January] decimal(18, 2)  DEFAULT (0) NULL,
	[February] decimal(18, 2)  DEFAULT (0) NULL,
	[March] decimal(18, 2)  DEFAULT (0) NULL,
	[April] decimal(18, 2)  DEFAULT (0) NULL,
	[May] decimal(18, 2)  DEFAULT (0) NULL,
	[June] decimal(18, 2)  DEFAULT (0) NULL,
	[July] decimal(18, 2)  DEFAULT (0) NULL,
	[August] decimal(18, 2)  DEFAULT (0) NULL,
	[September] decimal(18, 2)  DEFAULT (0) NULL,
	[October] decimal(18, 2)  DEFAULT (0) NULL,
	[November] decimal(18, 2)  DEFAULT (0) NULL,
	[December] decimal(18, 2)  DEFAULT (0) NULL,
	[Totals] decimal(18, 2)  DEFAULT (0) NULL,									-- 年度
	[Remarks] [nvarchar](256) NULL
)
GO