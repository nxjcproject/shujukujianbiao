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

-- �������������á����µ���Ƽ�ģ����ƣ������е� �������ܺı����������ã�
/*
CREATE TABLE [dbo].[system_ElectricityConsumptionAlarmParameterSetting](		-- ��ı�����������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[OrganizationID] [varchar](64) NULL,										-- ��������ID
	[LevelCode] [char](20) NULL,                            					-- �����
	[Name] [char](100) NULL,                                					-- ��������
	[StandardValue] [decimal](18, 4) NULL,                  					-- ��׼ֵ
	[AlarmValue] [decimal](18, 4) NULL,                     					-- ����ֵ
    [Remarks] [nvarchar](max) NULL												-- ��ע
)
GO

CREATE TABLE [dbo].[system_CoalConsumptionAlarmParameterSetting](  				-- ú�ı�����������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[OrganizationID] [varchar](64) NULL,										-- ��������ID
	[Name] [char](20) NULL,                                 					-- ���ƣ��˱�ֻ��һ�У�name��д������ú�ġ���
	[StandardValue] [decimal](18, 4) NULL,                  					-- ��׼ֵ
	[AlarmValue] [decimal](18, 4) NULL,                     					-- ����ֵ
    [Remarks] [nvarchar](max) NULL												-- ��ע
)
GO
*/

--CREATE TABLE [dbo].[system_AlarmCycle](                     					-- �ܺı���������������
--    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
--	[OrganizationID] [varchar](64) NULL,										-- ��������ID
--	[CycleCode] [int] NULL,                                 					-- ��ͬ���ڵı��
--	[TimeSpan] [int] NULL                                   					-- ����ʱ�䳤��
--)
--GO

CREATE TABLE [dbo].[system_KPI](												-- KPI�Ա�ָ��ά����
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,							-- ����ID
	[StandardCategory] [char](20) NULL,                     					-- ��׼����
	[Clinker_ComparableComprehensiveStandardCoalConsumption] [decimal](8, 2) NULL,-- �ɱ������ۺ�ú���޶�ֵ
	[Clinker_ComparableComprehensiveElectricityConsumption] [decimal](8, 2) NULL, -- �ɱ������ۺϵ���޶�ֵ
	[Cement_ComparableComprehensiveElectricityConsumption]  [decimal](8, 2) NULL, -- �ɱ�ˮ���ۺϵ���޶�ֵ
	[Clinker_ComparableComprehensiveEnergyConsumption]  [decimal](8, 2) NULL,   -- �ɱ������ۺ��ܺ��޶�ֵ
	[Cement_ComparableComprehensiveEnergyConsumption]  [decimal](8, 2) NULL,    -- �ɱ�ˮ���ۺ��ܺ��޶�ֵ
	[RawBatch_ElectricityConsumption] [decimal](8, 2) NULL,                     -- �����Ʊ����ε��
	[Clinker_CoalConsumption] [decimal](8, 2) NULL,                             -- �����ճɹ���ú��
	[Clinker_ElectricityConsumption] [decimal](8, 2) NULL,                      -- �����ճɹ��ε��
	[Cement_ElectricityConsumption] [decimal](8, 2) NULL                        -- ˮ���Ʊ����ε��
)
GO

CREATE TABLE [dbo].[system_CementTypesAndConvertCoefficient](					-- ˮ��Ʒ�ּ��ۺ�ϵ��
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[CementID] [int] NULL,                                  					-- ˮ��Ʒ��ID
	[CementTypes] [char](30) NULL,                          					-- ˮ��Ʒ��
	[ConvertCoefficient] [decimal](6, 4) DEFAULT(1) NOT NULL,             		-- �ۺ�ϵ��
	[Intensity] [decimal](8, 1) DEFAULT(1) NOT NULL,							-- ˮ��ǿ��
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
    [OrganizationID] [varchar](64) NULL,               							-- ��������ID
	[PeakElectrovalence][decimal](6, 4) NULL,               					-- ���ڵ��
	[ValleyElectrovalence] [decimal](6, 4) NULL,            					-- ���ڵ��
	[FlatElectrovalence] [decimal](6, 4) NULL,              					-- ƽ�ڵ��
)
GO

CREATE TABLE [dbo].[system_PVF_Detail](											-- ���ƽ�����
	[ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
    [KeyID] [uniqueidentifier] NULL,											-- ����ID
	[StartTime] [char](10) NULL,                            					-- ��ʼʱ��
	[EndTime] [char](10) NULL,                              					-- ��ֹʱ��
	[Type][char](10) NULL                                 						-- ���� ������ ������ ��ƽ�ڣ�
)
GO

CREATE TABLE [dbo].[system_PVF](												-- ����б�
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
    [OrganizationID] [varchar](64) NULL,                                		-- ��������ID
	[StartUsing] [date] NULL,                            						-- ����ʱ��
	[EndUsing] [date] NULL,                              						-- ͣ��ʱ��
	[Flag] [bit] NULL,                                       					-- ���ñ�־
	[KeyID] [uniqueidentifier] NULL												-- ����ID
)
GO

	
CREATE TABLE [dbo].[system_MasterMachineDescription](							-- DCS��������
    [ID] [uniqueidentifier] PRIMARY KEY DEFAULT(newid()) NOT NULL,              -- ����ID
	[OrganizationID] [varchar](64) NULL,				                    	-- ��������ID
	[VariableName] [char](30) NULL,												-- �������ƣ����������������������ֿ�ͷ����Ϊ��������ϵͳͨ���Կ��ǣ��Լ���ǰ̨���ñ�ǩʱID������Լ����
	[VariableDescription] [varchar](max) NULL,									-- ��������
	[DataBaseName] [varchar](64) NULL,											-- �������ݿ���
	[TableName] [varchar](64) NULL,												-- ��������
	[Record] [bit] NULL,                                                        -- �Ƿ��¼����ͣ����Ϣ
	[ValidValues] [bit] NULL,													-- ��Чֵ�������Ųɼ�ֵΪ0ʱ��ʶ����ͣ������˴���д0��
	[Remarks] [nvarchar](max) NULL,							                    -- ��ע
	[KeyID] [uniqueidentifier] NULL							                    -- ���ӻ����Key_id
)
GO

CREATE TABLE [dbo].[system_SlaveMachineDescription](							-- DCS�ӻ�����
    [ID] [uniqueidentifier] PRIMARY KEY DEFAULT(newid()) NOT NULL,              -- ����ID
	[OrganizationID] [varchar](64) NULL,				                    	-- ��������ID
	[KeyID] [uniqueidentifier] NULL,						                    -- ����Key_id
	[VariableName] [char](30) NULL,												-- �������ƣ����������������������ֿ�ͷ����Ϊ��������ϵͳͨ���Կ��ǣ��Լ���ǰ̨���ñ�ǩʱID������Լ����
	[DataBaseName] [varchar](64) NULL,											-- �������ݿ���
	[TableName] [varchar](64) NULL,												-- ��������
	[VariableDescription] [varchar](max) NULL,									-- ��������
	[ValidValues] [bit] NULL,													-- ��Чֵ�������Ųɼ�ֵΪ0ʱ��ʶ����ͣ������˴���д0��
    [TimeDelay] [int] DEFAULT(5) NOT NULL,										-- ����ʱ��
	[Remarks] [nvarchar](max) NULL							                    -- ��ע
)
GO


CREATE TABLE [dbo].[system_StatusNet](         									-- ϵͳ״̬��Ϣ��
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL primary key , 			-- ����ID
    [Company][varchar](64) NULL,               									-- �ֹ�˾��֯����ID
	[BranchFactory][varchar](64) NULL,         									-- �ֳ���֯����ID
	[IP][varchar](64) NULL,                    									-- ϵͳ����IP
	[Servers][varchar](32) NULL,               									-- ϵͳ����
	[Status][varchar](32) NULL,                									-- ϵͳ״̬
	[Timestamp][Datetime] null,                									-- ʱ���
	[Remark][varchar](64) NULL                 									-- ��ע
)
GO	


CREATE TABLE [dbo].[system_StatusLog](                   						-- ϵͳ״̬��Ϣ��־��
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL primary key,   			-- ����ID
    [vDate][Datetime] NULL,                              						-- ����ʱ��
	[IP][varchar](64) NULL,                              						-- ϵͳ����IP
    [TypeEvents][varchar](32) NULL,                      						-- �¼�����
	[NameEvents][varchar](32) NULL,                      						-- �¼�����
)
GO	