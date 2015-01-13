/*
	�����ڷֳ�����ĵ�����ݿ���
	�ɼ����ĵ����ֵ����Ϊ bigint
	�ɼ����ĵ�����ݴ洢�ڱ���Ϊ Ammeter ���У���History/Realtime��
*/
CREATE TABLE [dbo].[AmmeterContrast](											-- �����ձ�
	[OrganizationID] [varchar](64) NULL,										-- ��������ID
	[AmmeterNumber] [char](30) NULL,											-- �������
	[AmmeterName] [char](30) NULL,												-- �������
	[AmmeterSource] [bit] NULL,													-- �����Դ��0��ʾ���Դ��ڣ�1��ʾ���Ե�������ࣩ
	[ElectricRoom] [char](40) NULL,												-- ����������
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

CREATE TABLE [dbo].[RealtimeFormulaValue](										-- ʵʱ��ʽ����ֵ�洢��
	[vDate] [datetime] NULL,													-- ʱ��
	[OrganizationID] [varchar](64) NOT NULL,									-- ��֯����ID
	[VariableID] [varchar](64) NULL,											-- ��ʽ����ID
	[LevelCode] [nvarchar](50) NOT NULL,										-- ��ʽ�����
	[FormulaValue] [decimal](18, 4) NULL,										-- ��ʽ�������ֵ
	[DenominatorValue] [decimal](18, 4) NULL									-- ��ĸ����ֵ

) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HistoyFormulaValue](										-- ��ʷ��ʽ����ֵ�洢��
	[vDate] [datetime] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[VariableID] [varchar](64) NULL,
	[LevelCode] [nvarchar](50) NOT NULL,
	[FormulaValue] [decimal](18, 4) NULL,
	[DenominatorValue] [decimal](18, 4) NULL,
 CONSTRAINT [PK_HistoyFormulaValue] PRIMARY KEY CLUSTERED 
(
	[OrganizationID] ASC,
	[LevelCode] ASC,
	[vDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO