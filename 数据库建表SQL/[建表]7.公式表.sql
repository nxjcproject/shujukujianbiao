/*
	��ʽ������ر�
	���б������ڹ������ݿ���
*/
CREATE TABLE [dbo].[tz_Formula](												-- ��ʽ�����
	[KeyID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,						-- ��ʽ�����ID
	[OrganizationID] [varchar](64) NULL,										-- ������֯����ID���������ֳ���ϵͳ���Զ��壺�����ߣ�
	[Name] [nvarchar](50) NULL,													-- ��ʽ������
	[CreatedDate] [datetime] NULL,												-- ��ʽ�鴴������
	[AlarmPeriod] [int] DEFAULT(0) NULL,										-- �������ڣ����ӣ�
	[Type] [int] DEFAULT(0) NULL,												-- ��ʽ���ͣ�1��������2��ϵͳ��3���Զ��壩
	[ENABLE] [bit] DEFAULT(1) NULL,												-- ���ñ�־
	[State] [int] DEFAULT(0) NULL												-- ��ʽ��״̬
)
GO

CREATE TABLE [dbo].[formula_FormulaDetail](										-- ��ʽ������������ϵͳ���Զ��壩
	[ID] [uniqueidentifier] DEFAULT(newid()) NULL,								-- ΨһID����������ͬ����
	[VariableId] [varchar](64) NULL,											-- ��ʽID������KPIƽ���Լ�Ԥ����ERP�ӿڣ�
	[KeyID] [uniqueidentifier] NULL,											-- ��ʽ����ID
	[LevelCode] [nvarchar](50) NOT NULL,										-- �����
	[ProcessName] [nvarchar](50) NULL,											-- ��������
	[Formula] [nvarchar](400) NULL,												-- ��ʽ
	[Denominator] [nvarchar](MAX) NULL,											-- ���(��ĸ��ʽ)
	[Required] [bit] DEFAULT(0) NULL,											-- ��ѡ
	[AlarmType] [int] DEFAULT(0) NULL,											-- �������ͣ�1�����ܺģ�  2�������ʣ�  3�����ܺĺ͹���
	[EnergyAlarmValue] [decimal](8, 2) NULL,									-- ��ı���ֵ
	[PowerAlarmValue] [decimal](8, 2) NULL,										-- ���ʱ���ֵ
	[RelativeParameters] [nvarchar](MAX) NULL,									-- ��ز�����DCS:��ǩ��[,DCS:��ǩ��]��
	[AlarmStatus] [bit] DEFAULT(0) NOT NULL,									-- ����״̬��������ʲô������������λ��1�����ֶ�Ϊ�ܺļ�ػ����ʵʱ��������
	[Remarks] [nvarchar](MAX) NULL												-- ��ע
)
GO


CREATE TABLE [dbo].[formula_ConsumptionAlarmSetting](							-- �ܺı�������
	[KeyID] [uniqueidentifier] NULL,											-- ��ı�����ʽ����ID
	[CoalAlarmValue] [decimal](8, 2) NULL,										-- ú�ı���ֵ
	[RelativeParameters] [nvarchar](MAX) NULL                                   -- ú�ı�����ز�����DCS:��ǩ��[,DCS:��ǩ��]��
)
GO

CREATE TABLE [dbo].[formula_Log](
	[KeyID] [uniqueidentifier] NOT NULL,										-- ��ʽ��ID
	[EffectiveDate] [datetime] NULL,											-- ����ʱ��
	[ExpirationDate] [datetime] NULL											-- ͣ��ʱ��
)
GO