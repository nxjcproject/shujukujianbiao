/*
	公式表及其相关表
	所有表都建立在管理数据库中
*/
CREATE TABLE [dbo].[tz_Formula](												-- 公式引领表
	[KeyID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,						-- 公式引领表ID
	[OrganizationID] [varchar](64) NULL,										-- 所属组织机构ID（公共：分厂，系统及自定义：生产线）
	[Name] [nvarchar](50) NULL,													-- 公式组名称
	[CreatedDate] [datetime] NULL,												-- 公式组创建日期
	[AlarmPeriod] [int] DEFAULT(0) NULL,										-- 报警周期（分钟）
	[Type] [int] DEFAULT(0) NULL,												-- 公式类型（1：公共，2：系统，3：自定义）
	[ENABLE] [bit] DEFAULT(1) NULL,												-- 启用标志
	[State] [int] DEFAULT(0) NULL												-- 公式组状态
)
GO

CREATE TABLE [dbo].[formula_FormulaDetail](										-- 公式表（包括公共、系统、自定义）
	[ID] [uniqueidentifier] DEFAULT(newid()) NULL,								-- 唯一ID（用于数据同步）
	[VariableId] [varchar](64) NULL,											-- 公式ID（用于KPI平衡以及预留的ERP接口）
	[KeyID] [uniqueidentifier] NULL,											-- 公式引领ID
	[LevelCode] [nvarchar](50) NOT NULL,										-- 层次码
	[ProcessName] [nvarchar](50) NULL,											-- 工序名称
	[Formula] [nvarchar](400) NULL,												-- 公式
	[Denominator] [nvarchar](MAX) NULL,											-- 电耗(分母公式)
	[Required] [bit] DEFAULT(0) NULL,											-- 必选
	[AlarmType] [int] DEFAULT(0) NULL,											-- 报警类型：1——能耗，  2——功率，  3——能耗和功率
	[EnergyAlarmValue] [decimal](8, 2) NULL,									-- 电耗报警值
	[PowerAlarmValue] [decimal](8, 2) NULL,										-- 功率报警值
	[RelativeParameters] [nvarchar](MAX) NULL,									-- 相关参数（DCS:标签名[,DCS:标签名]）
	[AlarmStatus] [bit] DEFAULT(0) NOT NULL,									-- 报警状态（无论是什么报警，都将此位置1，此字段为能耗监控画面的实时报警服务）
	[Remarks] [nvarchar](MAX) NULL												-- 备注
)
GO


CREATE TABLE [dbo].[formula_ConsumptionAlarmSetting](							-- 能耗报警设置
	[KeyID] [uniqueidentifier] NULL,											-- 电耗报警公式引领ID
	[CoalAlarmValue] [decimal](8, 2) NULL,										-- 煤耗报警值
	[RelativeParameters] [nvarchar](MAX) NULL                                   -- 煤耗报警相关参数（DCS:标签名[,DCS:标签名]）
)
GO

CREATE TABLE [dbo].[formula_Log](
	[KeyID] [uniqueidentifier] NOT NULL,										-- 公式组ID
	[EffectiveDate] [datetime] NULL,											-- 启用时间
	[ExpirationDate] [datetime] NULL											-- 停用时间
)
GO