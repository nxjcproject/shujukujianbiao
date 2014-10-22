/* vb生成的基础报表
*/

CREATE TABLE [dbo].[table_AmmeterPeakerValleyFlatDay](							-- 电表峰谷平日报
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
    [KeyID] [uniqueidentifier] NULL,	           	 							-- 报表引领表ID
    [AmmeterNumber] [char](30) default(0) NULL,									-- 电表层次码
	[AmmeterName] [char](30) default(0) NULL,	            					-- 电表名称	
	[Peak_Electricity] [decimal](18, 4) default(0) NULL,    					-- 峰期电量
	[Valley_Electricity] [decimal](18, 4) default(0) NULL,  					-- 谷期电量
	[Flat_Electricity] [decimal](18, 4) default(0) NULL     					-- 平期电量
)
GO

CREATE TABLE [dbo].[table_AmmeterPeakerValleyFlatMonth](						-- 电表峰谷平月报
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,     	 					-- 主键ID
    [KeyID] [uniqueidentifier] NULL,		                					-- 报表引领表ID
    [AmmeterNumber] [char](30) NULL,				        					-- 电表层次码
	[AmmeterName] [char](30) NULL,						    					-- 电表名称	
	[Peak_Electricity] [decimal](18, 4) default(0) NULL,    					-- 峰期电量
	[Valley_Electricity] [decimal](18, 4) default(0) NULL,  					-- 谷期电量
	[Flat_Electricity] [decimal](18, 4) default(0) NULL     					-- 平期电量
)
GO

CREATE TABLE [dbo].[table_AmmeterPeakerValleyFlatYear](							-- 电表峰谷平年报
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
    [KeyID] [uniqueidentifier] NULL,		                					-- 报表引领表ID
    [AmmeterNumber] [char](30) NULL,				        					-- 电表层次码
	[AmmeterName] [char](30) NULL,						    					-- 电表名称	
	[Peak_Electricity] [bigint] default(0) NULL,            					-- 峰期电量
	[Valley_Electricity] [bigint] default(0) NULL,          					-- 谷期电量
	[Flat_Electricity] [bigint] default(0) NULL,            					-- 平期电量
)
GO
CREATE TABLE [dbo].[table_ClinkerMonthlyOutput](            					-- 熟料生产线产量报表 月报
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,     	 					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,
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

CREATE TABLE [dbo].[table_ClinkerYearlyOutput](            						-- 熟料生产线产量报表 年报
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,
	[LimestoneConsumptionFirstShift] [decimal](18, 4) default(0) NULL,           		-- 石灰石消耗量甲班
	[LimestoneConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[LimestoneConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[LimestoneConsumptionSum] [decimal](18, 4) default(0) NULL,
	[RawBatchProductionFirstShift] [decimal](18, 4) default(0) NULL,             		-- 生料产量甲班
	[RawBatchProductionSecondShift] [decimal](18, 4) default(0) NULL,
	[RawBatchProductionThirdShift] [decimal](18, 4) default(0) NULL,
	[RawBatchProductionSum] [decimal](18, 4) default(0) NULL,
	[RawBatchConsumptionFirstShift] [decimal](18, 4) default(0) NULL,           	 	-- 生料下料量甲班
	[RawBatchConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[RawBatchConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[RawBatchConsumptionSum] [decimal](18, 4) default(0) NULL,
	[ClinkerProductionFirstShift] [decimal](18, 4) default(0) NULL,              		-- 熟料产量甲班
	[ClinkerProductionSecondShift] [decimal](18, 4) default(0) NULL,
	[ClinkerProductionThirdShift] [decimal](18, 4) default(0) NULL,
	[ClinkerProductionSum] [decimal](18, 4) default(0) NULL,
	[PowerGenerationFirstShift] [decimal](18, 4) default(0) NULL,                		-- 余热发电发电量甲班
	[PowerGenerationSecondShift] [decimal](18, 4) default(0) NULL,
	[PowerGenerationThirdShift] [decimal](18, 4) default(0) NULL,
	[PowerGenerationSum] [decimal](18, 4) default(0) NULL,
	[PowerSelfUseFirstShift] [decimal](18, 4) default(0) NULL,                   		-- 余热发电发自用电电量甲班
	[PowerSelfUseSecondShift] [decimal](18, 4) default(0) NULL,
	[PowerSelfUseThirdShift] [decimal](18, 4) default(0) NULL,
	[PowerSelfUseSum] [decimal](18, 4) default(0) NULL,
	[SteamFirstShift] [decimal](18, 4) default(0) NULL,                          		-- 余热发电蒸汽量甲班
	[SteamSecondShift] [decimal](18, 4) default(0) NULL,
	[SteamThirdShift] [decimal](18, 4) default(0) NULL,
	[SteamSum] [decimal](18, 4) default(0) NULL,
	[CoalDustProductionFirstShift] [decimal](18, 4) default(0) NULL,             		-- 煤粉产量
	[CoalDustProductionSecondShift] [decimal](18, 4) default(0) NULL,
	[CoalDustProductionThirdShift] [decimal](18, 4) default(0) NULL,
	[CoalDustProductionSum] [decimal](18, 4) default(0) NULL,
	[KilnHeadCoalDustConsumptionFirstShift] [decimal](18, 4) default(0) NULL,    		-- 窑头用煤量甲班
	[KilnHeadCoalDustConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[KilnHeadCoalDustConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[KilnHeadCoalDustConsumptionSum] [decimal](18, 4) default(0) NULL,
	[KilnTailCoalDustConsumptionFirstShift] [decimal](18, 4) default(0) NULL,    		-- 窑尾用煤量甲班
	[KilnTailCoalDustConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[KilnTailCoalDustConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[KilnTailCoalDustConsumptionSum] [decimal](18, 4) default(0) NULL,
	[AmounttoCoalDustConsumptionFirstShift] [decimal](18, 4) default(0) NULL,    		-- 总用煤量甲班
	[AmounttoCoalDustConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[AmounttoCoalDustConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[AmounttoCoalDustConsumptionSum] [decimal](18, 4) default(0) NULL

) 
GO
CREATE TABLE [dbo].[table_CementMillMonthlyOutput](         					-- 水泥生产线产量报表 月报
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,
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

CREATE TABLE [dbo].[table_CementMillYearlyOutput](         						-- 水泥生产线产量报表 年报
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL, 
	[CementTypes] [char](20) NULL,
	[ClinkerConsumptionFirstShift] [decimal](18, 4) default(0) NULL,             		-- 熟料消耗量甲班
	[ClinkerConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[ClinkerConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[ClinkerConsumptionSum] [decimal](18, 4) default(0) NULL,
	[PlasterConsumptionFirstShift] [decimal](18, 4) default(0) NULL,             		-- 石膏消耗量甲班
	[PlasterConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[PlasterConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[PlasterConsumptionSum] [decimal](18, 4) default(0) NULL,
	[CementProductionFirstShift] [decimal](18, 4) default(0) NULL,               		-- 水泥产量甲班
	[CementProductionSecondShift] [decimal](18, 4) default(0) NULL,
	[CementProductionThirdShift] [decimal](18, 4) default(0) NULL,
	[CementProductionSum] [decimal](18, 4) default(0) NULL
)
GO
CREATE TABLE [dbo].[table_ClinkerMonthlyElectricity_sum](						-- 熟料生产线合计用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,
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

CREATE TABLE [dbo].[table_ClinkerMonthlyElectricity_peak](						-- 熟料生产线峰段用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,
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

CREATE TABLE [dbo].[table_ClinkerMonthlyElectricity_valley](					-- 熟料生产线谷段用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,
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
 
CREATE TABLE [dbo].[table_ClinkerMonthlyElectricity_flat](						-- 熟料生产线平段用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,							-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,
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
CREATE TABLE [dbo].[table_ClinkerYearlyElectricity_sum](						-- 熟料生产线合计用电量统计年报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL, 							-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,
	[RawMaterialPreparationFirstShift]  [decimal](18, 4) default(0) NULL,         		-- 原料制备甲班
	[RawMaterialPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingFirstShift]  [decimal](18, 4) default(0) NULL,               		-- 生料粉磨甲班
	[RawBatchGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchPreparationFirstShift]  [decimal](18, 4) default(0) NULL,           	 	-- 生料制备合计甲班
	[AmounttoRawBatchPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationSum]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemFirstShift]  [decimal](18, 4) default(0) NULL,                 		-- 煤磨系统甲班
	[CoalMillSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemSum]  [decimal](18, 4) default(0) NULL,
	[FiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,                   		-- 烧成系统甲班
	[FiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,           		-- 烧成系统合计甲班
	[AmounttoFiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,                       		-- 总合计甲班
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL
) 
GO
CREATE TABLE [dbo].[table_CementMillMonthlyElectricity_sum](					-- 水泥生产线合计用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,
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

CREATE TABLE [dbo].[table_CementMillMonthlyElectricity_peak](					-- 水泥生产线峰段用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,
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

CREATE TABLE [dbo].[table_CementMillMonthlyElectricity_valley](					-- 水泥生产线谷段用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,
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

CREATE TABLE [dbo].[table_CementMillMonthlyElectricity_flat](					-- 水泥生产线平段用电量统计月报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,
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

CREATE TABLE [dbo].[table_CementMillYearlyElectricity_sum](						-- 水泥生产线合计用电量统计年报表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[KeyID] [uniqueidentifier] NULL,                        					-- 报表引领表ID
	[vDate] [nchar](2) NULL,
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