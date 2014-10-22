/*
	�������ݱ�
	���б������ڹ������ݿ���
*/
CREATE TABLE [dbo].[system_ReportDescription](									-- ������������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,							-- ����ID
	[Name] [char](100) NULL,                                					-- ����������
	[StoreName] [char](100) NULL,                           					-- ����洢����
	[Remarks] [nvarchar](max) NULL												-- ��ע
)
GO

CREATE TABLE [dbo].[system_ElectricityConsumptionAlarmParameterSetting](		-- ��ı�����������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[OrganizationID] [uniqueidentifier] NULL,									-- ��������ID
	[LevelCode] [char](20) NULL,                            					-- �����
	[Name] [char](100) NULL,                                					-- ��������
	[StandardValue] [decimal](18, 4) NULL,                  					-- ��׼ֵ
	[AlarmValue] [decimal](18, 4) NULL,                     					-- ����ֵ
    [Remarks] [nvarchar](max) NULL												-- ��ע
)
GO

CREATE TABLE [dbo].[system_CoalConsumptionAlarmParameterSetting](  				-- ú�ı�����������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[OrganizationID] [uniqueidentifier] NULL,									-- ��������ID
	[Name] [char](20) NULL,                                 					-- ���ƣ��˱�ֻ��һ�У�name��д������ú�ġ���
	[StandardValue] [decimal](18, 4) NULL,                  					-- ��׼ֵ
	[AlarmValue] [decimal](18, 4) NULL,                     					-- ����ֵ
    [Remarks] [nvarchar](max) NULL												-- ��ע
)
GO

CREATE TABLE [dbo].[system_AlarmCycle](                     					-- �ܺı���������������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[OrganizationID] [uniqueidentifier] NULL,									-- ��������ID
	[CycleCode] [int] NULL,                                 					-- ��ͬ���ڵı��
	[TimeSpan] [int] NULL                                   					-- ����ʱ�䳤��
)
GO

CREATE TABLE [dbo].[system_KPI](													-- KPI�Ա�ָ��ά����
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,								-- ����ID
	[StandardCategory] [char](20) NULL,                     						-- ��׼����
	[Clinker_ComparableComprehensiveStandardCoalConsumption] [decimal](18, 4) NULL,	-- �ɱ������ۺ�ú���޶�ֵ
	[Clinker_ComparableComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 	-- �ɱ������ۺϵ���޶�ֵ
	[Cement_ComparableComprehensiveElectricityConsumption]  [decimal](18, 4) NULL, 	-- �ɱ�ˮ���ۺϵ���޶�ֵ
	[Clinker_ComparableComprehensiveEnergyConsumption]  [decimal](18, 4) NULL,     	-- �ɱ������ۺ��ܺ��޶�ֵ
	[Cement_ComparableComprehensiveEnergyConsumption]  [decimal](18, 4) NULL,      	-- �ɱ�ˮ���ۺ��ܺ��޶�ֵ
	[RawBatch_ElectricityConsumption] [decimal](18, 4) NULL,                       	-- �����Ʊ����ε��
	[Clinker_CoalConsumption] [decimal](18, 4) NULL,                               	-- �����ճɹ���ú��
	[Clinker_ElectricityConsumption] [decimal](18, 4) NULL,                        	-- �����ճɹ��ε��
	[Cement_ElectricityConsumption] [decimal](18, 4) NULL                         	-- ˮ���Ʊ����ε��
)
GO

CREATE TABLE [dbo].[system_CementTypesAndConvertCoefficient](					-- ˮ��Ʒ�ּ��ۺ�ϵ��
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[CementID] [int] NULL,                                  					-- ˮ��Ʒ��ID
	[CementTypes] [char](30) NULL,                          					-- ˮ��Ʒ��
	[ConvertCoefficient]  [decimal](6, 4) NULL,             					-- �ۺ�ϵ��
    [Remarks] [nvarchar](max) NULL												-- ��ע
)
GO

CREATE TABLE [dbo].[system_EnergyConversionConversionCoefficient](				-- ��Դ����ϵ��
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[Energy] [char](20) NULL,                               					-- ��Դ����
	[Qnet] [int] NULL,                                      					-- �ոɻ���λ������
	[ConversionCoefficient] [decimal](6, 4) NULL            					-- �۱�ϵ��
)
GO

CREATE TABLE [dbo].[system_PeakValleyFlatElectrovalence](						-- ���ƽ��ʱ��۱�
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
    [OrganizationID] [uniqueidentifier] NULL,               					-- ��������ID
	[PeakElectrovalence][decimal](6, 4) NULL,               					-- ���ڵ��
	[ValleyElectrovalence] [decimal](6, 4) NULL,            					-- ���ڵ��
	[FlatElectrovalence] [decimal](6, 4) NULL,              					-- ƽ�ڵ��
)
GO

CREATE TABLE [dbo].[system_PeakValleyFlat](										-- ���ƽ�����
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
    [OrganizationID] [uniqueidentifier] NULL,                                	-- ��������ID
	[StartTime] [char](10) NULL,                            					-- ��ʼʱ��
	[EndTime] [char](10) NULL,                              					-- ��ֹʱ��
	[Type][char](10) NULL,                                  					-- ���� ������ ������ ��ƽ�ڣ�
	[Flag] [bit] NULL                                       					-- ���ñ�־
)
GO