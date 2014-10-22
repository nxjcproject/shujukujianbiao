/*
	��ʽ������ر�
	���б������ڹ������ݿ���
*/
CREATE TABLE [dbo].[tz_Formula](												-- ��ʽ�����
	[KeyID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,						-- ��ʽ�����ID
	[OrganizationID] [uniqueidentifier] NULL,									-- ������֯����ID���������ֳ���ϵͳ���Զ��壺�����ߣ�
	[Name] [nvarchar](50) NULL,													-- ��ʽ������
	[CreatedDate] [datetime] NULL,												-- ��ʽ�鴴������
	[Type] [int] DEFAULT(0) NULL,												-- ��ʽ���ͣ�1��������2��ϵͳ��3���Զ��壩
	[State] [int] DEFAULT(0) NULL												-- ��ʽ��״̬
)
GO

CREATE TABLE [dbo].[formula_FormulaDetail](										-- ��ʽ������������ϵͳ���Զ��壩
	[KeyID] [uniqueidentifier] NULL,											-- ��ʽ����ID
	[LevelCode] [nvarchar](50) NOT NULL,										-- �����
	[Name] [nvarchar](50) NULL,													-- ��������
	[Formula] [nvarchar](400) NULL,												-- ��ʽ
	[Remarks] [nvarchar](MAX) NULL												-- ��ע
)
GO

CREATE TABLE [dbo].[formula_ElectricityConsumptionAlarmSetting](				-- ��ı�������
	[KeyID] [uniqueidentifier] NULL,											-- ��ı�����ʽ����ID
	[LevelCode] [nvarchar](50) NOT NULL,										-- ����루һ���������ɱ䣩
	[Name] [nvarchar](50) NULL,													-- �������ƣ�һ���������ɱ䣩
	[Formula] [nvarchar](400) NULL,												-- ��ʽ
	[StandardValue] [real] NULL,												-- ��׼ֵ
	[AlarmValue] [real] NULL,													-- ����ֵ
	[RelativeParameters] [nvarchar](MAX) NULL,									-- ��ز�����DCS:��ǩ��[,DCS:��ǩ��]��
	[Remarks] [nvarchar](MAX) NULL												-- ��ע
)
GO

CREATE TABLE [dbo].[formula_Log](
	[KeyID] [uniqueidentifier] NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[ExpirationDate] [datetime] NULL,
)
GO