/*
	公式表及其相关表
	所有表都建立在管理数据库中
*/
CREATE TABLE [dbo].[tz_Formula](												-- 公式引领表
	[KeyID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,						-- 公式引领表ID
	[OrganizationID] [uniqueidentifier] NULL,									-- 所属组织机构ID（公共：分厂，系统及自定义：生产线）
	[Name] [nvarchar](50) NULL,													-- 公式组名称
	[CreatedDate] [datetime] NULL,												-- 公式组创建日期
	[Type] [int] DEFAULT(0) NULL,												-- 公式类型（1：公共，2：系统，3：自定义）
	[State] [int] DEFAULT(0) NULL												-- 公式组状态
)
GO

CREATE TABLE [dbo].[formula_FormulaDetail](										-- 公式表（包括公共、系统、自定义）
	[KeyID] [uniqueidentifier] NULL,											-- 公式引领ID
	[LevelCode] [nvarchar](50) NOT NULL,										-- 层次码
	[Name] [nvarchar](50) NULL,													-- 工序名称
	[Formula] [nvarchar](400) NULL,												-- 公式
	[Remarks] [nvarchar](MAX) NULL												-- 备注
)
GO

CREATE TABLE [dbo].[formula_ElectricityConsumptionAlarmSetting](				-- 电耗报警设置
	[KeyID] [uniqueidentifier] NULL,											-- 电耗报警公式引领ID
	[LevelCode] [nvarchar](50) NOT NULL,										-- 层次码（一二三级不可变）
	[Name] [nvarchar](50) NULL,													-- 工序名称（一二三级不可变）
	[Formula] [nvarchar](400) NULL,												-- 公式
	[StandardValue] [real] NULL,												-- 标准值
	[AlarmValue] [real] NULL,													-- 报警值
	[RelativeParameters] [nvarchar](MAX) NULL,									-- 相关参数（DCS:标签名[,DCS:标签名]）
	[Remarks] [nvarchar](MAX) NULL												-- 备注
)
GO

CREATE TABLE [dbo].[formula_Log](
	[KeyID] [uniqueidentifier] NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[ExpirationDate] [datetime] NULL,
)
GO