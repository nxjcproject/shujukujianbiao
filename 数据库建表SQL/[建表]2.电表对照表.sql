/*
	表建立在分厂级别的电表数据库中
	采集到的电表数值类型为 bigint
	采集到的电表数据存储在表名为 Ammeter 表中（分History/Realtime）
*/
CREATE TABLE [dbo].[AmmeterContrast](											-- 电表对照表
	[OrganizationID] [varchar](64) NULL,										-- 生产机构ID
	[AmmeterNumber] [char](30) NULL,											-- 电表层次码
	[AmmeterName] [char](30) NULL,												-- 电表名称
	[AmmeterSource] [bit] NULL,													-- 电表来源（0表示来自串口，1表示来自电力需求侧）
	[ElectricRoom] [char](40) NULL,												-- 所属电气室
	[CommunicationProtocol] [char](30) NULL,									-- 通讯协议
	[AmmeterAddress] [char](30) NULL,											-- 电表地址
	[CommPort] [int] NULL,														-- 通讯串口号
	[IpAddress] [nchar](20) NULL,
	[OPCName] [nchar](30) NULL,
	[ElectricEnergyItem] [nchar](20) NULL,
	[PowerItem] [nchar](20) NULL,
	[CT] [int] NULL,															-- 电压互感器变比
	[PT] [int] NULL,															-- 电流互感器变比
	[EnabledFlag] [bit] DEFAULT(1) NULL,										-- 电表启用标志位
	[ElectricEnergyFlag] [bit] DEFAULT(1) NULL,									-- 读电能启用标志位
	[PowerFlag] [bit] DEFAULT(1) NULL,											-- 读功率启用标志位
	[BreakdownFlag] [bit] NULL,													-- 故障标志位
	[ElectricEnergyTableNameDSM] [char](30) NULL,								-- 电力需求侧端-电能存储表名
	[ElectricEnergyFieldNameDSM] [char](30) NULL,								-- 电力需求侧端-电能存储字段名
	[PowerTableNameDSM] [char](30) NULL,										-- 电力需求侧端-电能存储表名
	[PowerFieldNameDSM] [char](30) NULL,										-- 电力需求侧端-功率存储字段名
	[ElectricEnergyFieldNameSave] [char](30) NULL,								-- 电能存储字段名
	[PowerFieldNameSave] [char](30) NULL,										-- 功率存储字段名
	[Status] [varchar](8) NULL,													-- 电表当前状态  取值：正常读取，不能读取
	[TimeStatusChange] [datetime] NULL											-- 当前状态时间
)
GO

CREATE TABLE [dbo].[RealtimeFormulaValue](										-- 实时公式计算值存储表
	[vDate] [datetime] NULL,													-- 时间
	[OrganizationID] [varchar](64) NOT NULL,									-- 组织机构ID
	[VariableID] [varchar](64) NULL,											-- 公式变量ID
	[LevelCode] [nvarchar](50) NOT NULL,										-- 公式层次码
	[FormulaValue] [decimal](18, 4) NULL,										-- 公式计算电量值
	[DenominatorValue] [decimal](18, 4) NULL									-- 分母计算值

) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HistoyFormulaValue](										-- 历史公式计算值存储表
	[vDate] [datetime] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[VariableID] [varchar](64) NULL,
	[LevelCode] [nvarchar](50) NOT NULL,
	[FormulaValue] [decimal](18, 4) NULL,
	[DenominatorValue] [decimal](18, 4) NULL,
 CONSTRAINT [PK_HistoyFormulaValue] PRIMARY KEY CLUSTERED 
(
	[OrganizationID] ASC,
	[LevelCode] ASC,
	[vDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO