/*
	表建立在过程数据库中
*/

CREATE TABLE [dbo].[DCSContrast](												-- DCS点号对照表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,                          -- 主键ID
	[OrganizationID] [varchar](64) NULL,				                    	-- 生产机构ID
	[Process] [char](30) NULL,													-- 生产环节（熟料、水泥磨、余热发电）  （张迪保留）
	[VariableName] [char](30) NULL,												-- 变量名称（变量名称命名不可以数字开头，是为开发其他系统通用性考虑，以及在前台配置标签时ID的命名约束）
	[VariableDescription] [varchar](max) NULL,									-- 变量描述
	[IpAddress] [varchar](max) NULL,											-- OPC采集地址
	[OPCName] [varchar](max) NULL,												-- OPC名称
	[Item] [char](30) NULL,														-- OPC项
	[TableName] [char](30) NULL,												-- 数据存储表名称（此处仅填写表名，系统自动生成History/Realtime前缀）
	[FieldName] [char](30) NULL,												-- 数据存储字段名称
	[DataType] [char](30) NULL,													-- 数据存储类型（注意精度的设计）
	[ViewName] [char](30) NULL,													-- 画面名称
	[IsCumulant] [bit] NULL,													-- 是否是累计量（李相松，去掉Total，改为IsCumulant）
	[CumulantName] [char](4) NULL,												-- 累积量名称（S501，注意以5开头，区别电表累积量，电表累积量以S001开始命名）
	[EquipmentName] [char](30) NULL,											-- 设备名称（如果标签对应设备，则此处填写设备名称） ？？？？？
	[MasterOrSlave] [int] NULL,									                -- 是否是主从机（1代表主机;0代表从机;其他值暂无意义且无效）
	[HaltID] [uniqueidentifier] NULL                                            -- 主从机的ID，与“DCS主机描述”表、“DCS从机描述”表内的ID列相对应
)
GO

CREATE TABLE [dbo].[EnergyConsumptionContrast](									-- 能耗监控画面对照表
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,                          -- 主键ID
	[OrganizationID] [varchar](64) NULL,				                    	-- 生产机构ID
	[type] [int] NULL,															-- 变量类型
	[ViewName] [char](30) NULL,													-- 画面名称
	[VariableName] [char](30) NULL,												-- 变量名称（变量名称命名不可以数字开头，是为开发其他系统通用性考虑，以及在前台配置标签时ID的命名约束）
	[VariableDescription] [varchar](max) NULL,									-- 变量描述
	[TableName] [char](30) NULL,												-- 数据存储表名称（此处仅填写表名，系统自动生成History/Realtime前缀）
	[FieldName] [char](30) NULL,												-- 数据存储字段名称
	[Item] [char](30) NULL,														-- 标签/电表编号/公式
	[value] [decimal](18, 2) NULL,												-- 值
)
GO
	
CREATE TABLE [dbo].[MasterMachinedescription](								    -- DCS主机描述
    [ID] [uniqueidentifier]  NOT NULL,                                          -- 主键ID
	[OrganizationID] [varchar](64) NULL,				                    	-- 生产机构ID
	[VariableName] [char](30) NULL,												-- 变量名称（变量名称命名不可以数字开头，是为开发其他系统通用性考虑，以及在前台配置标签时ID的命名约束）
	[VariableDescription] [varchar](max) NULL,									-- 变量描述
	[Record] [bit] NULL,                                                        -- 是否记录主机停机信息
	[ValidValues] [bit] NULL,													-- 有效值（比如点号采集值为0时标识主机停机，则此处填写0）
	[Remarks] [nvarchar](max) NULL,							                    -- 备注
	[KeyID] [uniqueidentifier] NULL							                    -- 连从机表的Key_id
)
GO

CREATE TABLE [dbo].[SlaveMachinedescription](								    -- DCS从机描述
    [ID] [uniqueidentifier]  NOT NULL,                                          -- 主键ID
	[OrganizationID] [varchar](64) NULL,				                    	-- 生产机构ID
	[KeyID] [uniqueidentifier] NULL							                    -- 主机Key_id
	[VariableName] [char](30) NULL,												-- 变量名称（变量名称命名不可以数字开头，是为开发其他系统通用性考虑，以及在前台配置标签时ID的命名约束）
	[VariableDescription] [varchar](max) NULL,									-- 变量描述
	[ValidValues] [bit] NULL,													-- 有效值（比如点号采集值为0时标识主机停机，则此处填写0）
    [TimeDelay] [int] DEFAULT(5) NOT NULL,										-- 允许时间
	[Remarks] [nvarchar](max) NULL							                    -- 备注
)
GO
