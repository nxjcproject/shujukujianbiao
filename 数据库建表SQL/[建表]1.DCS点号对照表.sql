/*
	�����ڹ������ݿ���
*/

CREATE TABLE [dbo].[DCSContrast](												-- DCS��Ŷ��ձ�
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,                          -- ����ID
	[OrganizationID] [varchar](64) NULL,				                    	-- ��������ID
	[Process] [char](30) NULL,													-- �������ڣ����ϡ�ˮ��ĥ�����ȷ��磩  ���ŵϱ�����
	[VariableName] [char](30) NULL,												-- �������ƣ����������������������ֿ�ͷ����Ϊ��������ϵͳͨ���Կ��ǣ��Լ���ǰ̨���ñ�ǩʱID������Լ����
	[VariableDescription] [varchar](max) NULL,									-- ��������
	[IpAddress] [varchar](max) NULL,											-- OPC�ɼ���ַ
	[OPCName] [varchar](max) NULL,												-- OPC����
	[Item] [char](30) NULL,														-- OPC��
	[TableName] [char](30) NULL,												-- ���ݴ洢�����ƣ��˴�����д������ϵͳ�Զ�����History/Realtimeǰ׺��
	[FieldName] [char](30) NULL,												-- ���ݴ洢�ֶ�����
	[DataType] [char](30) NULL,													-- ���ݴ洢���ͣ�ע�⾫�ȵ���ƣ�
	[DataTypeStandard] [char](30) NULL,											-- �������ͱ�׼��real  int  bit  string��(DataType ����������ݿ��ֶ��е����ͣ�DataTypeStandard ����������ݵ����࣬ע������)
	[ViewName] [char](30) NULL,													-- ��������
	[IsCumulant] [bit] DEFAULT(0) NOT NULL,										-- �Ƿ����ۼ����������ɣ�ȥ��Total����ΪIsCumulant, Ĭ��Ϊ0��
	[CumulantName] [char](4) NULL,												-- �ۻ������ƣ�S501��ע����5��ͷ���������ۻ���������ۻ�����S001��ʼ������
	[MachineHour] DEFAULT(0) [bit] NOT NULL,									-- �洢�Ƿ���̨ʱ����,�ǿգ�Ĭ��ֵΪfalse
	[ValidValues] [bit] NULL,													-- �洢̨ʱ������Чֵ
	[EquipmentName] [char](30) NULL,											-- �豸���ƣ������ǩ��Ӧ�豸����˴���д�豸���ƣ� ����������
	[MasterOrSlave] [int] NULL,									                -- �Ƿ������ӻ���1��������;0����ӻ�;����ֵ������������Ч��
	[HaltID] [uniqueidentifier] NULL                                            -- ���ӻ���ID���롰DCS��������������DCS�ӻ����������ڵ�ID�����Ӧ
)
GO

CREATE TABLE [dbo].[EnergyConsumptionContrast](									-- �ܺļ�ػ�����ձ�
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,                          -- ����ID
	[OrganizationID] [varchar](64) NULL,				                    	-- ��������ID
	[type] [int] NULL,															-- ��������
	[ViewName] [char](30) NULL,													-- ��������
	[VariableName] [char](30) NULL,												-- �������ƣ����������������������ֿ�ͷ����Ϊ��������ϵͳͨ���Կ��ǣ��Լ���ǰ̨���ñ�ǩʱID������Լ����
	[VariableDescription] [varchar](max) NULL,									-- ��������
	[TableName] [char](30) NULL,												-- ���ݴ洢�����ƣ��˴�����д������ϵͳ�Զ�����History/Realtimeǰ׺��
	[FieldName] [char](30) NULL,												-- ���ݴ洢�ֶ�����
	[Item] [char](30) NULL,														-- ��ǩ/�����/��ʽ
	[value] [decimal](18, 2) NULL,												-- ֵ
)
GO