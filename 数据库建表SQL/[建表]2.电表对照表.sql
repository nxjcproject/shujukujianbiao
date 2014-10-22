/*
	表建立在分厂级别的电表数据库中
	采集到的电表数值类型为 bigint
	采集到的电表数据存储在表名为 Ammeter 表中（分History/Realtime）
*/
CREATE TABLE [dbo].[AmmeterContrast](											-- 电表对照表
	[OrganizationID] [uniqueidentifier] NULL,									-- 生产机构ID
	[AmmeterNumber] [char](30) NULL,											-- 电表层次码
	[AmmeterName] [char](30) NULL,												-- 电表名称
	[AmmeterSource] [bit] NULL,													-- 电表来源（0表示来自串口，1表示来自电力需求侧）
	[ElectricRoom] [varchar](max) NULL,											-- 所属电气室
	[CommunicationProtocol ] [char](30) NULL,									-- 通讯协议
	[AmmeterAddress] [char](30) NULL,											-- 电表地址
	[CommPort] [int] NULL,														-- 通讯串口号
	[CT] [int] NULL,															-- 电压互感器变比
	[PT] [int] NULL,															-- 电流互感器变比
	[EnabledFlag] [bit] NULL,													-- 电表启用标志位
	[ElectricEnergyFlag] [bit] NULL,											-- 读电能启用标志位
	[PowerFlag] [bit] NULL,														-- 读功率启用标志位
	[BreakdownFlag] [bit] NULL,													-- 故障标志位
	[ElectricEnergyTableName_e] [char](30) NULL,								-- 电力需求侧端-电能存储表名
	[ElectricEnergyFieldName_e] [char](30) NULL,								-- 电力需求侧端-电能存储字段名
	[PowerTableName_e] [char](30) NULL,											-- 电力需求侧端-电能存储表名
	[PowerFieldName_e] [char](30) NULL,											-- 电力需求侧端-功率存储字段名
	[ElectricEnergyFieldName_s] [char](30) NULL,								-- 电能存储字段名
	[PowerFieldName_s] [char](30) NULL,											-- 功率存储字段名
	[IsCumulant] [bit] NULL,													-- 是否是累计量
	[CumulantName] [char](4) NULL,												-- 累积量名称（S001，注意以0开头，区别DCS累积量，DCS累积量以S501开始命名）
)
GO
