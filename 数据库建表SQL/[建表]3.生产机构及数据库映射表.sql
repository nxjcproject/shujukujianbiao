/*
	��֯���������ݿ���ձ�
	���б������ڹ������ݿ���
*/
CREATE TABLE [dbo].[system_Organization](										-- ��֯�����ṹ��
	[OrganizationID] [varchar](64) DEFAULT (newid()) NOT NULL,					-- ���ɻ���ID��GUID�Զ����ɣ�
	[LevelCode] [varchar](20) NULL,												-- �������������
	[DatabaseID] [uniqueidentifier] NULL,										-- ���ݿ�ID
	[Name] [nvarchar](50) NULL,													-- ������������
	[Type] [nvarchar](50) NULL,													-- ����������
	[CoefficientAltitude] [int] DEFAULT(1) NULL,								-- ���θ߶�����ϵ��
	[RawToClinkerCoff] [decimal](18, 4) NULL,									-- ��/��������ϵ��
	[ENABLED] [bit] NULL,														-- �Ƿ���Ч
	[LegalRepresentative] [nvarchar](30) NULL,									-- ���˴���
	[Address] [nvarchar](max) NULL,												-- ����������ַ
	[Contacts] [nchar](10) NULL,												-- ��ϵ��
	[ContactInfo] [varchar](max) NULL,											-- ��ϵ����Ϣ
	[CommissioningDate] [datetime] NULL,										-- Ͷ������	
	[Products] [nvarchar](max) NULL,											-- ��Ҫ��Ʒ
	[Remarks] [nvarchar](max) NULL												-- ��ע
)
GO

CREATE TABLE [dbo].[system_Database](											-- ���ݿ���ձ�
	[DatabaseID] [uniqueidentifier] NULL,										-- ���ݿ�ID
	[ManagementDatabase] [varchar](max) NULL,									-- �������ݿ�
	[DCSProcessDatabase] [varchar](max) NULL,									-- DCS�������ݿ�
	[MeterDatabase] [varchar](max) NULL											-- ������ݿ�
)
GO