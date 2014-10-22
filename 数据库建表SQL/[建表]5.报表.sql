/*
	报表表及其相关表
	所有表都建立在管理数据库中
*/
CREATE TABLE [dbo].[tz_Report](							    					-- 报表引领表
	[OrganizationID] [uniqueidentifier] NULL,									-- 生产机构ID
	[ReportID] [int] NULL,														-- 报表名称ID
	[ReportName] [nvarchar](max) NULL,											-- 报表名称	
	[Date] [char](10) NULL,														-- 报表日期（报表类型由此字段确定，所以年报仅填写2000，月报填写2000-01，日报填写2000-01-01）
	[TableName] [char](100) NULL,						    					-- 报表内容存放的数据表名称
	[CreationDate] [datetime] NULL,												-- 创建日期
	[Version] [datetime] NULL,													-- 版本号（用于处理并发问题）
	[ModifierID] [int] NULL,													-- 修改人用户ID
	[Statue] [int] NULL,														-- 状态标识位（枚举，0留空）
	[Remarks] [nvarchar](max) NULL,												-- 备注
	[KeyID] [uniqueidentifier] NULL												-- 报表引领表ID
)
GO

CREATE TABLE [dbo].[report_AmmeterPeakerValleyFlatDay](							-- 电表峰谷平日报
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
    [KeyID] [uniqueidentifier] NULL,	           	 							-- 报表引领表ID
    [AmmeterNumber] [char](30) default(0) NULL,									-- 电表层次码
	[AmmeterName] [char](30) default(0) NULL,	            					-- 电表名称	
	[Peak_Electricity] [decimal](18, 4) default(0) NULL,    					-- 峰期电量
	[Valley_Electricity] [decimal](18, 4) default(0) NULL,  					-- 谷期电量
	[Flat_Electricity] [decimal](18, 4) default(0) NULL     					-- 平期电量
)
GO

CREATE TABLE [dbo].[report_AmmeterPeakerValleyFlatMonth](						-- 电表峰谷平月报
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,     	 					-- 主键ID
    [KeyID] [uniqueidentifier] NULL,		                					-- 报表引领表ID
    [AmmeterNumber] [char](30) NULL,				        					-- 电表层次码
	[AmmeterName] [char](30) NULL,						    					-- 电表名称	
	[Peak_Electricity] [decimal](18, 4) default(0) NULL,    					-- 峰期电量
	[Valley_Electricity] [decimal](18, 4) default(0) NULL,  					-- 谷期电量
	[Flat_Electricity] [decimal](18, 4) default(0) NULL     					-- 平期电量
)
GO

CREATE TABLE [dbo].[report_AmmeterPeakerValleyFlatYear](						-- 电表峰谷平年报
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
    [KeyID] [uniqueidentifier] NULL,		                					-- 报表引领表ID
    [AmmeterNumber] [char](30) NULL,				        					-- 电表层次码
	[AmmeterName] [char](30) NULL,						    					-- 电表名称	
	[Peak_Electricity] [bigint] default(0) NULL,            					-- 峰期电量
	[Valley_Electricity] [bigint] default(0) NULL,          					-- 谷期电量
	[Flat_Electricity] [bigint] default(0) NULL,            					-- 平期电量
)
GO

CREATE TABLE [dbo].[report_ClinkerMonthlyOutput](            					-- 熟料生产线产量报表 月报
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,     	 					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,
	[LimestoneConsumptionFirstShift] [decimal](18, 4) default(0) NULL,          -- 石灰石消耗量甲班
	[LimestoneConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[LimestoneConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[LimestoneConsumptionSum] [decimal](18, 4) default(0) NULL,
	[RawBatchProductionFirstShift] [decimal](18, 4) default(0) NULL,            -- 生料产量甲班
	[RawBatchProductionSecondShift] [decimal](18, 4) default(0) NULL,
	[RawBatchProductionThirdShift] [decimal](18, 4) default(0) NULL,
	[RawBatchProductionSum] [decimal](18, 4) default(0) NULL,
	[RawBatchConsumptionFirstShift] [decimal](18, 4) default(0) NULL,           -- 生料下料量甲班
	[RawBatchConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[RawBatchConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[RawBatchConsumptionSum] [decimal](18, 4) default(0) NULL,
	[ClinkerProductionFirstShift] [decimal](18, 4) default(0) NULL,             -- 熟料产量甲班
	[ClinkerProductionSecondShift] [decimal](18, 4) default(0) NULL,
	[ClinkerProductionThirdShift] [decimal](18, 4) default(0) NULL,
	[ClinkerProductionSum] [decimal](18, 4) default(0) NULL,
	[PowerGenerationFirstShift] [decimal](18, 4) default(0) NULL,               -- 余热发电发电量甲班
	[PowerGenerationSecondShift] [decimal](18, 4) default(0) NULL,
	[PowerGenerationThirdShift] [decimal](18, 4) default(0) NULL,
	[PowerGenerationSum] [decimal](18, 4) default(0) NULL,
	[PowerSelfUseFirstShift] [decimal](18, 4) default(0) NULL,                  -- 余热发电发自用电电量甲班
	[PowerSelfUseSecondShift] [decimal](18, 4) default(0) NULL,
	[PowerSelfUseThirdShift] [decimal](18, 4) default(0) NULL,
	[PowerSelfUseSum] [decimal](18, 4) default(0) NULL,
	[SteamFirstShift] [decimal](18, 4) default(0) NULL,                         -- 余热发电蒸汽量甲班
	[SteamSecondShift] [decimal](18, 4) default(0) NULL,
	[SteamThirdShift] [decimal](18, 4) default(0) NULL,
	[SteamSum] [decimal](18, 4) default(0) NULL,
	[CoalDustProductionFirstShift] [decimal](18, 4) default(0) NULL,            -- 煤粉产量
	[CoalDustProductionSecondShift] [decimal](18, 4) default(0) NULL,
	[CoalDustProductionThirdShift] [decimal](18, 4) default(0) NULL,
	[CoalDustProductionSum] [decimal](18, 4) default(0) NULL,
	[KilnHeadCoalDustConsumptionFirstShift] [decimal](18, 4) default(0) NULL,   -- 窑头用煤量甲班
	[KilnHeadCoalDustConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[KilnHeadCoalDustConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[KilnHeadCoalDustConsumptionSum] [decimal](18, 4) default(0) NULL,
	[KilnTailCoalDustConsumptionFirstShift] [decimal](18, 4) default(0) NULL,   -- 窑尾用煤量甲班
	[KilnTailCoalDustConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[KilnTailCoalDustConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[KilnTailCoalDustConsumptionSum] [decimal](18, 4) default(0) NULL,
	[AmounttoCoalDustConsumptionFirstShift] [decimal](18, 4) default(0) NULL,   -- 总用煤量甲班
	[AmounttoCoalDustConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[AmounttoCoalDustConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[AmounttoCoalDustConsumptionSum] [decimal](18, 4) NULL

) 
GO

CREATE TABLE [dbo].[report_ClinkerYearlyOutput](            					-- 熟料生产线产量报表 年报
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,
	[LimestoneConsumptionFirstShift] [bigint] default(0) NULL,           		-- 石灰石消耗量甲班
	[LimestoneConsumptionSecondShift] [bigint] default(0) NULL,
	[LimestoneConsumptionThirdShift] [bigint] default(0) NULL,
	[LimestoneConsumptionSum] [bigint] default(0) NULL,
	[RawBatchProductionFirstShift] [bigint] default(0) NULL,             		-- 生料产量甲班
	[RawBatchProductionSecondShift] [bigint] default(0) NULL,
	[RawBatchProductionThirdShift] [bigint] default(0) NULL,
	[RawBatchProductionSum] [bigint] default(0) NULL,
	[RawBatchConsumptionFirstShift] [bigint] default(0) NULL,           	 	-- 生料下料量甲班
	[RawBatchConsumptionSecondShift] [bigint] default(0) NULL,
	[RawBatchConsumptionThirdShift] [bigint] default(0) NULL,
	[RawBatchConsumptionSum] [bigint] default(0) NULL,
	[ClinkerProductionFirstShift] [bigint] default(0) NULL,              		-- 熟料产量甲班
	[ClinkerProductionSecondShift] [bigint] default(0) NULL,
	[ClinkerProductionThirdShift] [bigint] default(0) NULL,
	[ClinkerProductionSum] [bigint] default(0) NULL,
	[PowerGenerationFirstShift] [bigint] default(0) NULL,                		-- 余热发电发电量甲班
	[PowerGenerationSecondShift] [bigint] default(0) NULL,
	[PowerGenerationThirdShift] [bigint] default(0) NULL,
	[PowerGenerationSum] [bigint] default(0) NULL,
	[PowerSelfUseFirstShift] [bigint] default(0) NULL,                   		-- 余热发电发自用电电量甲班
	[PowerSelfUseSecondShift] [bigint] default(0) NULL,
	[PowerSelfUseThirdShift] [bigint] default(0) NULL,
	[PowerSelfUseSum] [bigint] default(0) NULL,
	[SteamFirstShift] [bigint] default(0) NULL,                          		-- 余热发电蒸汽量甲班
	[SteamSecondShift] [bigint] default(0) NULL,
	[SteamThirdShift] [bigint] default(0) NULL,
	[SteamSum] [bigint] default(0) NULL,
	[CoalDustProductionFirstShift] [bigint] default(0) NULL,             		-- 煤粉产量
	[CoalDustProductionSecondShift] [bigint] default(0) NULL,
	[CoalDustProductionThirdShift] [bigint] default(0) NULL,
	[CoalDustProductionSum] [bigint] default(0) NULL,
	[KilnHeadCoalDustConsumptionFirstShift] [bigint] default(0) NULL,    		-- 窑头用煤量甲班
	[KilnHeadCoalDustConsumptionSecondShift] [bigint] default(0) NULL,
	[KilnHeadCoalDustConsumptionThirdShift] [bigint] default(0) NULL,
	[KilnHeadCoalDustConsumptionSum] [bigint] default(0) NULL,
	[KilnTailCoalDustConsumptionFirstShift] [bigint] default(0) NULL,    		-- 窑尾用煤量甲班
	[KilnTailCoalDustConsumptionSecondShift] [bigint] default(0) NULL,
	[KilnTailCoalDustConsumptionThirdShift] [bigint] default(0) NULL,
	[KilnTailCoalDustConsumptionSum] [bigint] default(0) NULL,
	[AmounttoCoalDustConsumptionFirstShift] [bigint] default(0) NULL,    		-- 总用煤量甲班
	[AmounttoCoalDustConsumptionSecondShift] [bigint] default(0) NULL,
	[AmounttoCoalDustConsumptionThirdShift] [bigint] default(0) NULL,
	[AmounttoCoalDustConsumptionSum] [bigint] default(0) NULL

) 
GO

CREATE TABLE [dbo].[report_CementMillMonthlyOutput](         					-- 水泥生产线产量报表 月报
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,
	[CementTypes] [char](20) NULL,
	[ClinkerConsumptionFirstShift] [decimal](18, 4) default(0) NULL,            -- 熟料消耗量甲班
	[ClinkerConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[ClinkerConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[ClinkerConsumptionSum] [decimal](18, 4) default(0) NULL,
	[PlasterConsumptionFirstShift] [decimal](18, 4) default(0) NULL,            -- 石膏消耗量甲班
	[PlasterConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[PlasterConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[PlasterConsumptionSum] [decimal](18, 4) default(0) NULL,
	[CementProductionFirstShift] [decimal](18, 4) default(0) NULL,              -- 水泥产量甲班
	[CementProductionSecondShift] [decimal](18, 4) default(0) NULL,
	[CementProductionThirdShift] [decimal](18, 4) default(0) NULL,
	[CementProductionSum] [decimal](18, 4) default(0) NULL
) 
GO

CREATE TABLE [dbo].[report_CementMillYearlyOutput](         					-- 水泥生产线产量报表 年报
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL, 
	[CementTypes] [char](20) NULL,
	[ClinkerConsumptionFirstShift] [bigint] default(0) NULL,             		-- 熟料消耗量甲班
	[ClinkerConsumptionSecondShift] [bigint] default(0) NULL,
	[ClinkerConsumptionThirdShift] [bigint] default(0) NULL,
	[ClinkerConsumptionSum] [bigint] default(0) NULL,
	[PlasterConsumptionFirstShift] [bigint] default(0) NULL,             		-- 石膏消耗量甲班
	[PlasterConsumptionSecondShift] [bigint] default(0) NULL,
	[PlasterConsumptionThirdShift] [bigint] default(0) NULL,
	[PlasterConsumptionSum] [bigint] default(0) NULL,
	[CementProductionFirstShift] [bigint] default(0) NULL,               		-- 水泥产量甲班
	[CementProductionSecondShift] [bigint] default(0) NULL,
	[CementProductionThirdShift] [bigint] default(0) NULL,
	[CementProductionSum] [bigint] default(0) NULL
)
GO

CREATE TABLE [dbo].[report_ClinkerMonthlyElectricity_sum](						-- 熟料生产线合计用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,
	[RawMaterialPreparationFirstShift]  [decimal](18, 4) default(0) NULL,       -- 原料制备甲班
	[RawMaterialPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingFirstShift]  [decimal](18, 4) default(0) NULL,             -- 生料粉磨甲班
	[RawBatchGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationFirstShift]  [decimal](18, 4) default(0) NULL,  -- 生料制备合计甲班
	[AmounttoRawBatchPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationSum]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemFirstShift]  [decimal](18, 4) default(0) NULL,               -- 煤磨系统甲班
	[CoalMillSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemSum]  [decimal](18, 4) default(0) NULL,
	[FiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,                 -- 烧成系统甲班
	[FiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,         -- 烧成系统合计甲班
	[AmounttoFiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,                     -- 总合计甲班
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL
) 
GO

CREATE TABLE [dbo].[report_ClinkerMonthlyElectricity_peak](						-- 熟料生产线峰段用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,
	[RawMaterialPreparationFirstShift]  [decimal](18, 4) default(0) NULL,       -- 原料制备甲班
	[RawMaterialPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingFirstShift]  [decimal](18, 4) default(0) NULL,             -- 生料粉磨甲班
	[RawBatchGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchPreparationFirstShift]  [decimal](18, 4) default(0) NULL,          -- 生料制备合计甲班
	[AmounttoRawBatchPreparationSecondShift]  [decimal](18, 4) default(0) NULL, 
	[AmounttoRawBatchPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationSum]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemFirstShift]  [decimal](18, 4) default(0) NULL,               -- 煤磨系统甲班
	[CoalMillSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemSum]  [decimal](18, 4) default(0) NULL,
	[FiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,                 -- 烧成系统甲班
	[FiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,         -- 烧成系统合计甲班
	[AmounttoFiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,                     -- 总合计甲班
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL
) 
GO

CREATE TABLE [dbo].[report_ClinkerMonthlyElectricity_valley](					-- 熟料生产线谷段用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,
	[RawMaterialPreparationFirstShift]  [decimal](18, 4) default(0) NULL,       -- 原料制备甲班
	[RawMaterialPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingFirstShift]  [decimal](18, 4) default(0) NULL,             -- 生料粉磨甲班
	[RawBatchGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchPreparationFirstShift]  [decimal](18, 4) default(0) NULL,          -- 生料制备合计甲班
	[AmounttoRawBatchPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationSum]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemFirstShift]  [decimal](18, 4) default(0) NULL,               -- 煤磨系统甲班
	[CoalMillSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemSum]  [decimal](18, 4) default(0) NULL,
	[FiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,                 -- 烧成系统甲班
	[FiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,         -- 烧成系统合计甲班
	[AmounttoFiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,                     -- 总合计甲班
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL
) 
GO
 
CREATE TABLE [dbo].[report_ClinkerMonthlyElectricity_flat](						-- 熟料生产线平段用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,							-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,
	[RawMaterialPreparationFirstShift]  [decimal](18, 4) default(0) NULL,       -- 原料制备甲班
	[RawMaterialPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingFirstShift]  [decimal](18, 4) default(0) NULL,             -- 生料粉磨甲班
	[RawBatchGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchPreparationFirstShift]  [decimal](18, 4) default(0) NULL,          -- 生料制备合计甲班
	[AmounttoRawBatchPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationSum]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemFirstShift]  [decimal](18, 4) default(0) NULL,               -- 煤磨系统甲班
	[CoalMillSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemSum]  [decimal](18, 4) default(0) NULL,
	[FiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,                 -- 烧成系统甲班
	[FiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,         -- 烧成系统合计甲班
	[AmounttoFiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,                     -- 总合计甲班
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL
) 
GO
 
CREATE TABLE [dbo].[report_ClinkerYearlyElectricity_sum](						-- 熟料生产线合计用电量统计年报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL, 							-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,
	[RawMaterialPreparationFirstShift]  [bigint] default(0) NULL,         		-- 原料制备甲班
	[RawMaterialPreparationSecondShift]  [bigint] default(0) NULL,
	[RawMaterialPreparationThirdShift]  [bigint] default(0) NULL,
	[RawMaterialPreparationSum]  [bigint] default(0) NULL,
	[RawBatchGrindingFirstShift]  [bigint] default(0) NULL,               		-- 生料粉磨甲班
	[RawBatchGrindingSecondShift]  [bigint] default(0) NULL,
	[RawBatchGrindingThirdShift]  [bigint] default(0) NULL,
	[RawBatchGrindingSum]  [bigint] default(0) NULL,
	[RawBatchPreparationFirstShift]  [bigint] default(0) NULL,           	 	-- 生料制备合计甲班
	[AmounttoRawBatchPreparationSecondShift]  [bigint] default(0) NULL,
	[AmounttoRawBatchPreparationThirdShift]  [bigint] default(0) NULL,
	[AmounttoRawBatchPreparationSum]  [bigint] default(0) NULL,
	[CoalMillSystemFirstShift]  [bigint] default(0) NULL,                 		-- 煤磨系统甲班
	[CoalMillSystemSecondShift]  [bigint] default(0) NULL,
	[CoalMillSystemThirdShift]  [bigint] default(0) NULL,
	[CoalMillSystemSum]  [bigint] default(0) NULL,
	[FiringSystemFirstShift]  [bigint] default(0) NULL,                   		-- 烧成系统甲班
	[FiringSystemSecondShift]  [bigint] default(0) NULL,
	[FiringSystemThirdShift]  [bigint] default(0) NULL,
	[FiringSystemSum]  [bigint] default(0) NULL,
	[AmounttoFiringSystemFirstShift]  [bigint] default(0) NULL,           		-- 烧成系统合计甲班
	[AmounttoFiringSystemSecondShift]  [bigint] default(0) NULL,
	[AmounttoFiringSystemThirdShift]  [bigint] default(0) NULL,
	[AmounttoFiringSystemSum]  [bigint] default(0) NULL,
	[AmounttoFirstShift]  [bigint] default(0) NULL,                       		-- 总合计甲班
	[AmounttoSecondShift]  [bigint] default(0) NULL,
	[AmounttoThirdShift]  [bigint] default(0) NULL,
	[AmounttoSum]  [bigint] default(0) NULL
) 
GO

CREATE TABLE [dbo].[report_CementMillMonthlyElectricity_sum](					-- 水泥生产线合计用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSum]  [decimal](18, 4) default(0) NULL,                      -- 水泥粉磨电量
	[AdmixturePreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSum]  [decimal](18, 4) default(0) NULL,                -- 混合材制备电量
	[AmounttoCementPreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSum]  [decimal](18, 4) default(0) NULL,           -- 水泥制备合计电量
	[AmounttoCementPackagingFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingThirdShift]  [decimal](18, 4) default(0) NULL,
	[Amountto CementPackagingSum]  [decimal](18, 4) default(0) NULL,            -- 水泥包装与输送电量
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL                             -- 总合计电量
) 
GO

CREATE TABLE [dbo].[report_CementMillMonthlyElectricity_peak](					-- 水泥生产线峰段用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSum]  [decimal](18, 4) default(0) NULL,                      -- 水泥粉磨电量
	[AdmixturePreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSum]  [decimal](18, 4) default(0) NULL,                -- 混合材制备电量
	[AmounttoCementPreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSum]  [decimal](18, 4) default(0) NULL,           -- 水泥制备合计电量
	[AmounttoCementPackagingFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingThirdShift]  [decimal](18, 4) default(0) NULL,
	[Amountto CementPackagingSum]  [decimal](18, 4) default(0) NULL,            -- 水泥包装与输送电量
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL                             -- 总合计电量
)
GO

CREATE TABLE [dbo].[report_CementMillMonthlyElectricity_valley](				-- 水泥生产线谷段用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSum]  [decimal](18, 4) default(0) NULL,                      -- 水泥粉磨电量
	[AdmixturePreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSum]  [decimal](18, 4) default(0) NULL,                -- 混合材制备电量
	[AmounttoCementPreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSum]  [decimal](18, 4) default(0) NULL,           -- 水泥制备合计电量
	[AmounttoCementPackagingFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingThirdShift]  [decimal](18, 4) default(0) NULL,
	[Amountto CementPackagingSum]  [decimal](18, 4) default(0) NULL,            -- 水泥包装与输送电量
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL                             -- 总合计电量
) 
GO

CREATE TABLE [dbo].[report_CementMillMonthlyElectricity_flat](					-- 水泥生产线平段用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSum]  [decimal](18, 4) default(0) NULL,                      -- 水泥粉磨电量
	[AdmixturePreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSum]  [decimal](18, 4) default(0) NULL,                -- 混合材制备电量
	[AmounttoCementPreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSum]  [decimal](18, 4) default(0) NULL,           -- 水泥制备合计电量
	[AmounttoCementPackagingFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingThirdShift]  [decimal](18, 4) default(0) NULL,
	[Amountto CementPackagingSum]  [decimal](18, 4) default(0) NULL,            -- 水泥包装与输送电量
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL                             -- 总合计电量
)
GO

CREATE TABLE [dbo].[report_CementMillYearlyElectricity_sum](					-- 水泥生产线合计用电量统计年报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSum]  [decimal](18, 4) default(0) NULL,                      -- 水泥粉磨电量
	[AdmixturePreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSum]  [decimal](18, 4) default(0) NULL,                -- 混合材制备电量
	[AmounttoCementPreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSum]  [decimal](18, 4) default(0) NULL,           -- 水泥制备合计电量
	[AmounttoCementPackagingFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingThirdShift]  [decimal](18, 4) default(0) NULL,
	[Amountto CementPackagingSum]  [decimal](18, 4) default(0) NULL,            -- 水泥包装与输送电量
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL                             -- 总合计电量
)
GO

CREATE TABLE [dbo].[report_ClinkerYeldPerUnitDistributionEnergyConsumptionYearly](
																				-- 熟料单位产品能耗年报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,        					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                          					-- 报表引领表ID
	[vMonth] [bigint] NULL,                                   					-- 月份
	[ElectricityConsumption] [bigint] NULL,                   					-- 熟料用电量
	[CoalDust] [bigint] NULL,                                 					-- 入窑煤粉量
	[Qnet] [bigint] NULL,                                     					-- 煤粉空干基低位发热量
	[Diesel] [bigint] NULL,                                   					-- 点火用油
	[CogenerationSupply] [bigint] NULL,                       					-- 余热发电上网电量
	[CogenerationProduction] [bigint] NULL,                   					-- 余热发电发电量
	[CogenerationSelfUse] [bigint] NULL,                      					-- 余热发电自用电电量
	[ClinkerOutput] [bigint] NULL,                            					-- 熟料产量
	[ClinkerIntensity] [decimal](18, 4) NULL,                                   -- 熟料强度
	[ClinkerIntensityCorrectionFactor][decimal](18, 4) NULL,                    -- 熟料强度修正系数
	[Clinker_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL,        -- 熟料综合电耗
	[Clinker_ComparableComprehensiveElectricityConsumption][decimal](18, 4) NULL,
																				-- 可比熟料综合电耗
	[Clinker_ComprehensiveCoalDustConsumption][decimal](18, 4) NULL,            -- 熟料综合煤耗
    [Clinker_ComparableComprehensiveCoalDustConsumption][decimal](18, 4) NULL,  -- 可比熟料综合煤耗
	[Clinker_DieselConsumption] [decimal](18, 4) NULL,                          -- 熟料油耗
	[CogenerationSupplyCorrection][decimal](18, 4) NULL,                        -- 余热发电上网电量折合标准值
	[Clinker_ComprehensiveEnergyConsumption] [decimal](18, 4) NULL,             -- 熟料综合能耗
	[Clinker_ComparableComprehensiveEnergyConsumption] [decimal](18, 4) NULL,   -- 可比熟料综合能耗
) 
GO

CREATE TABLE [dbo].[report_CementYeldPerUnitDistributionPowerConsumptionYearly](-- 水泥单位产品能耗年报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vMonth] [int] NULL,                                    					-- 月份
	[CementTypes] [char](30) NULL,                          					-- 水泥品种
	[Output] [bigint] NULL,                                 					-- 水泥产量
	[ElectricityConsumption] [bigint] NULL,                 					-- 用电量
	[DistributionPowerConsumption] [decimal](18, 4) NULL,   					-- 分步电耗
	[ConversionDistributionPowerConsumption] [decimal](18, 4) NULL,			 	-- 折算P.O42.5分布电耗
) 
GO

CREATE TABLE [dbo].[report_ClinkerProductionLineEnergyConsumptionSchedule](		-- 熟料生产线能耗计划
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
    [KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[IndicatorName] [char](30) NULL,                        					-- 指标名称
	[January] [bigint] NULL,                                   					-- 一月指标
	[February] [bigint] NULL,                                   				-- 二月指标
	[March] [bigint] NULL,
	[April] [bigint] NULL,
	[May] [bigint] NULL,
	[June] [bigint] NULL,
	[July] [bigint] NULL,
	[August] [bigint] NULL,
	[September] [bigint] NULL,
	[October] [bigint] NULL,
	[November] [bigint] NULL,
	[December] [bigint] NULL,
	[Annual] [bigint] NULL,                                 					-- 年度指标
    [Remarks] [nvarchar](max) NULL												-- 备注
) 
GO

CREATE TABLE [dbo].[report_CementMillProductionLineProductionLineEnergyConsumptionSchedule](
																				-- 水泥生产线能耗计划
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
    [KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[IndicatorName] [char](30) NULL,                        					-- 指标名称
	[January] [bigint] NULL,                                  					-- 一月指标
	[February] [bigint] NULL,                                 					-- 二月指标
	[March] [bigint] NULL,
	[April] [bigint] NULL,
	[May] [bigint] NULL,
	[June] [bigint] NULL,
	[July] [bigint] NULL,
	[August] [bigint] NULL,
	[September] [bigint] NULL,
	[October] [bigint] NULL,
	[November] [bigint] NULL,
	[December] [bigint] NULL,
	[Annual] [bigint] NULL,                                    					-- 年度指标
	[Remarks] [nvarchar](max) NULL												-- 备注
) 
GO




CREATE TABLE [dbo].[report_CementMonthlyElectricityConsumption](				-- 水泥(分品种)粉磨电耗月统计分析报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,                                     					-- 日期
	[CementTypes] [char](30) NULL,                          					-- 水泥品种
	[ConvertCoefficient] [float] NULL,                      					-- 折合系数
	--甲班
    [First_Output] [bigint] NULL,                             					-- 产量
	[First_Electricity] [bigint] NULL,                        					-- 电量
    [First_ElectricityConsumption]  [decimal](18, 4) NULL,            			-- 电耗
	[First_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     			-- 折算电耗
	--乙班
    [Second_Output] [bigint] NULL,                             					-- 产量
	[Second_Electricity] [bigint] NULL,                        					-- 电量
    [Second_ElectricityConsumption]  [decimal](18, 4) NULL,             		-- 电耗
	[Second_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,    			-- 折算电耗
	--丙班
    [Third_Output] [bigint] NULL,                             					-- 产量
	[Third_Electricity] [bigint] NULL,                        					-- 电量
    [Third_ElectricityConsumption] [decimal](18, 4) NULL,             			-- 电耗
	[Third_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,    			-- 折算电耗
	--合计
    [Amountto_Output] [bigint] NULL,                             				-- 产量
	[Amountto_Electricity] [bigint] NULL,                        				-- 电量
    [Amountto_ElectricityConsumption]  [decimal](18, 4) NULL,          			-- 电耗
	[Amountto_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,    		-- 折算电耗
) 
GO

CREATE TABLE [dbo].[report_CementYearlyElectricityConsumption](--水泥(分品种)粉磨电耗年统计分析报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --主键ID
	[KeyID] [uniqueidentifier] NULL,                        --报表引领表ID
	[vMonth] [int] NULL,                                    --月份
	[CementTypes] [char](30) NULL,                          --水泥品种
	[ConvertCoefficient]  [decimal](6, 4) NULL,                      --折合系数
    [Output] [bigint] NULL,                             --产量
	[Electricity] [bigint] NULL,                        --电量
    [ElectricityConsumption]  [decimal](18, 4) NULL,             --电耗
	[Convert_ElectricityConsumption]  [decimal](18, 4) NULL,    --折算电耗
) 
GO

CREATE TABLE [dbo].[report_TeamCementClassificationMonthlyElectricityConsumption](--班组水泥(分品种)粉磨电耗月统计分析报表 -----------------------report_TeamCementMonthlyElectricityConsumption改为report_TeamCementClassificationMonthlyElectricityConsumption-------------------------------------------------------------------------------
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --主键ID
	[KeyID] [uniqueidentifier] NULL,                        -- 报表引领表ID
	[vDate] [int] NULL,                                     --日期
	[CementTypes] [char](30) NULL,                          --水泥品种
	[ConvertCoefficient] [decimal](6, 4) NULL,                   --折合系数
	--A组
    [TeamA_Output] [decimal](18, 4) NULL,                             --产量
	[TeamA_Electricity] [decimal](18, 4) NULL,                        --电量
    [TeamA_ElectricityConsumption]  [decimal](18, 4) NULL,           --电耗
	[TeamA_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     --折算电耗
	--B组
    [TeamB_Output] [decimal](18, 4) NULL,                             --产量
	[TeamB_Electricity] [decimal](18, 4) NULL,                        --电量
    [TeamB_ElectricityConsumption]  [decimal](18, 4) NULL,             --电耗
	[TeamB_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     --折算电耗
	--C组
    [TeamC_Output] [decimal](18, 4) NULL,                             --产量
	[TeamC_Electricity] [decimal](18, 4) NULL,                        --电量
    [TeamC_ElectricityConsumption] [decimal](18, 4) NULL,             --电耗
	[TeamC_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     --折算电耗
	--D组
    [TeamD_Output] [decimal](18, 4) NULL,                             --产量
	[TeamD_Electricity] [decimal](18, 4) NULL,                        --电量
    [TeamD_ElectricityConsumption]  [decimal](18, 4) NULL,             --电耗
	[TeamD_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     --折算电耗
	--合计
    [Amountto_Output] [decimal](18, 4) NULL,                             --产量
	[Amountto_Electricity] [decimal](18, 4) NULL,                        --电量
    [Amountto_ElectricityConsumption]  [decimal](18, 4) NULL,             --电耗
	[Amountto_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     --折算电耗
	
) 
GO

CREATE TABLE [dbo].[report_TeamCementYearlyElectricityConsumption](--班组水泥(分品种)粉磨电耗年统计分析报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --主键ID
	[KeyID] [uniqueidentifier] NULL,                        -- 报表引领表ID
	[vMonth] [int] NULL,                                    --月份
	[CementTypes] [char](30) NULL,                          --水泥品种
	[ConvertCoefficient]  [decimal](6, 4) NULL,                      --折合系数
	--A组
    [TeamA_Output] [bigint] NULL,                             --产量
	[TeamA_Electricity] [bigint] NULL,                        --电量
    [TeamA_ElectricityConsumption]  [decimal](18, 4) NULL,             --电耗
	[TeamA_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,    --折算电耗
	--B组
    [TeamB_Output] [bigint] NULL,                             --产量
	[TeamB_Electricity] [bigint] NULL,                        --电量
    [TeamB_ElectricityConsumption]  [decimal](18, 4) NULL,           --电耗
	[TeamB_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     --折算电耗
	--C组
    [TeamC_Output] [bigint] NULL,                             --产量
	[TeamC_Electricity] [bigint] NULL,                        --电量
    [TeamC_ElectricityConsumption]  [decimal](18, 4) NULL,             --电耗
	[TeamC_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,    --折算电耗
	--D组
    [TeamD_Output] [bigint] NULL,                             --产量
	[TeamD_Electricity] [bigint] NULL,                        --电量
    [TeamD_ElectricityConsumption]  [decimal](18, 4) NULL,             --电耗
	[TeamD_Convert_ElectricityConsumption] [decimal](18, 4) NULL,     --折算电耗
	--合计
    [Amountto_Output] [bigint] NULL,                             --产量
	[Amountto_Electricity] [bigint] NULL,                        --电量
    [Amountto_ElectricityConsumption]  [decimal](18, 4) NULL,           --电耗
	[Amountto_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     --折算电耗
	
)
GO


CREATE TABLE [dbo].[report_CementMilMonthlyPeakerValleyFlatElectricityConsumption](--水泥磨(峰谷平)用电月统计分析报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --主键ID
	[KeyID] [uniqueidentifier] NULL,                        -- 报表引领表ID
	[vDate] [int] NULL,                                     --日期
	--甲班
    [First_Output] [decimal](18, 4) NULL,                             --产量
    [First_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[First_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[First_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[First_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[First_ElectricityConsumption] [decimal](18, 4) NULL,           --电耗
	[First_Cost] [decimal](18, 4) NULL,                               --成本
	--乙班
    [Second_Output] [decimal](18, 4) NULL,                             --产量
    [Second_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[Second_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[Second_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[Second_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[Second_ElectricityConsumption] [decimal](18, 4) NULL,             --电耗
	[Second_Cost] [decimal](18, 4) NULL,                              --成本
	--丙班
    [Third_Output] [decimal](18, 4) NULL,                             --产量
    [Third_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[Third_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[Third_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[Third_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[Third_ElectricityConsumption] [decimal](18, 4) NULL,             --电耗
	[Third_Cost] [decimal](18, 4) NULL,                               --成本
	--合计
    [Amountto_Output] [decimal](18, 4) NULL,                             --产量
    [Amountto_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[Amountto_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[Amountto_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[Amountto_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[Amountto_ElectricityConsumption] [decimal](18, 4) NULL,            --电耗
	[Amountto_Cost] [decimal](18, 4) NULL,                               --成本
)
GO

CREATE TABLE [dbo].[report_RawBatchMilMonthlyPeakerValleyFlatElectricityConsumption](--生料磨(峰谷平)用电月统计分析报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --主键ID
	[KeyID] [uniqueidentifier] NULL,                        -- 报表引领表ID
	[vDate] [int] NULL,                                     --日期
	--甲班
    [First_Output] [decimal](18, 4) NULL,                             --产量
    [First_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[First_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[First_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[First_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[First_ElectricityConsumption] [decimal](18, 4) NULL,             --电耗
	[First_Cost] [decimal](18, 4) NULL,                              --成本
	--乙班
    [Second_Output] [decimal](18, 4) NULL,                             --产量
    [Second_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[Second_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[Second_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[Second_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[Second_ElectricityConsumption] [decimal](18, 4) NULL,             --电耗
	[Second_Cost] [decimal](18, 4) NULL,                               --成本
	--丙班
    [Third_Output] [decimal](18, 4) NULL,                             --产量
    [Third_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[Third_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[Third_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[Third_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[Third_ElectricityConsumption] [decimal](18, 4) NULL,             --电耗
	[Third_Cost] [decimal](18, 4) NULL,                              --成本
	--合计
    [Amountto_Output] [decimal](18, 4) NULL,                             --产量
    [Amountto_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[Amountto_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[Amountto_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[Amountto_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[Amountto_ElectricityConsumption][decimal](18, 4) NULL,            --电耗
	[Amountto_Cost] [decimal](18, 4) NULL,                              --成本
)
GO

CREATE TABLE [dbo].[report_CoalMilMonthlyPeakerValleyFlatElectricityConsumption](--煤磨(峰谷平)用电月统计分析报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --主键ID
	[KeyID] [uniqueidentifier] NULL,                        -- 报表引领表ID
	[vDate] [int] NULL,                                     --日期
	--甲班
    [First_Output] [decimal](18, 4) NULL,                             --产量
    [First_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[First_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[First_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[First_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[First_ElectricityConsumption] [decimal](18, 4) NULL,            --电耗
	[First_Cost] [decimal](18, 4) NULL,                               --成本
	--乙班
    [Second_Output] [decimal](18, 4) NULL,                             --产量
    [Second_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[Second_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[Second_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[Second_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[Second_ElectricityConsumption] [decimal](18, 4) NULL,             --电耗
	[Second_Cost] [decimal](18, 4) NULL,                              --成本
	--丙班
    [Third_Output] [decimal](18, 4) NULL,                             --产量
    [Third_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[Third_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[Third_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[Third_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[Third_ElectricityConsumption] [decimal](18, 4) NULL,             --电耗
	[Third_Cost] [decimal](18, 4) NULL,                             --成本
	--合计
    [Amountto_Output] [decimal](18, 4) NULL,                             --产量
    [Amountto_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[Amountto_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[Amountto_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[Amountto_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[Amountto_ElectricityConsumption] [decimal](18, 4) NULL,            --电耗
	[Amountto_Cost] [decimal](18, 4) NULL,                              --成本
)
GO

CREATE TABLE [dbo].[report_ClinkerMonthlyPeakerValleyFlatElectricityConsumption](--孰料生产(峰谷平)用电月统计分析报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --主键ID
	[KeyID] [uniqueidentifier] NULL,                        -- 报表引领表ID
	[vDate] [int] NULL,                                     --日期
	--甲班
    [First_RawBatch_Output] [decimal](18, 4) NULL,                    --生料产量
	[First_Clinker_Output] [decimal](18, 4) NULL,                     --熟料产量
	[First_CoalDust_Output] [decimal](18, 4) NULL,                    --煤粉产量
    [First_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[First_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[First_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[First_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[First_ElectricityConsumption] [decimal](18, 4) NULL,             --电耗
	[First_Cost] [decimal](18, 4) NULL,                               --成本
	--乙班
    [Second_RawBatch_Output] [decimal](18, 4) NULL,                    --生料产量
	[Second_Clinker_Output] [decimal](18, 4) NULL,                     --熟料产量
	[Second_CoalDust_Output] [decimal](18, 4) NULL,                    --煤粉产量
    [Second_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[Second_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[Second_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[Second_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[Second_ElectricityConsumption] [decimal](18, 4) NULL,             --电耗
	[Second_Cost] [decimal](18, 4) NULL,                               --成本
	--丙班
    [Third_RawBatch_Output] [decimal](18, 4) NULL,                    --生料产量
	[Third_Clinker_Output] [decimal](18, 4) NULL,                     --熟料产量
	[Third_CoalDust_Output] [decimal](18, 4) NULL,                    --煤粉产量
    [Third_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[Third_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[Third_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[Third_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[Third_ElectricityConsumption] [decimal](18, 4) NULL,             --电耗
	[Third_Cost] [decimal](18, 4) NULL,                               --成本
	--合计
    [Amountto_RawBatch_Output] [decimal](18, 4) NULL,                    --生料产量
	[Amountto_Clinker_Output] [decimal](18, 4) NULL,                     --熟料产量
	[Amountto_CoalDust_Output] [decimal](18, 4) NULL,                    --煤粉产量
    [Amountto_Peak_Electricity] [decimal](18, 4) NULL,                   --峰期电量
	[Amountto_Valley_Electricity] [decimal](18, 4) NULL,                 --谷期电量
	[Amountto_Flat_Electricity] [decimal](18, 4) NULL,                   --平期电量
	[Amountto_Sum_Electricity] [decimal](18, 4) NULL,                    --合计电量
	[Amountto_ElectricityConsumption] [decimal](18, 4) NULL,             --电耗
	[Amountto_Cost] [decimal](18, 4) NULL,                               --成本
)
GO

CREATE TABLE [dbo].[report_ClinkerMonthlyCoalDustConsumption](--孰料生产用煤月统计分析
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --主键ID
	[KeyID] [uniqueidentifier] NULL,                        -- 报表引领表ID
	[vDate] [int] NULL,                                     --日期
	--甲班
	[First_Clinker_Output] [decimal](18, 4) NULL,                     --熟料产量
    [First_KilnHead_CoalDust] [decimal](18, 4) NULL,                  --窑头用煤量
	[First_KilnTail_CoalDust] [decimal](18, 4) NULL,                  --窑尾用煤量
	[First_sum_CoalDust] [decimal](18, 4) NULL,                       --合计用煤量
	[First_CoalDustConsumption] [decimal](18, 4) NULL,                --煤耗
	--乙班
	[Second_Clinker_Output] [decimal](18, 4) NULL,                     --熟料产量
    [Second_KilnHead_CoalDust] [decimal](18, 4) NULL,                  --窑头用煤量
	[Second_KilnTail_CoalDust] [decimal](18, 4) NULL,                  --窑尾用煤量
	[Second_sum_CoalDust] [decimal](18, 4) NULL,                       --合计用煤量
	[Second_CoalDustConsumption] [decimal](18, 4) NULL,                --煤耗
	--丙班
	[Third_Clinker_Output] [decimal](18, 4) NULL,                     --熟料产量
    [Third_KilnHead_CoalDust] [decimal](18, 4) NULL,                  --窑头用煤量
	[Third_KilnTail_CoalDust] [decimal](18, 4) NULL,                  --窑尾用煤量
	[Third_sum_CoalDust] [decimal](18, 4) NULL,                       --合计用煤量
	[Third_CoalDustConsumption] [decimal](18, 4) NULL,                --煤耗
	--合计
	[Amountto_Clinker_Output] [decimal](18, 4) NULL,                     --熟料产量
    [Amountto_KilnHead_CoalDust] [decimal](18, 4) NULL,                  --窑头用煤量
	[Amountto_KilnTail_CoalDust] [decimal](18, 4) NULL,                  --窑尾用煤量
	[Amountto_sum_CoalDust] [decimal](18, 4) NULL,                       --合计用煤量
	[Amountto_CoalDustConsumption] [decimal](18, 4) NULL,                --煤耗
)
GO

CREATE TABLE [dbo].[report_MonthlyEnergyConsumption](        --能源消耗月统计分析报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --主键ID
	[KeyID] [uniqueidentifier] NULL,                        -- 报表引领表ID
	[Name] [varchar](max)  NULL,                            --工序名称
	[Electricity_RawBatch] [decimal](18, 4) NULL,                     -- 电量-生料制备
	[Electricity_Clinker] [decimal](18, 4) NULL,                      -- 电量-熟料烧成
	[Electricity_Cement] [decimal](18, 4) NULL,                       -- 电量-水泥制备
	[Consumption_CoalDust] [decimal](18, 4) NULL,                     -- 消耗量-煤粉
	[Output_RawBatch] [decimal](18, 4) NULL,                          -- 产量-生料制备
	[Output_Clinker] [decimal](18, 4) NULL,                           -- 产量-熟料烧成
	[Output_Cement] [decimal](18, 4) NULL,                            -- 产量-水泥制备
	[Output_Cogeneration] [decimal](18, 4) NULL,                      -- 产量-余热发电发电量
	[ElectricityConsumption_RawBatch] [decimal](18, 4) NULL,          -- 电耗-生料制备
	[ElectricityConsumption_Clinker] [decimal](18, 4) NULL,           -- 电耗-熟料烧成
	[ElectricityConsumption_Cement] [decimal](18, 4) NULL,            -- 电耗-水泥制备
	[ComprehensiveElectricityConsumption] [decimal](18, 4) NULL,      -- 吨熟料综合电耗
	[ComprehensiveCoalConsumption] [decimal](18, 4) NULL,             -- 吨熟料综合实物煤耗
	[ComprehensiveElectricityOutput] [decimal](18, 4) NULL,           -- 吨熟料发电量
) 

GO

CREATE TABLE [dbo].[report_YearlyEnergyConsumption](         --能源消耗年统计分析报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --主键ID
	[KeyID] [uniqueidentifier] NULL,                        -- 报表引领表ID
	[Name] [varchar](max)  NULL,                            --工序名称
	[Electricity_RawBatch] [bigint] NULL,                     -- 电量-生料制备
	[Electricity_Clinker] [bigint] NULL,                      -- 电量-熟料烧成
	[Electricity_Cement] [bigint] NULL,                       -- 电量-水泥制备
	[Consumption_CoalDust] [bigint] NULL,                     -- 消耗量-煤粉
	[Output_RawBatch] [bigint] NULL,                          -- 产量-生料制备
	[Output_Clinker] [bigint] NULL,                           -- 产量-熟料烧成
	[Output_Cement] [bigint] NULL,                            -- 产量-水泥制备
	[Output_Cogeneration] [bigint] NULL,                      -- 产量-余热发电发电量
	[ElectricityConsumption_RawBatch] [decimal](18, 4) NULL,         -- 电耗-生料制备
	[ElectricityConsumption_Clinker] [decimal](18, 4) NULL,           -- 电耗-熟料烧成
	[ElectricityConsumption_Cement] [decimal](18, 4) NULL,           -- 电耗-水泥制备
	[ComprehensiveElectricityConsumption] [decimal](18, 4) NULL,      -- 吨熟料综合电耗
	[ComprehensiveCoalConsumption] [decimal](18, 4) NULL,             -- 吨熟料综合实物煤耗
	[ComprehensiveElectricityOutput] [decimal](18, 4) NULL,          -- 吨熟料发电量
)
GO

CREATE TABLE [dbo].[report_CementMilEnergyConsumption_TargetCompletion](		-- 水泥磨能耗指标完成情况
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,							-- 主键ID
	[KeyID] [uniqueidentifier] NULL,											-- 报表引领表ID
	[Name] [varchar](max)  NULL,												-- 指标项目名称
	[Monthly_Target] [bigint] NULL,												-- 本月指标
	[Today_Completion] [decimal](18, 4) NULL,									-- 本日完成
	[Monthly_Accumulative] [bigint] NULL,										-- 本月累计
    [Monthly_Gap] [bigint] NULL,												-- 本月差距
	[Yearly_Target] [bigint] NULL,												-- 本年指标
	[Yearly_Accumulative] [bigint] NULL,										-- 本年累计
    [Yearly_Gap] [bigint] NULL,													-- 本年差距
)

CREATE TABLE [dbo].[report_ClinkerEnergyConsumption_TargetCompletion](			-- 能耗指标完成情况
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,							-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[Name] [varchar](max)  NULL,												-- 指标项目名称
	[Monthly_Target] [bigint] NULL,												-- 本月指标
	[Today_Completion] [decimal](18, 4) NULL,									-- 本日完成
	[Monthly_Accumulative] [bigint] NULL,										-- 本月累计
    [Monthly_Gap] [bigint] NULL,												-- 本月差距
	[Yearly_Target] [bigint] NULL,												-- 本年指标
	[Yearly_Accumulative] [bigint] NULL,										-- 本年累计
    [Yearly_Gap] [bigint] NULL,													-- 本年差距
)
GO

CREATE TABLE [dbo].[report_ClinkerMonthlyProcessEnergyConsumption](--熟料生产工序能耗月统计报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --主键ID
	[KeyID] [uniqueidentifier] NULL,                        -- 报表引领表ID
	[vDate] [int] NULL,                                     -- 日期
     --甲班
	[First_Electricity_RawBatch]  [decimal](18, 4) NULL,               -- 甲班-电量-生料制备
	[First_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,			---------------------------------zcs添加, 电量-生料磨
	[First_Electricity_Clinker]  [decimal](18, 4) NULL,                -- 甲班-电量-熟料烧成
	[First_Electricity_CoalDust]  [decimal](18, 4) NULL,               -- 甲班-电量-煤粉制备
	[First_Consumption_CoalDust]  [decimal](18, 4) NULL,               -- 甲班-消耗量-煤粉
	[First_Output_RawBatch]  [decimal](18, 4) NULL,                    -- 甲班-产量-生料制备
	[First_Output_Clinker]  [decimal](18, 4) NULL,                     -- 甲班-产量-熟料烧成
	[First_Output_CoalDust]  [decimal](18, 4) NULL,                    -- 甲班-产量-煤粉制备
	[First_Output_Cogeneration]  [decimal](18, 4) NULL,                -- 甲班-产量-余热发电发电量
	[First_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,    -- 甲班-电耗-生料制备
	[First_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, --------------------------zcs添加，电耗-生料磨 
	[First_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,     -- 甲班-电耗-熟料烧成
	[First_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,    -- 甲班-电耗-煤粉制备
	[First_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,-- 甲班-综合电耗
	[First_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,       -- 甲班-实物煤耗
     --乙班
	[Second_Electricity_RawBatch]  [decimal](18, 4) NULL,              -- 乙班-电量-生料制备
	[Second_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,			---------------------------------zcs添加,电量-生料磨
	[Second_Electricity_Clinker]  [decimal](18, 4) NULL,               -- 乙班-电量-熟料烧成
	[Second_Electricity_CoalDust]  [decimal](18, 4) NULL,              -- 乙班-电量-煤粉制备
	[Second_Consumption_CoalDust]  [decimal](18, 4) NULL,              -- 乙班-消耗量-煤粉
	[Second_Output_RawBatch]  [decimal](18, 4) NULL,                   -- 乙班-产量-生料制备
	[Second_Output_Clinker]  [decimal](18, 4) NULL,                    -- 乙班-产量-熟料烧成
	[Second_Output_CoalDust]  [decimal](18, 4) NULL,                   -- 乙班-产量-煤粉制备
	[Second_Output_Cogeneration]  [decimal](18, 4) NULL,               -- 乙班-产量-余热发电发电量
	[Second_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,   -- 乙班-电耗-生料制备
	[Second_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, --------------------------zcs添加，电耗-生料磨 
	[Second_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,    -- 乙班-电耗-熟料烧成
	[Second_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,   -- 乙班-电耗-煤粉制备
	[Second_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,-- 乙班-综合电耗
	[Second_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,      -- 乙班-实物煤耗
     --丙班
	[Third_Electricity_RawBatch]  [decimal](18, 4) NULL,               -- 丙班-电量-生料制备
	[Third_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,			---------------------------------zcs添加,电量-生料磨
	[Third_Electricity_Clinker]  [decimal](18, 4) NULL,                -- 丙班-电量-熟料烧成
	[Third_Electricity_CoalDust]  [decimal](18, 4) NULL,               -- 丙班-电量-煤粉制备
	[Third_Consumption_CoalDust]  [decimal](18, 4) NULL,               -- 丙班-消耗量-煤粉
	[Third_Output_RawBatch]  [decimal](18, 4) NULL,                    -- 丙班-产量-生料制备
	[Third_Output_Clinker]  [decimal](18, 4) NULL,                     -- 丙班-产量-熟料烧成
	[Third_Output_CoalDust]  [decimal](18, 4) NULL,                    -- 丙班-产量-煤粉制备
	[Third_Output_Cogeneration]  [decimal](18, 4) NULL,                -- 丙班-产量-余热发电发电量
	[Third_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,    -- 丙班-电耗-生料制备
	[Third_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, --------------------------zcs添加，电耗-生料磨 
	[Third_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,     -- 丙班-电耗-熟料烧成
	[Third_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,    -- 丙班-电耗-煤粉制备
	[Third_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,-- 丙班-综合电耗
	[Third_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,       -- 丙班-实物煤耗
     --日合计
	[Amountto_Electricity_RawBatch]  [decimal](18, 4) NULL,               -- 日合计-电量-生料制备
	[Amountto_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,			---------------------------------zcs添加
	[Amountto_Electricity_Clinker]  [decimal](18, 4) NULL,                -- 日合计-电量-熟料烧成
	[Amountto_Electricity_CoalDust]  [decimal](18, 4) NULL,               -- 日合计-电量-煤粉制备
	[Amountto_Consumption_CoalDust]  [decimal](18, 4) NULL,               -- 日合计-消耗量-煤粉
	[Amountto_Output_RawBatch]  [decimal](18, 4) NULL,                    -- 日合计-产量-生料制备
	[Amountto_Output_Clinker]  [decimal](18, 4) NULL,                     -- 日合计-产量-熟料烧成
	[Amountto_Output_CoalDust]  [decimal](18, 4) NULL,                    -- 日合计-产量-煤粉制备
	[Amountto_Output_Cogeneration]  [decimal](18, 4) NULL,                -- 日合计-产量-余热发电发电量
	[Amountto_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,    -- 日合计-电耗-生料制备
	[Amountto_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, --------------------------zcs添加，电耗-生料磨 
	[Amountto_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,     -- 日合计-电耗-熟料烧成
	[Amountto_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,    -- 日合计-电耗-煤粉制备
	[Amountto_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,-- 日合计-综合电耗
	[Amountto_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,       -- 日合计-实物煤耗
) 
GO

CREATE TABLE [dbo].[report_ClinkerYearlyProcessEnergyConsumption](				-- 熟料生产工序能耗年统计报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,             				-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                               				-- 报表引领表ID
	[vDate] [nchar](2) NULL,                                       				-- 日期
	[Electricity_RawBatch_Monthly] [real] NULL,                    				-- 电量-生料制备_本月
	[Electricity_RawBatch_Accumulative] [real] NULL,               				-- 电量-生料制备_累计
	[Electricity_RawBatchMil_Monthly][real] NULL,                  				-- 电量-生料磨_本月 
	[Electricity_RawBatchMil_Accumulative][real] NULL,             				-- 电量-生料磨_累计
	[Electricity_Clinker_Monthly] [real] NULL,                     				-- 电量-熟料烧成_本月
	[Electricity_Clinker_Accumulative] [real] NULL,                				-- 电量-熟料烧成_累计
	[Electricity_CoalDust_Monthly] [real] NULL,                    				-- 电量-煤粉制备_本月
	[Electricity_CoalDust_Accumulative] [real] NULL,               				-- 电量-煤粉制备_累计
	[Consumption_CoalDust_Monthly] [real] NULL,                    				-- 消耗量-煤粉_本月
	[Consumption_CoalDust_Accumulative] [real] NULL,               				-- 消耗量-煤粉_累计
	[Output_RawBatch_Monthly] [real] NULL,                         				-- 产量-生料制备_本月
	[Output_RawBatch_Accumulative] [real] NULL,                    				-- 产量-生料制备_累计
	[Output_Clinker_Monthly] [real] NULL,                          				-- 产量-熟料烧成_本月
	[Output_Clinker_Accumulative] [real] NULL,                     				-- 产量-熟料烧成_累计
	[Output_CoalDust_Monthly] [real] NULL,                         				-- 产量-煤粉制备_本月
	[Output_CoalDust_Accumulative] [real] NULL,                    				-- 产量-煤粉制备_累计
	[Output_Cogeneration_Monthly] [real] NULL,                     				-- 产量-余热发电发电量_本月
	[Output_Cogeneration_Accumulative] [real] NULL,                				-- 产量-余热发电发电量_累计
	[ElectricityConsumption_RawBatch_Monthly] [real] NULL,         				-- 电耗-生料制备_本月
	[ElectricityConsumption_RawBatch_Accumulative] [real] NULL,    				-- 电耗-生料制备_累计
	[ElectricityConsumption_RawBatchMill_Monthly][real] NULL,      				-- 电耗-生料磨_本月
	[ElectricityConsumption_RawBatchMill_Accumulative][real] NULL, 				-- 电耗-生料磨_累计
	[ElectricityConsumption_Clinker_Monthly] [real] NULL,         	 			-- 电耗-熟料烧成_本月
	[ElectricityConsumption_Clinker_Accumulative] [real] NULL,     				-- 电耗-熟料烧成_累计
	[ElectricityConsumption_CoalDust_Monthly] [real] NULL,         				-- 电耗-煤粉制备_本月
	[ElectricityConsumption_CoalDust_Accumulative] [real] NULL,    				-- 电耗-煤粉制备_累计
	[ComprehensiveElectricityConsumption_Monthly] [real] NULL,     				-- 综合电耗_本月
	[ComprehensiveElectricityConsumption_Accumulative] [real] NULL,				-- 综合电耗_累计
	[ComprehensiveCoalConsumption_Monthly] [real] NULL,            				-- 实物煤耗_本月
	[ComprehensiveCoalConsumption_Accumulative] [real] NULL,       				-- 实物煤耗_累计

) 
GO


CREATE TABLE [dbo].[report_CementMilMonthlyEnergyConsumption](					-- 水泥磨能耗月统计分析
	[ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,							-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,                                     					-- 日期
	--甲班
	[First_Electricity_Cement] [decimal](18, 4) NULL,							-- 电量-水泥制备
	[First_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- 电量-水泥磨
	[First_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- 电量-混合材制备电量
	[First_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- 电量-袋装与散装
	[First_Output_Cement] [decimal](18, 4) NULL,								-- 产量-水泥制备
	[First_Output_BagsBulk] [decimal](18, 4) NULL,								-- 产量-袋装与散装
	[First_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- 电耗-水泥制备
	[First_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- 电耗-水泥磨
	[First_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- 电耗-袋装与散装
	[First_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- 综合电耗
	--乙班
	[Second_Electricity_Cement] [decimal](18, 4) NULL,							-- 电量-水泥制备
	[Second_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- 电量-水泥磨
	[Second_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,			-- 电量-混合材制备电量
	[Second_Electricity_BagsBulk] [decimal](18, 4) NULL,						-- 电量-袋装与散装
	[Second_Output_Cement] [decimal](18, 4) NULL,								-- 产量-水泥制备
	[Second_Output_BagsBulk] [decimal](18, 4) NULL,								-- 产量-袋装与散装
	[Second_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- 电耗-水泥制备
	[Second_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- 电耗-水泥磨
	[Second_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- 电耗-袋装与散装
	[Second_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 		-- 综合电耗
	--丙班
	[Third_Electricity_Cement] [decimal](18, 4) NULL,							-- 电量-水泥制备
	[Third_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- 电量-水泥磨
	[Third_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- 电量-混合材制备电量
	[Third_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- 电量-袋装与散装
	[Third_Output_Cement] [decimal](18, 4) NULL,								-- 产量-水泥制备
	[Third_Output_BagsBulk] [decimal](18, 4) NULL,								-- 产量-袋装与散装
	[Third_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- 电耗-水泥制备
	[Third_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- 电耗-水泥磨
	[Third_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- 电耗-袋装与散装
	[Third_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- 综合电耗
	--合计
	[Amountto_Electricity_Cement] [decimal](18, 4) NULL,						-- 电量-水泥制备
	[Amountto_Electricity_CementGrinding] [decimal](18, 4) NULL,				-- 电量-水泥磨
	[Amountto_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,			-- 电量-混合材制备电量
	[Amountto_Electricity_BagsBulk] [decimal](18, 4) NULL,						-- 电量-袋装与散装
	[Amountto_Output_Cement] [decimal](18, 4) NULL,								-- 产量-水泥制备
	[Amountto_Output_BagsBulk] [decimal](18, 4) NULL,							-- 产量-袋装与散装
	[Amountto_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- 电耗-水泥制备
	[Amountto_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- 电耗-水泥磨
	[Amountto_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,			-- 电耗-袋装与散装
	[Amountto_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 		-- 综合电耗
)
GO

CREATE TABLE [dbo].[report_TeamCementMonthlyEnergyConsumption](					--班组水泥粉磨能耗月统计分析报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					--主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,                                     					--日期
	--A组
    [TeamA_Electricity_Cement] [decimal](18, 4) NULL,							-- 电量-水泥制备
	[TeamA_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- 电量-水泥磨
	[TeamA_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- 电量-混合材制备电量
	[TeamA_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- 电量-袋装与散装
	[TeamA_Output_Cement] [decimal](18, 4) NULL,								-- 产量-水泥制备
	[TeamA_Output_BagsBulk] [decimal](18, 4) NULL,								-- 产量-袋装与散装
	[TeamA_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- 电耗-水泥制备
	[TeamA_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- 电耗-水泥磨
	[TeamA_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- 电耗-袋装与散装
	[TeamA_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- 综合电耗
	--B组
    [TeamB_Electricity_Cement] [decimal](18, 4) NULL,							-- 电量-水泥制备
	[TeamB_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- 电量-水泥磨
	[TeamB_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- 电量-混合材制备电量
	[TeamB_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- 电量-袋装与散装
	[TeamB_Output_Cement] [decimal](18, 4) NULL,								-- 产量-水泥制备
	[TeamB_Output_BagsBulk] [decimal](18, 4) NULL,								-- 产量-袋装与散装
	[TeamB_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- 电耗-水泥制备
	[TeamB_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- 电耗-水泥磨
	[TeamB_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- 电耗-袋装与散装
	[TeamB_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- 综合电耗
	--C组
    [TeamC_Electricity_Cement] [decimal](18, 4) NULL,							-- 电量-水泥制备
	[TeamC_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- 电量-水泥磨
	[TeamC_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- 电量-混合材制备电量
	[TeamC_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- 电量-袋装与散装
	[TeamC_Output_Cement] [decimal](18, 4) NULL,								-- 产量-水泥制备
	[TeamC_Output_BagsBulk] [decimal](18, 4) NULL,								-- 产量-袋装与散装
	[TeamC_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- 电耗-水泥制备
	[TeamC_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- 电耗-水泥磨
	[TeamC_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- 电耗-袋装与散装
	[TeamC_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- 综合电耗
	--D组
    [TeamD_Electricity_Cement] [decimal](18, 4) NULL,							-- 电量-水泥制备
	[TeamD_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- 电量-水泥磨
	[TeamD_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- 电量-混合材制备电量
	[TeamD_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- 电量-袋装与散装
	[TeamD_Output_Cement] [decimal](18, 4) NULL,								-- 产量-水泥制备
	[TeamD_Output_BagsBulk] [decimal](18, 4) NULL,								-- 产量-袋装与散装
	[TeamD_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- 电耗-水泥制备
	[TeamD_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- 电耗-水泥磨
	[TeamD_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- 电耗-袋装与散装
	[TeamD_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- 综合电耗
	--合计
    [Amountto_Electricity_Cement] [decimal](18, 4) NULL,						-- 电量-水泥制备
	[Amountto_Electricity_CementGrinding] [decimal](18, 4) NULL,				-- 电量-水泥磨
	[Amountto_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,			-- 电量-混合材制备电量
	[Amountto_Electricity_BagsBulk] [decimal](18, 4) NULL,						-- 电量-袋装与散装
	[Amountto_Output_Cement] [decimal](18, 4) NULL,								-- 产量-水泥制备
	[Amountto_Output_BagsBulk] [decimal](18, 4) NULL,							-- 产量-袋装与散装
	[Amountto_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- 电耗-水泥制备
	[Amountto_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- 电耗-水泥磨
	[Amountto_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,			-- 电耗-袋装与散装
	[Amountto_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 		-- 综合电耗
	
) 
GO

CREATE TABLE [dbo].[report_TeamCementYearlyElectricityConsumption](				--班组水泥粉磨能耗年统计分析报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					--主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [int] NULL,                                     					--日期
	--A组
    [TeamA_Electricity_Cement] [decimal](18, 4) NULL,							-- 电量-水泥制备
	[TeamA_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- 电量-水泥磨
	[TeamA_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- 电量-混合材制备电量
	[TeamA_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- 电量-袋装与散装
	[TeamA_Output_Cement] [decimal](18, 4) NULL,								-- 产量-水泥制备
	[TeamA_Output_BagsBulk] [decimal](18, 4) NULL,								-- 产量-袋装与散装
	[TeamA_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- 电耗-水泥制备
	[TeamA_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- 电耗-水泥磨
	[TeamA_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- 电耗-袋装与散装
	[TeamA_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- 综合电耗
	--B组
    [TeamB_Electricity_Cement] [decimal](18, 4) NULL,							-- 电量-水泥制备
	[TeamB_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- 电量-水泥磨
	[TeamB_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- 电量-混合材制备电量
	[TeamB_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- 电量-袋装与散装
	[TeamB_Output_Cement] [decimal](18, 4) NULL,								-- 产量-水泥制备
	[TeamB_Output_BagsBulk] [decimal](18, 4) NULL,								-- 产量-袋装与散装
	[TeamB_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- 电耗-水泥制备
	[TeamB_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- 电耗-水泥磨
	[TeamB_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- 电耗-袋装与散装
	[TeamB_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- 综合电耗
	--C组
    [TeamC_Electricity_Cement] [decimal](18, 4) NULL,							-- 电量-水泥制备
	[TeamC_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- 电量-水泥磨
	[TeamC_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- 电量-混合材制备电量
	[TeamC_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- 电量-袋装与散装
	[TeamC_Output_Cement] [decimal](18, 4) NULL,								-- 产量-水泥制备
	[TeamC_Output_BagsBulk] [decimal](18, 4) NULL,								-- 产量-袋装与散装
	[TeamC_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- 电耗-水泥制备
	[TeamC_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- 电耗-水泥磨
	[TeamC_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- 电耗-袋装与散装
	[TeamC_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- 综合电耗
	--D组
    [TeamD_Electricity_Cement] [decimal](18, 4) NULL,							-- 电量-水泥制备
	[TeamD_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- 电量-水泥磨
	[TeamD_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- 电量-混合材制备电量
	[TeamD_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- 电量-袋装与散装
	[TeamD_Output_Cement] [decimal](18, 4) NULL,								-- 产量-水泥制备
	[TeamD_Output_BagsBulk] [decimal](18, 4) NULL,								-- 产量-袋装与散装
	[TeamD_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- 电耗-水泥制备
	[TeamD_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- 电耗-水泥磨
	[TeamD_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- 电耗-袋装与散装
	[TeamD_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- 综合电耗
	--合计
    [Amountto_Electricity_Cement] [decimal](18, 4) NULL,						-- 电量-水泥制备
	[Amountto_Electricity_CementGrinding] [decimal](18, 4) NULL,				-- 电量-水泥磨
	[Amountto_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,			-- 电量-混合材制备电量
	[Amountto_Electricity_BagsBulk] [decimal](18, 4) NULL,						-- 电量-袋装与散装
	[Amountto_Output_Cement] [decimal](18, 4) NULL,								-- 产量-水泥制备
	[Amountto_Output_BagsBulk] [decimal](18, 4) NULL,							-- 产量-袋装与散装
	[Amountto_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- 电耗-水泥制备
	[Amountto_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- 电耗-水泥磨
	[Amountto_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,			-- 电耗-袋装与散装
	[Amountto_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 		-- 综合电耗
	
) 
GO

CREATE TABLE [dbo].[report_CementMilYearlyEnergyConsumption](					-- 水泥磨能耗年统计分析
	[ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,							-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,                                     				-- 日期
	[Electricity_Cement_Monthly] [decimal](18, 4) NULL,							-- 电量-水泥制备_本月
	[Electricity_Cement_Accumulative] [decimal](18, 4) NULL,					-- 电量-水泥制备_累计
	[Electricity_CementGrinding_Monthly] [decimal](18, 4) NULL,					-- 电量-水泥磨_本月
	[Electricity_CementGrinding_Accumulative] [decimal](18, 4) NULL,			-- 电量-水泥磨_累计
	[Electricity_AdmixturePreparation_Monthly] [decimal](18, 4) NULL,			-- 电量-混合材制备电量_本月
	[Electricity_AdmixturePreparation_Accumulative] [decimal](18, 4) NULL,		-- 电量-混合材制备电量_累计
	[Electricity_BagsBulk_Monthly] [decimal](18, 4) NULL,						-- 电量-袋装与散装_本月
	[Electricity_BagsBulk_Accumulative] [decimal](18, 4) NULL,					-- 电量-袋装与散装_累计
	[Output_Cement_Monthly] [decimal](18, 4) NULL,								-- 产量-水泥制备_本月
	[Output_Cement_Accumulative] [decimal](18, 4) NULL,							-- 产量-水泥制备_累计
	[Output_BagsBulk_Monthly] [decimal](18, 4) NULL,							-- 产量-袋装与散装_本月
	[Output_BagsBulk_Accumulative] [decimal](18, 4) NULL,								-- 产量-袋装与散装_累计
	[ElectricityConsumption_Cement_Monthly] [decimal](18, 4) NULL,				        -- 电耗-水泥制备_本月
	[ElectricityConsumption_Cement_Accumulative] [decimal](18, 4) NULL,				    -- 电耗-水泥制备_累计
	[ElectricityConsumption_CementGrinding_Monthly] [decimal](18, 4) NULL,		        -- 电耗-水泥磨_本月
	[ElectricityConsumption_CementGrinding_Accumulative] [decimal](18, 4) NULL,		    -- 电耗-水泥磨_累计
	[ElectricityConsumption_BagsBulk_Monthly] [decimal](18, 4) NULL,				    -- 电耗-袋装与散装_本月
	[ElectricityConsumption_BagsBulk_Accumulative] [decimal](18, 4) NULL,				-- 电耗-袋装与散装_累计
	[ComprehensiveElectricityConsumption_Monthly] [decimal](18, 4) NULL, 			    -- 综合电耗_本月
	[ComprehensiveElectricityConsumption_Accumulative] [decimal](18, 4) NULL, 			-- 综合电耗_累计
)
GO

CREATE TABLE [dbo].[report_TeamClinkerYearlyProcessEnergyConsumption](			-- 班组熟料生产能耗年统计分析
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,                                     				-- 日期
      --A组
	[TeamA_Electricity_RawBatch]  [decimal](18, 4) NULL,               			-- 电量-生料制备
	[TeamA_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,					---电量-生料磨
	[TeamA_Electricity_Clinker]  [decimal](18, 4) NULL,                			-- 电量-熟料烧成
	[TeamA_Electricity_CoalDust]  [decimal](18, 4) NULL,               			-- 电量-煤粉制备
	[TeamA_Consumption_CoalDust]  [decimal](18, 4) NULL,               			-- 消耗量-煤粉
	[TeamA_Output_RawBatch]  [decimal](18, 4) NULL,                    			-- 产量-生料制备
	[TeamA_Output_Clinker]  [decimal](18, 4) NULL,                     			-- 产量-熟料烧成
	[TeamA_Output_CoalDust]  [decimal](18, 4) NULL,                    			-- 产量-煤粉制备
	[TeamA_Output_Cogeneration]  [decimal](18, 4) NULL,                			-- 产量-余热发电发电量
	[TeamA_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,    			-- 电耗-生料制备
	[TeamA_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, 		-- 电耗-生料磨 
	[TeamA_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,     			-- 电耗-熟料烧成
	[TeamA_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,    			-- 电耗-煤粉制备
	[TeamA_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,			-- 综合电耗
	[TeamA_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,       			-- 实物煤耗
     --B组
	[TeamB_Electricity_RawBatch]  [decimal](18, 4) NULL,              			-- 电量-生料制备
	[TeamB_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,					-- 电量-生料磨
	[TeamB_Electricity_Clinker]  [decimal](18, 4) NULL,               			-- 电量-熟料烧成
	[TeamB_Electricity_CoalDust]  [decimal](18, 4) NULL,              			-- 电量-煤粉制备
	[TeamB_Consumption_CoalDust]  [decimal](18, 4) NULL,              			-- 消耗量-煤粉
	[TeamB_Output_RawBatch]  [decimal](18, 4) NULL,                   			-- 产量-生料制备
	[TeamB_Output_Clinker]  [decimal](18, 4) NULL,                    			-- 产量-熟料烧成
	[TeamB_Output_CoalDust]  [decimal](18, 4) NULL,                   			-- 产量-煤粉制备
	[TeamB_Output_Cogeneration]  [decimal](18, 4) NULL,               			-- 产量-余热发电发电量
	[TeamB_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,   			-- 电耗-生料制备
	[TeamB_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, 		-- 电耗-生料磨 
	[TeamB_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,    			-- 电耗-熟料烧成
	[TeamB_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,   			-- 电耗-煤粉制备
	[TeamB_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,			-- 综合电耗
	[TeamB_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,      			-- 实物煤耗
     --C组
	[TeamC_Electricity_RawBatch]  [decimal](18, 4) NULL,               			-- 电量-生料制备
	[TeamC_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,					-- 电量-生料磨
	[TeamC_Electricity_Clinker]  [decimal](18, 4) NULL,                			-- 电量-熟料烧成
	[TeamC_Electricity_CoalDust]  [decimal](18, 4) NULL,               			-- 电量-煤粉制备
	[TeamC_Consumption_CoalDust]  [decimal](18, 4) NULL,               			-- 消耗量-煤粉
	[TeamC_Output_RawBatch]  [decimal](18, 4) NULL,                    			-- 产量-生料制备
	[TeamC_Output_Clinker]  [decimal](18, 4) NULL,                    	 		-- 产量-熟料烧成
	[TeamC_Output_CoalDust]  [decimal](18, 4) NULL,                    			-- 产量-煤粉制备
	[TeamC_Output_Cogeneration]  [decimal](18, 4) NULL,                			-- 产量-余热发电发电量
	[TeamC_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,    			-- 电耗-生料制备
	[TeamC_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, 		-- 电耗-生料磨 
	[TeamC_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,     			-- 电耗-熟料烧成
	[TeamC_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,    			-- 电耗-煤粉制备
	[TeamC_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,			-- 综合电耗
	[TeamC_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,       			-- 实物煤耗
	--D组
	[TeamD_Electricity_RawBatch]  [decimal](18, 4) NULL,               			-- 电量-生料制备
	[TeamD_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,					-- 电量-生料磨
	[TeamD_Electricity_Clinker]  [decimal](18, 4) NULL,                			-- 电量-熟料烧成
	[TeamD_Electricity_CoalDust]  [decimal](18, 4) NULL,               			-- 电量-煤粉制备
	[TeamD_Consumption_CoalDust]  [decimal](18, 4) NULL,               			-- 消耗量-煤粉
	[TeamD_Output_RawBatch]  [decimal](18, 4) NULL,                    			-- 产量-生料制备
	[TeamD_Output_Clinker]  [decimal](18, 4) NULL,                     			-- 产量-熟料烧成
	[TeamD_Output_CoalDust]  [decimal](18, 4) NULL,                    			-- 产量-煤粉制备
	[TeamD_Output_Cogeneration]  [decimal](18, 4) NULL,                			-- 产量-余热发电发电量
	[TeamD_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,    			-- 电耗-生料制备
	[TeamD_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, 		-- 电耗-生料磨 
	[TeamD_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,     			-- 电耗-熟料烧成
	[TeamD_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,    			-- 电耗-煤粉制备
	[TeamD_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,			-- 综合电耗
	[TeamD_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,       			-- 实物煤耗
     --日合计
	[Amountto_Electricity_RawBatch]  [decimal](18, 4) NULL,               		-- 日合计-电量-生料制备
	[Amountto_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,				-- 日合计-电量-生料制备
	[Amountto_Electricity_Clinker]  [decimal](18, 4) NULL,                		-- 日合计-电量-熟料烧成
	[Amountto_Electricity_CoalDust]  [decimal](18, 4) NULL,               		-- 日合计-电量-煤粉制备
	[Amountto_Consumption_CoalDust]  [decimal](18, 4) NULL,               		-- 日合计-消耗量-煤粉
	[Amountto_Output_RawBatch]  [decimal](18, 4) NULL,                    		-- 日合计-产量-生料制备
	[Amountto_Output_Clinker]  [decimal](18, 4) NULL,                     		-- 日合计-产量-熟料烧成
	[Amountto_Output_CoalDust]  [decimal](18, 4) NULL,                    		-- 日合计-产量-煤粉制备
	[Amountto_Output_Cogeneration]  [decimal](18, 4) NULL,                		-- 日合计-产量-余热发电发电量
	[Amountto_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,    		-- 日合计-电耗-生料制备
	[Amountto_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, 	--------------------------zcs添加，电耗-生料磨 
	[Amountto_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,     		-- 日合计-电耗-熟料烧成
	[Amountto_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,    		-- 日合计-电耗-煤粉制备
	[Amountto_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,		-- 日合计-综合电耗
	[Amountto_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,       		-- 日合计-实物煤耗
) 
GO