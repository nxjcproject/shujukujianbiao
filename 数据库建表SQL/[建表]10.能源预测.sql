CREATE TABLE [dbo].[forecast_ProductionLineEnergyConsumptionTemplate](     		-- �������ܺ�Ԥ����ģ��
	[OrganizationID] [varchar](64) NOT NULL,
	[Name] [nchar](50) NULL,													-- ������������
	[Type] nchar(50) NOT NULL,													-- ���������ͣ�ˮ��ĥ������
	[IdSort] int NOT NULL,														-- ��������� ID
	[QuotasID] [varchar](64) NOT NULL,											-- ������ʹ�õ���ID
	[IndicatorName] [nchar](50) NOT NULL,										-- ָ����Ŀ����
	[January] decimal(18, 2)  DEFAULT (0) NULL,
	[February] decimal(18, 2)  DEFAULT (0) NULL,
	[March] decimal(18, 2)  DEFAULT (0) NULL,
	[April] decimal(18, 2)  DEFAULT (0) NULL,
	[May] decimal(18, 2)  DEFAULT (0) NULL,
	[June] decimal(18, 2)  DEFAULT (0) NULL,
	[July] decimal(18, 2)  DEFAULT (0) NULL,
	[August] decimal(18, 2)  DEFAULT (0) NULL,
	[September] decimal(18, 2)  DEFAULT (0) NULL,
	[October] decimal(18, 2)  DEFAULT (0) NULL,
	[November] decimal(18, 2)  DEFAULT (0) NULL,
	[December] decimal(18, 2)  DEFAULT (0) NULL,
	[Totals] decimal(18, 2)  DEFAULT (0) NULL,									-- ���
	[Remarks] [nvarchar](256) NULL
)
GO

CREATE TABLE [dbo].[forecast_ProductionLineEnergyConsumptionReference](			-- �������ܺ�Ԥ��ο�ֵ
	[OrganizationID] [varchar](64) NOT NULL,
	[QuotasID] [varchar](64) NOT NULL,											-- ������ʹ�õ���ID
	[January] decimal(18, 2)  DEFAULT (0) NULL,
	[February] decimal(18, 2)  DEFAULT (0) NULL,
	[March] decimal(18, 2)  DEFAULT (0) NULL,
	[April] decimal(18, 2)  DEFAULT (0) NULL,
	[May] decimal(18, 2)  DEFAULT (0) NULL,
	[June] decimal(18, 2)  DEFAULT (0) NULL,
	[July] decimal(18, 2)  DEFAULT (0) NULL,
	[August] decimal(18, 2)  DEFAULT (0) NULL,
	[September] decimal(18, 2)  DEFAULT (0) NULL,
	[October] decimal(18, 2)  DEFAULT (0) NULL,
	[November] decimal(18, 2)  DEFAULT (0) NULL,
	[December] decimal(18, 2)  DEFAULT (0) NULL,
	[Totals] decimal(18, 2)  DEFAULT (0) NULL,									-- ���
	[Remarks] [nvarchar](256) NULL
)
GO