CREATE TABLE [dbo].[system_TypeDictionary](
	[TYPE_ID] [varchar](64) PRIMARY KEY NOT NULL,
	[TYPE_NAME] [varchar](64) NOT NULL,
	[GROUP_ID] [varchar](64) NOT NULL,
	[DISPLAY_INDEX] [int] DEFAULT (1) NOT NULL,
	[REMARK] [varchar](128) NULL,
	[ENABLED] [bit] DEFAULT (1) NOT NULL
)
GO

CREATE TABLE [dbo].[analyse_KPI_Tags](
	[ANALYSE_DATA_ID] [uniqueidentifier] PRIMARY KEY DEFAULT (newid()) NOT NULL,
	[ANALYSE_DATA_TEXT] [varchar](64) NOT NULL,
	[ANALYSE_DATA_TAG] [varchar](128) NOT NULL,
	[ANALYSE_DATA_TABLE] [varchar](128) NULL,
	[ANALYSE_DATA_CATEGORY] [varchar](64) NOT NULL,
	[PRODUCTION_LINE_TYPE] [varchar](64) NULL,
	[USER_ID] [varchar](64) NULL,
	[ANALYSE_DATA_VALUE] [decimal](14, 4) NULL,
	[ANALYSE_DATA_GROUP] [varchar](64) NULL,
	[DISPLAY_INDEX] [int] DEFAULT (1) NOT NULL,
	[OTHER_INFO] [varchar](256) NULL,
	[ENABLED] [bit] DEFAULT (1) NOT NULL
)
GO

CREATE TABLE [dbo].[system_Organization_Instrumentation](
	[OrganizationID] [varchar](64) DEFAULT (newid()) NOT NULL,
	[LevelCode] [varchar](20) NULL,
	[DatabaseID] [uniqueidentifier] NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[ENABLED] [bit] DEFAULT (1) NULL,
	[LegalRepresentative] [nvarchar](30) NULL,
	[Address] [nvarchar](max) NULL,
	[Contacts] [nchar](10) NULL,
	[ContactInfo] [varchar](max) NULL,
	[CommissioningDate] [datetime] NULL,
	[Products] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL
)
GO

CREATE TABLE [dbo].[tz_Plan](
	[KeyID] [uniqueidentifier] PRIMARY KEY NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[Date] [char](10) NOT NULL,
	[ProductionLineType] [varchar](32) NOT NULL,
	[TableName] [char](100) NULL,
	[CreationDate] [datetime] NULL,
	[Version] [datetime] NULL,
	[ModifierID] [int] NULL,
	[Statue] [int] NULL,
	[Remarks] [nvarchar](max) NULL
)
GO


CREATE TABLE [dbo].[plan_EnergyConsumptionPlan_Template](
	[QuotasID] [varchar](64) PRIMARY KEY NOT NULL,
	[QuotasName] [varchar](64) NOT NULL,
	[DisplayIndex] [int] DEFAULT (1) NOT NULL,
	[ProductionLineType] [varchar](32) NOT NULL
)
GO

CREATE TABLE [dbo].[plan_EnergyConsumptionYearlyPlan](
	[QuotasItemID] [uniqueidentifier] DEFAULT(newid()) NULL,
	[QuotasID] [varchar](64) NOT NULL,
	[QuotasName] [varchar](64) NULL,
	[DisplayIndex] [int] DEFAULT ((1)) NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[ProductionLineType] [varchar](32) NULL,
	[January] [decimal](18, 2) DEFAULT(0) NULL,
	[February] [decimal](18, 2) DEFAULT(0) NULL,
	[March] [decimal](18, 2) DEFAULT(0) NULL,
	[April] [decimal](18, 2) DEFAULT(0) NULL,
	[May] [decimal](18, 2) DEFAULT(0) NULL,
	[June] [decimal](18, 2) DEFAULT(0) NULL,
	[July] [decimal](18, 2) DEFAULT(0) NULL,
	[August] [decimal](18, 2) DEFAULT(0) NULL,
	[September] [decimal](18, 2) DEFAULT(0) NULL,
	[October] [decimal](18, 2) DEFAULT(0) NULL,
	[November] [decimal](18, 2) DEFAULT(0) NULL,
	[December] [decimal](18, 2) DEFAULT(0) NULL,
	[Totals] [decimal](18, 2) DEFAULT(0) NULL,
	[Remarks] [varchar](256) NULL
)
GO



CREATE TABLE [dbo].[tz_Balance](
	[BalanceId] [uniqueidentifier] PRIMARY KEY DEFAULT (newid()) NOT NULL,      --平衡ID
	[BalanceName] [varchar](64) NOT NULL,                                       --平衡名称
	[OrgnizationID] [varchar](64) NOT NULL,                                     --组织机构ID
	[TemplateId] [varchar](64) NULL,                                            --所属模板
	[TemplateType] [varchar](32) NULL,                                          --模板类型(Ammeter表示电力模板，Ouput物料模板)
	[DataBaseName] [varchar](64) NULL,                                          --所属数据库名称
	[DataTableName] [varchar](256) NOT NULL,                                    --所属表名
	[StaticsCycle] [varchar](32) NOT NULL,                                      --统计周期
	[TimeStamp] [varchar](32) NOT NULL,                                         --统计时间戳
	[BalanceStatus] [int] DEFAULT (1) NOT NULL,                                 --平衡状态
	[Editor] [varchar](32) NULL,                                                --编辑人
	[EditTime] [datetime] DEFAULT NOT NULL,                                     --编辑时间
	[Remarks] [varchar](256) NULL                                               --备注
	[FirstWorkingTeam][nchar(2)] NULL,											--甲班对应的班组
	[SecondWorkingTeam][nchar(2)] NULL,											--乙班对应的班组
	[ThirdWorkingTeam][nchar(2)] NULL,											--丙班对应的班组
)
GO


CREATE TABLE [dbo].[balance_Energy](
	[VariableItemId] [uniqueidentifier] PRIMARY KEY DEFAULT (newid()) NOT NULL, --行标识
	[VariableId] [varchar](64) NOT NULL,                                        --变量ID
	[VariableName] [varchar](64) NOT NULL,                                      --变量名称
	[PublicVariableId] [varchar](64) NOT NULL,                                  --公共变量ID，用来为erp提供数据接口，与erp一致或者统一编码规则
	[KeyId] [uniqueidentifier] NULL,                                            --Tz关键字，引领表ID
	[OrgnizationID] [varchar](64) NOT NULL,                                     --组织机构ID
	[ValueType] [varchar](32) NULL,                                             --值类型(分为)（用电量:  煤耗:  电耗:  能耗:）
	[TotalPeakValleyFlat] [decimal](18, 4) default(0) NOT NULL,                 --峰谷平合计
	[MorePeak] [decimal](18, 4) default(0) NOT NULL,                            --尖峰
	[Peak] [decimal](18, 4) default(0) NOT NULL,                                --峰
	[Valley] [decimal](18, 4) default(0) NOT NULL,                              --谷
	[MoreValley] [decimal](18, 4) default(0) NOT NULL,                          --深谷
	[Flat] [decimal](18, 4) default(0) NOT NULL,                                --平
	[First] [decimal](18, 4) default(0) NOT NULL,                               --甲班
	[Second] [decimal](18, 4) default(0) NOT NULL,                              --乙班
	[Third] [decimal](18, 4) default(0) NOT NULL,                               --丙班
	[TotalPeakValleyFlatB] [decimal](18, 4) default(0) NOT NULL,                --峰谷平合计（平衡后）
	[MorePeakB] [decimal](18, 4) default(0) NOT NULL,                           --尖峰（平衡后）
	[PeakB] [decimal](18, 4) default(0) NOT NULL,                               --峰（平衡后）
	[ValleyB] [decimal](18, 4) default(0) NOT NULL,                             --谷（平衡后）
	[MoreValleyB] [decimal](18, 4) default(0) NOT NULL,                         --深谷（平衡后）
	[FlatB] [decimal](18, 4) default(0) NOT NULL,                               --平（平衡后）
	[FirstB] [decimal](18, 4) default(0) NOT NULL,                              --甲班（平衡后）
	[SecondB] [decimal](18, 4) default(0) NOT NULL,                             --乙班（平衡后）
	[ThirdB] [decimal](18, 4) default(0) NOT NULL,                              --丙班（平衡后）
)
GO

-- 调度日志
CREATE TABLE [dbo].[shift_DispatchingLog](
	[DispatchingLogItemId] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[DispatchingDate] [varchar](32) NOT NULL,
	[DispatchtingText] [ntext] NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_shift_DispatchingLog] PRIMARY KEY CLUSTERED 
(
	[DispatchingLogItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO