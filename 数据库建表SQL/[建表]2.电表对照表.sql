/*
	�����ڷֳ�����ĵ�����ݿ���
	�ɼ����ĵ����ֵ����Ϊ bigint
	�ɼ����ĵ�����ݴ洢�ڱ���Ϊ Ammeter ���У���History/Realtime��
*/
CREATE TABLE [dbo].[AmmeterContrast](											-- �����ձ�
	[OrganizationID] [uniqueidentifier] NULL,									-- ��������ID
	[AmmeterNumber] [char](30) NULL,											-- �������
	[AmmeterName] [char](30) NULL,												-- �������
	[AmmeterSource] [bit] NULL,													-- �����Դ��0��ʾ���Դ��ڣ�1��ʾ���Ե�������ࣩ
	[ElectricRoom] [varchar](max) NULL,											-- ����������
	[CommunicationProtocol ] [char](30) NULL,									-- ͨѶЭ��
	[AmmeterAddress] [char](30) NULL,											-- ����ַ
	[CommPort] [int] NULL,														-- ͨѶ���ں�
	[CT] [int] NULL,															-- ��ѹ���������
	[PT] [int] NULL,															-- �������������
	[EnabledFlag] [bit] NULL,													-- ������ñ�־λ
	[ElectricEnergyFlag] [bit] NULL,											-- ���������ñ�־λ
	[PowerFlag] [bit] NULL,														-- ���������ñ�־λ
	[BreakdownFlag] [bit] NULL,													-- ���ϱ�־λ
	[ElectricEnergyTableName_e] [char](30) NULL,								-- ����������-���ܴ洢����
	[ElectricEnergyFieldName_e] [char](30) NULL,								-- ����������-���ܴ洢�ֶ���
	[PowerTableName_e] [char](30) NULL,											-- ����������-���ܴ洢����
	[PowerFieldName_e] [char](30) NULL,											-- ����������-���ʴ洢�ֶ���
	[ElectricEnergyFieldName_s] [char](30) NULL,								-- ���ܴ洢�ֶ���
	[PowerFieldName_s] [char](30) NULL,											-- ���ʴ洢�ֶ���
	[IsCumulant] [bit] NULL,													-- �Ƿ����ۼ���
	[CumulantName] [char](4) NULL,												-- �ۻ������ƣ�S001��ע����0��ͷ������DCS�ۻ�����DCS�ۻ�����S501��ʼ������
)
GO
