/*
	基础数据表
	所有表都建立在管理数据库中
*/
CREATE TABLE [dbo].[system_ReportDescription](									-- 报表名称描述
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,							-- 主键ID
	[Name] [char](100) NULL,                                					-- 报表汉语名称
	[StoreName] [char](100) NULL,                           					-- 报表存储名称
	[Remarks] [nvarchar](max) NULL												-- 备注
)
GO

CREATE TABLE [dbo].[system_ElectricityConsumptionAlarmParameterSetting](		-- 电耗报警参数设置
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[OrganizationID] [varchar](64) NULL,										-- 生产机构ID
	[LevelCode] [char](20) NULL,                            					-- 层次码
	[Name] [char](100) NULL,                                					-- 工序名称
	[StandardValue] [decimal](18, 4) NULL,                  					-- 标准值
	[AlarmValue] [decimal](18, 4) NULL,                     					-- 报警值
    [Remarks] [nvarchar](max) NULL												-- 备注
)
GO

CREATE TABLE [dbo].[system_CoalConsumptionAlarmParameterSetting](  				-- 煤耗报警参数设置
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[OrganizationID] [varchar](64) NULL,										-- 生产机构ID
	[Name] [char](20) NULL,                                 					-- 名称（此表只有一行，name填写“熟料煤耗”）
	[StandardValue] [decimal](18, 4) NULL,                  					-- 标准值
	[AlarmValue] [decimal](18, 4) NULL,                     					-- 报警值
    [Remarks] [nvarchar](max) NULL												-- 备注
)
GO

--CREATE TABLE [dbo].[system_AlarmCycle](                     					-- 能耗报警报警周期设置
--    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
--	[OrganizationID] [varchar](64) NULL,										-- 生产机构ID
--	[CycleCode] [int] NULL,                                 					-- 不同周期的编号
--	[TimeSpan] [int] NULL                                   					-- 周期时间长度
--)
--GO

CREATE TABLE [dbo].[system_KPI](												-- KPI对比指标维护表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,							-- 主键ID
	[StandardCategory] [char](20) NULL,                     					-- 标准类型
	[Clinker_ComparableComprehensiveStandardCoalConsumption] [decimal](8, 2) NULL,-- 可比熟料综合煤耗限定值
	[Clinker_ComparableComprehensiveElectricityConsumption] [decimal](8, 2) NULL, -- 可比熟料综合电耗限定值
	[Cement_ComparableComprehensiveElectricityConsumption]  [decimal](8, 2) NULL, -- 可比水泥综合电耗限定值
	[Clinker_ComparableComprehensiveEnergyConsumption]  [decimal](8, 2) NULL,   -- 可比熟料综合能耗限定值
	[Cement_ComparableComprehensiveEnergyConsumption]  [decimal](8, 2) NULL,    -- 可比水泥综合能耗限定值
	[RawBatch_ElectricityConsumption] [decimal](8, 2) NULL,                     -- 生料制备工段电耗
	[Clinker_CoalConsumption] [decimal](8, 2) NULL,                             -- 熟料烧成工段煤耗
	[Clinker_ElectricityConsumption] [decimal](8, 2) NULL,                      -- 熟料烧成工段电耗
	[Cement_ElectricityConsumption] [decimal](8, 2) NULL                        -- 水泥制备工段电耗
)
GO

CREATE TABLE [dbo].[system_CementTypesAndConvertCoefficient](					-- 水泥品种及折合系数
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[CementID] [int] NULL,                                  					-- 水泥品种ID
	[CementTypes] [char](30) NULL,                          					-- 水泥品种
	[ConvertCoefficient]  [decimal](6, 4) NULL,             					-- 折合系数
    [Remarks] [nvarchar](max) NULL												-- 备注
)
GO

CREATE TABLE [dbo].[system_EnergyConversionConversionCoefficient](				-- 能源折算系数
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
	[Energy] [char](20) NULL,                               					-- 能源名称
	[Qnet] [int] NULL,                                      					-- 空干基低位发热量
	[ConversionCoefficient] [decimal](6, 4) NULL            					-- 折标系数
)
GO

CREATE TABLE [dbo].[system_PeakValleyFlatElectrovalence](						-- 峰谷平分时电价表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
    [OrganizationID] [varchar](64) NULL,               							-- 生产机构ID
	[PeakElectrovalence][decimal](6, 4) NULL,               					-- 峰期电价
	[ValleyElectrovalence] [decimal](6, 4) NULL,            					-- 谷期电价
	[FlatElectrovalence] [decimal](6, 4) NULL,              					-- 平期电价
)
GO

CREATE TABLE [dbo].[system_PVF_Detail](											-- 峰谷平定义表
	[ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
    [KeyID] [uniqueidentifier] NULL,											-- 引领ID
	[StartTime] [char](10) NULL,                            					-- 开始时间
	[EndTime] [char](10) NULL,                              					-- 终止时间
	[Type][char](10) NULL                                 						-- 类型 （峰期 ；谷期 ；平期）
)
GO

CREATE TABLE [dbo].[system_PVF](												-- 峰谷列表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- 主键ID
    [OrganizationID] [varchar](64) NULL,                                		-- 生产机构ID
	[StartUsing] [date] NULL,                            						-- 启用时间
	[EndUsing] [date] NULL,                              						-- 停用时间
	[Flag] [bit] NULL,                                       					-- 启用标志
	[KeyID] [uniqueidentifier] NULL												-- 引领ID
)
GO

	
CREATE TABLE [dbo].[system_MasterMachinedescription](							-- DCS主机描述
    [ID] [uniqueidentifier] PRIMARY KEY DEFAULT(newid()) NOT NULL,              -- 主键ID
	[OrganizationID] [varchar](64) NULL,				                    	-- 生产机构ID
	[VariableName] [char](30) NULL,												-- 变量名称（变量名称命名不可以数字开头，是为开发其他系统通用性考虑，以及在前台配置标签时ID的命名约束）
	[VariableDescription] [varchar](max) NULL,									-- 变量描述
	[Record] [bit] NULL,                                                        -- 是否记录主机停机信息
	[ValidValues] [bit] NULL,													-- 有效值（比如点号采集值为0时标识主机停机，则此处填写0）
	[Remarks] [nvarchar](max) NULL,							                    -- 备注
	[KeyID] [uniqueidentifier] NULL							                    -- 连从机表的Key_id
)
GO

CREATE TABLE [dbo].[system_SlaveMachinedescription](							-- DCS从机描述
    [ID] [uniqueidentifier] PRIMARY KEY DEFAULT(newid()) NOT NULL,              -- 主键ID
	[OrganizationID] [varchar](64) NULL,				                    	-- 生产机构ID
	[KeyID] [uniqueidentifier] NULL,						                    -- 主机Key_id
	[VariableName] [char](30) NULL,												-- 变量名称（变量名称命名不可以数字开头，是为开发其他系统通用性考虑，以及在前台配置标签时ID的命名约束）
	[VariableDescription] [varchar](max) NULL,									-- 变量描述
	[ValidValues] [bit] NULL,													-- 有效值（比如点号采集值为0时标识主机停机，则此处填写0）
    [TimeDelay] [int] DEFAULT(5) NOT NULL,										-- 允许时间
	[Remarks] [nvarchar](max) NULL							                    -- 备注
)
GO
