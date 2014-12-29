/*
	交接班记录及其相关表
	所有表都建立在管理数据库中
*/

CREATE TABLE [dbo].[shift_WorkingTeamShiftLog](									-- 交接班记录
	[WorkingTeamShiftLogID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,		-- 交接班记录ID
	[OrganizationID] [varchar](64) NULL,										-- 生产机构ID
	[ShiftDate] [datetime] NULL,												-- 交接班时间
	[Shifts] [nchar](2) NULL,													-- 班次（1：甲班，2：乙班，3：丙班）
	[WorkingTeam] [nchar](2) NULL,												-- 班组（1：A组，2：B组，3：C组，4：D组）
	[ChargeManID] [nvarchar](50) NULL,											-- 负责人ID
	[PerformToObjectives] [nvarchar](200) NULL,									-- 本班生产计划完成情况
	[ProblemsAndSettlements] [nvarchar](200) NULL,								-- 本班出现的问题及处理情况
	[EquipmentSituation] [nvarchar](200) NULL,									-- 本班设备运行情况
	[AdvicesToNextShift] [nvarchar](200) NULL									-- 下班工作重点及建议
)
GO

CREATE TABLE [dbo].[shift_OperatorsLog](										-- 操作员记录
	[WorkingTeamShiftLogID] [uniqueidentifier] NULL,							-- 所属交接班记录ID
	[OrganizationID] [varchar](64) NULL,										-- DCS系统组织机构ID
	[WorkingSectionName] [nvarchar](50) NULL,									-- 工段名称
	[StaffID] [nvarchar](50) NULL												-- 操作员ID
)
GO

CREATE TABLE [dbo].[system_MachineHaltReason](									-- 停机原因
	[MachineHaltReasonID] [varchar](20) NOT NULL,								-- 停机原因ID（层次码，E开头，2位一层，如E0101）
	[ReasonText] [nvarchar](100) NULL,											-- 停机原因描述
	[Remarks] [nvarchar](100) NULL												-- 备注
)
GO

CREATE TABLE [dbo].[system_WorkingSection](										-- 工段信息
	[WorkingSectionID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,			-- 工段信息ID
	[OrganizationID] [varchar](64) NULL,										-- 生产机构ID
	[CreatedDate] [Datetime] NULL,												-- 创建日期
	[Name] [nvarchar](50) NULL,													-- 工段名称
	[Enabled] [bit] DEFAULT(1) NOT NULL,										-- 启用
	[Remarks] [nvarchar](100) NULL,												-- 备注
)

CREATE TABLE [dbo].[system_WorkingTeam](										-- 班组（由生产机构ID与班组名称唯一确定一条记录）
	[OrganizationID] [varchar](64) NULL,										-- 生产机构ID
	[Name] [nchar](2) NULL,														-- 班组名称
	[ChargeManID] [nvarchar](50) NULL,											-- 负责人ID
	[Remarks] [nvarchar](100) NULL												-- 备注
)
GO

CREATE TABLE [dbo].[system_StaffInfo](											-- 员工信息
	[StaffInfoID] [nvarchar](50) NOT NULL,										-- 员工信息ID
	[OrganizationID] [varchar](64) NULL,										-- 生产机构ID（分厂）
	[WorkingTeamName] [nchar](2) NULL,											-- 所属班组名称
	[Name] [nvarchar](20) NULL,													-- 姓名
	[Sex] [bit] NULL,															-- 性别
	[PhoneNumber] [nvarchar](50) NULL,											-- 联系电话 
	[Enabled] [bit] NULL														---------------ml-----------------
)
GO

CREATE TABLE [dbo].[shift_DCSWarningLog](										-- DCS报警记录
	[DCSWarningLogID] [uniqueidentifier] DEFAULT(newid()) NULL,					-- DCS报警记录ID
	[OrganizationID] [varchar](64) NULL,										-- 生产机构ID
	[WorkingTeamShiftLogID] [uniqueidentifier] NULL,							-- 所属交接班记录ID
	[Label] [nvarchar](30) NULL,												-- 报警标签
	[StartingTime] [datetime] NULL,												-- 起始时间
	[EndingTime] [datetime] NULL,												-- 结束时间
	[Message] [nvarchar](50) NULL,												-- 报警信息
	[HandleInformation] [nvarchar](200) NULL,									-- 处理情况
	[Remarks] [nvarchar](100) NULL												-- 备注
)
GO

CREATE TABLE [dbo].[shift_MachineHaltLog](										-- 停机记录
	[MachineHaltLogID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,			-- 停机记录ID
	[OrganizationID] [varchar](64) NULL,										-- 生产机构ID
	[WorkingTeamShiftLogID] [uniqueidentifier] NULL,							-- 所属交接班记录ID
	[Label] [nvarchar](30) NOT NULL,											-- 停机标签
	[EquipmentName] [nvarchar](50) NULL,										-- 停机设备名称
	[HaltTime] [datetime] NULL,													-- 停机时间
	[RecoverTime] [datetime] NULL,												-- 恢复时间
	[ReasonID] [char](8) NULL,													-- 停机具体原因ID
	[ClassifyReasonText] [nvarchar](200) NULL,									-- 停机原因（三级停机内容均填写，逗号隔开）
	[Remarks] [nvarchar](100) NULL												-- 备注
)
GO

CREATE TABLE [dbo].[shift_SlaverHaltDelayAlarmLog](								-- 从机拖延停机记录
	[MachineHaltLogID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,			-- 停机记录ID
	[OrganizationID] [varchar](64) NULL,										-- 生产机构ID
	[WorkingTeamShiftLogID] [uniqueidentifier] NULL,							-- 所属交接班记录ID
	[Label] [nvarchar](30) NOT NULL,											-- 从机标签
	[EquipmentName] [nvarchar](50) NULL,										-- 从机设备名称
	[MasterLabel] [nvarchar](30) NOT NULL,									    -- 主机标签
	[MasterEquipmentName] [nvarchar](50) NULL,									-- 主机设备名称
	[MasterHaltTime] [datetime] NULL,										    -- 主机停机时刻
	[WarningTime] [datetime] NULL,												-- 从机拖延报警时刻
    [detail] [nvarchar](200) NULL,											    -- 从机拖延停机情况描述
	[ReasonText] [nvarchar](200) NULL											-- 情况说明（由当班人员在交接班记录中填写）
)
GO

CREATE TABLE [dbo].[shift_EnergyConsumptionAlarmLog](							-- 能耗报警记录
	[EnergyConsumptionAlarmLogID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,	-- 能耗报警记录ID
	[OrganizationID] [varchar](64) NULL,										-- 生产机构ID
	[WorkingTeamShiftLogID] [uniqueidentifier] NULL,							-- 所属交接班记录ID	
	[EnergyConsumptionType] [nchar](4) NULL,									-- 报警类别（1：电耗超标，2：功率超标，2：煤耗超标）
	[StartTime] [datetime] NULL,												-- 超标起始时间
	[TimeSpan] [nvarchar](100) NULL,											-- 超标结束时间
	[Name] [nvarchar](20) NULL,													-- 参数名称
	[StandardValue] [decimal](18, 4) NULL,										-- 标准值
	[ActualValue] [decimal](18, 4) NULL,										-- 实际值
	[Superscale] [decimal](18, 4) NULL,											-- 超调量
	[Reason] [nvarchar](200) NULL												-- 报警原因
)
GO

CREATE TABLE [dbo].[system_ShiftDescription](									-- 班次描述表
	[ShiftDescriptionID] [uniqueidentifier] DEFAULT(newid()) NULL,				-- 班次描述表ID
	[OrganizationID] [varchar](64) NULL,										-- 生产机构ID
	[Shifts] [nchar](2) NULL,													-- 班次（1：甲班，2：乙班，3：丙班）
	[StartTime] [char](10) NULL,												-- 起始时间
	[EndTime] [char](10) NULL,													-- 终止时间
	[Description] [nvarchar](10) NULL,											-- 描述（中文）
	[CreatedDate] [datetime] NULL												-- 创建时间
)
GO