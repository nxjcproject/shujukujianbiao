/*
	���������ر�
	���б������ڹ������ݿ���
*/
CREATE TABLE [dbo].[tz_Report](							    					-- ���������
	[OrganizationID] [uniqueidentifier] NULL,									-- ��������ID
	[ReportID] [int] NULL,														-- ��������ID
	[ReportName] [nvarchar](max) NULL,											-- ��������	
	[Date] [char](10) NULL,														-- �������ڣ����������ɴ��ֶ�ȷ���������걨����д2000���±���д2000-01���ձ���д2000-01-01��
	[TableName] [char](100) NULL,						    					-- �������ݴ�ŵ����ݱ�����
	[CreationDate] [datetime] NULL,												-- ��������
	[Version] [datetime] NULL,													-- �汾�ţ����ڴ��������⣩
	[ModifierID] [int] NULL,													-- �޸����û�ID
	[Statue] [int] NULL,														-- ״̬��ʶλ��ö�٣�0���գ�
	[Remarks] [nvarchar](max) NULL,												-- ��ע
	[KeyID] [uniqueidentifier] NULL												-- ���������ID
)
GO

CREATE TABLE [dbo].[report_AmmeterPeakerValleyFlatDay](							-- �����ƽ�ձ�
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
    [KeyID] [uniqueidentifier] NULL,	           	 							-- ���������ID
    [AmmeterNumber] [char](30) default(0) NULL,									-- �������
	[AmmeterName] [char](30) default(0) NULL,	            					-- �������	
	[Peak_Electricity] [decimal](18, 4) default(0) NULL,    					-- ���ڵ���
	[Valley_Electricity] [decimal](18, 4) default(0) NULL,  					-- ���ڵ���
	[Flat_Electricity] [decimal](18, 4) default(0) NULL     					-- ƽ�ڵ���
)
GO

CREATE TABLE [dbo].[report_AmmeterPeakerValleyFlatMonth](						-- �����ƽ�±�
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,     	 					-- ����ID
    [KeyID] [uniqueidentifier] NULL,		                					-- ���������ID
    [AmmeterNumber] [char](30) NULL,				        					-- �������
	[AmmeterName] [char](30) NULL,						    					-- �������	
	[Peak_Electricity] [decimal](18, 4) default(0) NULL,    					-- ���ڵ���
	[Valley_Electricity] [decimal](18, 4) default(0) NULL,  					-- ���ڵ���
	[Flat_Electricity] [decimal](18, 4) default(0) NULL     					-- ƽ�ڵ���
)
GO

CREATE TABLE [dbo].[report_AmmeterPeakerValleyFlatYear](						-- �����ƽ�걨
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
    [KeyID] [uniqueidentifier] NULL,		                					-- ���������ID
    [AmmeterNumber] [char](30) NULL,				        					-- �������
	[AmmeterName] [char](30) NULL,						    					-- �������	
	[Peak_Electricity] [bigint] default(0) NULL,            					-- ���ڵ���
	[Valley_Electricity] [bigint] default(0) NULL,          					-- ���ڵ���
	[Flat_Electricity] [bigint] default(0) NULL,            					-- ƽ�ڵ���
)
GO

CREATE TABLE [dbo].[report_ClinkerMonthlyOutput](            					-- ���������߲������� �±�
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,     	 					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,
	[LimestoneConsumptionFirstShift] [decimal](18, 4) default(0) NULL,          -- ʯ��ʯ�������װ�
	[LimestoneConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[LimestoneConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[LimestoneConsumptionSum] [decimal](18, 4) default(0) NULL,
	[RawBatchProductionFirstShift] [decimal](18, 4) default(0) NULL,            -- ���ϲ����װ�
	[RawBatchProductionSecondShift] [decimal](18, 4) default(0) NULL,
	[RawBatchProductionThirdShift] [decimal](18, 4) default(0) NULL,
	[RawBatchProductionSum] [decimal](18, 4) default(0) NULL,
	[RawBatchConsumptionFirstShift] [decimal](18, 4) default(0) NULL,           -- �����������װ�
	[RawBatchConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[RawBatchConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[RawBatchConsumptionSum] [decimal](18, 4) default(0) NULL,
	[ClinkerProductionFirstShift] [decimal](18, 4) default(0) NULL,             -- ���ϲ����װ�
	[ClinkerProductionSecondShift] [decimal](18, 4) default(0) NULL,
	[ClinkerProductionThirdShift] [decimal](18, 4) default(0) NULL,
	[ClinkerProductionSum] [decimal](18, 4) default(0) NULL,
	[PowerGenerationFirstShift] [decimal](18, 4) default(0) NULL,               -- ���ȷ��緢�����װ�
	[PowerGenerationSecondShift] [decimal](18, 4) default(0) NULL,
	[PowerGenerationThirdShift] [decimal](18, 4) default(0) NULL,
	[PowerGenerationSum] [decimal](18, 4) default(0) NULL,
	[PowerSelfUseFirstShift] [decimal](18, 4) default(0) NULL,                  -- ���ȷ��緢���õ�����װ�
	[PowerSelfUseSecondShift] [decimal](18, 4) default(0) NULL,
	[PowerSelfUseThirdShift] [decimal](18, 4) default(0) NULL,
	[PowerSelfUseSum] [decimal](18, 4) default(0) NULL,
	[SteamFirstShift] [decimal](18, 4) default(0) NULL,                         -- ���ȷ����������װ�
	[SteamSecondShift] [decimal](18, 4) default(0) NULL,
	[SteamThirdShift] [decimal](18, 4) default(0) NULL,
	[SteamSum] [decimal](18, 4) default(0) NULL,
	[CoalDustProductionFirstShift] [decimal](18, 4) default(0) NULL,            -- ú�۲���
	[CoalDustProductionSecondShift] [decimal](18, 4) default(0) NULL,
	[CoalDustProductionThirdShift] [decimal](18, 4) default(0) NULL,
	[CoalDustProductionSum] [decimal](18, 4) default(0) NULL,
	[KilnHeadCoalDustConsumptionFirstShift] [decimal](18, 4) default(0) NULL,   -- Ҥͷ��ú���װ�
	[KilnHeadCoalDustConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[KilnHeadCoalDustConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[KilnHeadCoalDustConsumptionSum] [decimal](18, 4) default(0) NULL,
	[KilnTailCoalDustConsumptionFirstShift] [decimal](18, 4) default(0) NULL,   -- Ҥβ��ú���װ�
	[KilnTailCoalDustConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[KilnTailCoalDustConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[KilnTailCoalDustConsumptionSum] [decimal](18, 4) default(0) NULL,
	[AmounttoCoalDustConsumptionFirstShift] [decimal](18, 4) default(0) NULL,   -- ����ú���װ�
	[AmounttoCoalDustConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[AmounttoCoalDustConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[AmounttoCoalDustConsumptionSum] [decimal](18, 4) NULL

) 
GO

CREATE TABLE [dbo].[report_ClinkerYearlyOutput](            					-- ���������߲������� �걨
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,
	[LimestoneConsumptionFirstShift] [bigint] default(0) NULL,           		-- ʯ��ʯ�������װ�
	[LimestoneConsumptionSecondShift] [bigint] default(0) NULL,
	[LimestoneConsumptionThirdShift] [bigint] default(0) NULL,
	[LimestoneConsumptionSum] [bigint] default(0) NULL,
	[RawBatchProductionFirstShift] [bigint] default(0) NULL,             		-- ���ϲ����װ�
	[RawBatchProductionSecondShift] [bigint] default(0) NULL,
	[RawBatchProductionThirdShift] [bigint] default(0) NULL,
	[RawBatchProductionSum] [bigint] default(0) NULL,
	[RawBatchConsumptionFirstShift] [bigint] default(0) NULL,           	 	-- �����������װ�
	[RawBatchConsumptionSecondShift] [bigint] default(0) NULL,
	[RawBatchConsumptionThirdShift] [bigint] default(0) NULL,
	[RawBatchConsumptionSum] [bigint] default(0) NULL,
	[ClinkerProductionFirstShift] [bigint] default(0) NULL,              		-- ���ϲ����װ�
	[ClinkerProductionSecondShift] [bigint] default(0) NULL,
	[ClinkerProductionThirdShift] [bigint] default(0) NULL,
	[ClinkerProductionSum] [bigint] default(0) NULL,
	[PowerGenerationFirstShift] [bigint] default(0) NULL,                		-- ���ȷ��緢�����װ�
	[PowerGenerationSecondShift] [bigint] default(0) NULL,
	[PowerGenerationThirdShift] [bigint] default(0) NULL,
	[PowerGenerationSum] [bigint] default(0) NULL,
	[PowerSelfUseFirstShift] [bigint] default(0) NULL,                   		-- ���ȷ��緢���õ�����װ�
	[PowerSelfUseSecondShift] [bigint] default(0) NULL,
	[PowerSelfUseThirdShift] [bigint] default(0) NULL,
	[PowerSelfUseSum] [bigint] default(0) NULL,
	[SteamFirstShift] [bigint] default(0) NULL,                          		-- ���ȷ����������װ�
	[SteamSecondShift] [bigint] default(0) NULL,
	[SteamThirdShift] [bigint] default(0) NULL,
	[SteamSum] [bigint] default(0) NULL,
	[CoalDustProductionFirstShift] [bigint] default(0) NULL,             		-- ú�۲���
	[CoalDustProductionSecondShift] [bigint] default(0) NULL,
	[CoalDustProductionThirdShift] [bigint] default(0) NULL,
	[CoalDustProductionSum] [bigint] default(0) NULL,
	[KilnHeadCoalDustConsumptionFirstShift] [bigint] default(0) NULL,    		-- Ҥͷ��ú���װ�
	[KilnHeadCoalDustConsumptionSecondShift] [bigint] default(0) NULL,
	[KilnHeadCoalDustConsumptionThirdShift] [bigint] default(0) NULL,
	[KilnHeadCoalDustConsumptionSum] [bigint] default(0) NULL,
	[KilnTailCoalDustConsumptionFirstShift] [bigint] default(0) NULL,    		-- Ҥβ��ú���װ�
	[KilnTailCoalDustConsumptionSecondShift] [bigint] default(0) NULL,
	[KilnTailCoalDustConsumptionThirdShift] [bigint] default(0) NULL,
	[KilnTailCoalDustConsumptionSum] [bigint] default(0) NULL,
	[AmounttoCoalDustConsumptionFirstShift] [bigint] default(0) NULL,    		-- ����ú���װ�
	[AmounttoCoalDustConsumptionSecondShift] [bigint] default(0) NULL,
	[AmounttoCoalDustConsumptionThirdShift] [bigint] default(0) NULL,
	[AmounttoCoalDustConsumptionSum] [bigint] default(0) NULL

) 
GO

CREATE TABLE [dbo].[report_CementMillMonthlyOutput](         					-- ˮ�������߲������� �±�
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,
	[CementTypes] [char](20) NULL,
	[ClinkerConsumptionFirstShift] [decimal](18, 4) default(0) NULL,            -- �����������װ�
	[ClinkerConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[ClinkerConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[ClinkerConsumptionSum] [decimal](18, 4) default(0) NULL,
	[PlasterConsumptionFirstShift] [decimal](18, 4) default(0) NULL,            -- ʯ���������װ�
	[PlasterConsumptionSecondShift] [decimal](18, 4) default(0) NULL,
	[PlasterConsumptionThirdShift] [decimal](18, 4) default(0) NULL,
	[PlasterConsumptionSum] [decimal](18, 4) default(0) NULL,
	[CementProductionFirstShift] [decimal](18, 4) default(0) NULL,              -- ˮ������װ�
	[CementProductionSecondShift] [decimal](18, 4) default(0) NULL,
	[CementProductionThirdShift] [decimal](18, 4) default(0) NULL,
	[CementProductionSum] [decimal](18, 4) default(0) NULL
) 
GO

CREATE TABLE [dbo].[report_CementMillYearlyOutput](         					-- ˮ�������߲������� �걨
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL, 
	[CementTypes] [char](20) NULL,
	[ClinkerConsumptionFirstShift] [bigint] default(0) NULL,             		-- �����������װ�
	[ClinkerConsumptionSecondShift] [bigint] default(0) NULL,
	[ClinkerConsumptionThirdShift] [bigint] default(0) NULL,
	[ClinkerConsumptionSum] [bigint] default(0) NULL,
	[PlasterConsumptionFirstShift] [bigint] default(0) NULL,             		-- ʯ���������װ�
	[PlasterConsumptionSecondShift] [bigint] default(0) NULL,
	[PlasterConsumptionThirdShift] [bigint] default(0) NULL,
	[PlasterConsumptionSum] [bigint] default(0) NULL,
	[CementProductionFirstShift] [bigint] default(0) NULL,               		-- ˮ������װ�
	[CementProductionSecondShift] [bigint] default(0) NULL,
	[CementProductionThirdShift] [bigint] default(0) NULL,
	[CementProductionSum] [bigint] default(0) NULL
)
GO

CREATE TABLE [dbo].[report_ClinkerMonthlyElectricity_sum](						-- ���������ߺϼ��õ���ͳ���±���
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,
	[RawMaterialPreparationFirstShift]  [decimal](18, 4) default(0) NULL,       -- ԭ���Ʊ��װ�
	[RawMaterialPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingFirstShift]  [decimal](18, 4) default(0) NULL,             -- ���Ϸ�ĥ�װ�
	[RawBatchGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationFirstShift]  [decimal](18, 4) default(0) NULL,  -- �����Ʊ��ϼƼװ�
	[AmounttoRawBatchPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationSum]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemFirstShift]  [decimal](18, 4) default(0) NULL,               -- úĥϵͳ�װ�
	[CoalMillSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemSum]  [decimal](18, 4) default(0) NULL,
	[FiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,                 -- �ճ�ϵͳ�װ�
	[FiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,         -- �ճ�ϵͳ�ϼƼװ�
	[AmounttoFiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,                     -- �ܺϼƼװ�
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL
) 
GO

CREATE TABLE [dbo].[report_ClinkerMonthlyElectricity_peak](						-- ���������߷���õ���ͳ���±���
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,
	[RawMaterialPreparationFirstShift]  [decimal](18, 4) default(0) NULL,       -- ԭ���Ʊ��װ�
	[RawMaterialPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingFirstShift]  [decimal](18, 4) default(0) NULL,             -- ���Ϸ�ĥ�װ�
	[RawBatchGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchPreparationFirstShift]  [decimal](18, 4) default(0) NULL,          -- �����Ʊ��ϼƼװ�
	[AmounttoRawBatchPreparationSecondShift]  [decimal](18, 4) default(0) NULL, 
	[AmounttoRawBatchPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationSum]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemFirstShift]  [decimal](18, 4) default(0) NULL,               -- úĥϵͳ�װ�
	[CoalMillSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemSum]  [decimal](18, 4) default(0) NULL,
	[FiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,                 -- �ճ�ϵͳ�װ�
	[FiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,         -- �ճ�ϵͳ�ϼƼװ�
	[AmounttoFiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,                     -- �ܺϼƼװ�
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL
) 
GO

CREATE TABLE [dbo].[report_ClinkerMonthlyElectricity_valley](					-- ���������߹ȶ��õ���ͳ���±���
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,
	[RawMaterialPreparationFirstShift]  [decimal](18, 4) default(0) NULL,       -- ԭ���Ʊ��װ�
	[RawMaterialPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingFirstShift]  [decimal](18, 4) default(0) NULL,             -- ���Ϸ�ĥ�װ�
	[RawBatchGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchPreparationFirstShift]  [decimal](18, 4) default(0) NULL,          -- �����Ʊ��ϼƼװ�
	[AmounttoRawBatchPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationSum]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemFirstShift]  [decimal](18, 4) default(0) NULL,               -- úĥϵͳ�װ�
	[CoalMillSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemSum]  [decimal](18, 4) default(0) NULL,
	[FiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,                 -- �ճ�ϵͳ�װ�
	[FiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,         -- �ճ�ϵͳ�ϼƼװ�
	[AmounttoFiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,                     -- �ܺϼƼװ�
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL
) 
GO
 
CREATE TABLE [dbo].[report_ClinkerMonthlyElectricity_flat](						-- ����������ƽ���õ���ͳ���±���
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,							-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,
	[RawMaterialPreparationFirstShift]  [decimal](18, 4) default(0) NULL,       -- ԭ���Ʊ��װ�
	[RawMaterialPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawMaterialPreparationSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingFirstShift]  [decimal](18, 4) default(0) NULL,             -- ���Ϸ�ĥ�װ�
	[RawBatchGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[RawBatchGrindingSum]  [decimal](18, 4) default(0) NULL,
	[RawBatchPreparationFirstShift]  [decimal](18, 4) default(0) NULL,          -- �����Ʊ��ϼƼװ�
	[AmounttoRawBatchPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoRawBatchPreparationSum]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemFirstShift]  [decimal](18, 4) default(0) NULL,               -- úĥϵͳ�װ�
	[CoalMillSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[CoalMillSystemSum]  [decimal](18, 4) default(0) NULL,
	[FiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,                 -- �ճ�ϵͳ�װ�
	[FiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[FiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemFirstShift]  [decimal](18, 4) default(0) NULL,         -- �ճ�ϵͳ�ϼƼװ�
	[AmounttoFiringSystemSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoFiringSystemSum]  [decimal](18, 4) default(0) NULL,
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,                     -- �ܺϼƼװ�
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL
) 
GO
 
CREATE TABLE [dbo].[report_ClinkerYearlyElectricity_sum](						-- ���������ߺϼ��õ���ͳ���걨��
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL, 							-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,
	[RawMaterialPreparationFirstShift]  [bigint] default(0) NULL,         		-- ԭ���Ʊ��װ�
	[RawMaterialPreparationSecondShift]  [bigint] default(0) NULL,
	[RawMaterialPreparationThirdShift]  [bigint] default(0) NULL,
	[RawMaterialPreparationSum]  [bigint] default(0) NULL,
	[RawBatchGrindingFirstShift]  [bigint] default(0) NULL,               		-- ���Ϸ�ĥ�װ�
	[RawBatchGrindingSecondShift]  [bigint] default(0) NULL,
	[RawBatchGrindingThirdShift]  [bigint] default(0) NULL,
	[RawBatchGrindingSum]  [bigint] default(0) NULL,
	[RawBatchPreparationFirstShift]  [bigint] default(0) NULL,           	 	-- �����Ʊ��ϼƼװ�
	[AmounttoRawBatchPreparationSecondShift]  [bigint] default(0) NULL,
	[AmounttoRawBatchPreparationThirdShift]  [bigint] default(0) NULL,
	[AmounttoRawBatchPreparationSum]  [bigint] default(0) NULL,
	[CoalMillSystemFirstShift]  [bigint] default(0) NULL,                 		-- úĥϵͳ�װ�
	[CoalMillSystemSecondShift]  [bigint] default(0) NULL,
	[CoalMillSystemThirdShift]  [bigint] default(0) NULL,
	[CoalMillSystemSum]  [bigint] default(0) NULL,
	[FiringSystemFirstShift]  [bigint] default(0) NULL,                   		-- �ճ�ϵͳ�װ�
	[FiringSystemSecondShift]  [bigint] default(0) NULL,
	[FiringSystemThirdShift]  [bigint] default(0) NULL,
	[FiringSystemSum]  [bigint] default(0) NULL,
	[AmounttoFiringSystemFirstShift]  [bigint] default(0) NULL,           		-- �ճ�ϵͳ�ϼƼװ�
	[AmounttoFiringSystemSecondShift]  [bigint] default(0) NULL,
	[AmounttoFiringSystemThirdShift]  [bigint] default(0) NULL,
	[AmounttoFiringSystemSum]  [bigint] default(0) NULL,
	[AmounttoFirstShift]  [bigint] default(0) NULL,                       		-- �ܺϼƼװ�
	[AmounttoSecondShift]  [bigint] default(0) NULL,
	[AmounttoThirdShift]  [bigint] default(0) NULL,
	[AmounttoSum]  [bigint] default(0) NULL
) 
GO

CREATE TABLE [dbo].[report_CementMillMonthlyElectricity_sum](					-- ˮ�������ߺϼ��õ���ͳ���±���
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSum]  [decimal](18, 4) default(0) NULL,                      -- ˮ���ĥ����
	[AdmixturePreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSum]  [decimal](18, 4) default(0) NULL,                -- ��ϲ��Ʊ�����
	[AmounttoCementPreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSum]  [decimal](18, 4) default(0) NULL,           -- ˮ���Ʊ��ϼƵ���
	[AmounttoCementPackagingFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingThirdShift]  [decimal](18, 4) default(0) NULL,
	[Amountto CementPackagingSum]  [decimal](18, 4) default(0) NULL,            -- ˮ���װ�����͵���
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL                             -- �ܺϼƵ���
) 
GO

CREATE TABLE [dbo].[report_CementMillMonthlyElectricity_peak](					-- ˮ�������߷���õ���ͳ���±���
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSum]  [decimal](18, 4) default(0) NULL,                      -- ˮ���ĥ����
	[AdmixturePreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSum]  [decimal](18, 4) default(0) NULL,                -- ��ϲ��Ʊ�����
	[AmounttoCementPreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSum]  [decimal](18, 4) default(0) NULL,           -- ˮ���Ʊ��ϼƵ���
	[AmounttoCementPackagingFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingThirdShift]  [decimal](18, 4) default(0) NULL,
	[Amountto CementPackagingSum]  [decimal](18, 4) default(0) NULL,            -- ˮ���װ�����͵���
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL                             -- �ܺϼƵ���
)
GO

CREATE TABLE [dbo].[report_CementMillMonthlyElectricity_valley](				-- ˮ�������߹ȶ��õ���ͳ���±���
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSum]  [decimal](18, 4) default(0) NULL,                      -- ˮ���ĥ����
	[AdmixturePreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSum]  [decimal](18, 4) default(0) NULL,                -- ��ϲ��Ʊ�����
	[AmounttoCementPreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSum]  [decimal](18, 4) default(0) NULL,           -- ˮ���Ʊ��ϼƵ���
	[AmounttoCementPackagingFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingThirdShift]  [decimal](18, 4) default(0) NULL,
	[Amountto CementPackagingSum]  [decimal](18, 4) default(0) NULL,            -- ˮ���װ�����͵���
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL                             -- �ܺϼƵ���
) 
GO

CREATE TABLE [dbo].[report_CementMillMonthlyElectricity_flat](					-- ˮ��������ƽ���õ���ͳ���±���
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSum]  [decimal](18, 4) default(0) NULL,                      -- ˮ���ĥ����
	[AdmixturePreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSum]  [decimal](18, 4) default(0) NULL,                -- ��ϲ��Ʊ�����
	[AmounttoCementPreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSum]  [decimal](18, 4) default(0) NULL,           -- ˮ���Ʊ��ϼƵ���
	[AmounttoCementPackagingFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingThirdShift]  [decimal](18, 4) default(0) NULL,
	[Amountto CementPackagingSum]  [decimal](18, 4) default(0) NULL,            -- ˮ���װ�����͵���
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL                             -- �ܺϼƵ���
)
GO

CREATE TABLE [dbo].[report_CementMillYearlyElectricity_sum](					-- ˮ�������ߺϼ��õ���ͳ���걨��
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSecondShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingThirdShift]  [decimal](18, 4) default(0) NULL,
	[CementGrindingSum]  [decimal](18, 4) default(0) NULL,                      -- ˮ���ĥ����
	[AdmixturePreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AdmixturePreparationSum]  [decimal](18, 4) default(0) NULL,                -- ��ϲ��Ʊ�����
	[AmounttoCementPreparationFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPreparationSum]  [decimal](18, 4) default(0) NULL,           -- ˮ���Ʊ��ϼƵ���
	[AmounttoCementPackagingFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoCementPackagingThirdShift]  [decimal](18, 4) default(0) NULL,
	[Amountto CementPackagingSum]  [decimal](18, 4) default(0) NULL,            -- ˮ���װ�����͵���
	[AmounttoFirstShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSecondShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoThirdShift]  [decimal](18, 4) default(0) NULL,
	[AmounttoSum]  [decimal](18, 4) default(0) NULL                             -- �ܺϼƵ���
)
GO

CREATE TABLE [dbo].[report_ClinkerYeldPerUnitDistributionEnergyConsumptionYearly](
																				-- ���ϵ�λ��Ʒ�ܺ��걨��
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,        					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                          					-- ���������ID
	[vMonth] [bigint] NULL,                                   					-- �·�
	[ElectricityConsumption] [bigint] NULL,                   					-- �����õ���
	[CoalDust] [bigint] NULL,                                 					-- ��Ҥú����
	[Qnet] [bigint] NULL,                                     					-- ú�ۿոɻ���λ������
	[Diesel] [bigint] NULL,                                   					-- �������
	[CogenerationSupply] [bigint] NULL,                       					-- ���ȷ�����������
	[CogenerationProduction] [bigint] NULL,                   					-- ���ȷ��緢����
	[CogenerationSelfUse] [bigint] NULL,                      					-- ���ȷ������õ����
	[ClinkerOutput] [bigint] NULL,                            					-- ���ϲ���
	[ClinkerIntensity] [decimal](18, 4) NULL,                                   -- ����ǿ��
	[ClinkerIntensityCorrectionFactor][decimal](18, 4) NULL,                    -- ����ǿ������ϵ��
	[Clinker_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL,        -- �����ۺϵ��
	[Clinker_ComparableComprehensiveElectricityConsumption][decimal](18, 4) NULL,
																				-- �ɱ������ۺϵ��
	[Clinker_ComprehensiveCoalDustConsumption][decimal](18, 4) NULL,            -- �����ۺ�ú��
    [Clinker_ComparableComprehensiveCoalDustConsumption][decimal](18, 4) NULL,  -- �ɱ������ۺ�ú��
	[Clinker_DieselConsumption] [decimal](18, 4) NULL,                          -- �����ͺ�
	[CogenerationSupplyCorrection][decimal](18, 4) NULL,                        -- ���ȷ������������ۺϱ�׼ֵ
	[Clinker_ComprehensiveEnergyConsumption] [decimal](18, 4) NULL,             -- �����ۺ��ܺ�
	[Clinker_ComparableComprehensiveEnergyConsumption] [decimal](18, 4) NULL,   -- �ɱ������ۺ��ܺ�
) 
GO

CREATE TABLE [dbo].[report_CementYeldPerUnitDistributionPowerConsumptionYearly](-- ˮ�൥λ��Ʒ�ܺ��걨��
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vMonth] [int] NULL,                                    					-- �·�
	[CementTypes] [char](30) NULL,                          					-- ˮ��Ʒ��
	[Output] [bigint] NULL,                                 					-- ˮ�����
	[ElectricityConsumption] [bigint] NULL,                 					-- �õ���
	[DistributionPowerConsumption] [decimal](18, 4) NULL,   					-- �ֲ����
	[ConversionDistributionPowerConsumption] [decimal](18, 4) NULL,			 	-- ����P.O42.5�ֲ����
) 
GO

CREATE TABLE [dbo].[report_ClinkerProductionLineEnergyConsumptionSchedule](		-- �����������ܺļƻ�
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
    [KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[IndicatorName] [char](30) NULL,                        					-- ָ������
	[January] [bigint] NULL,                                   					-- һ��ָ��
	[February] [bigint] NULL,                                   				-- ����ָ��
	[March] [bigint] NULL,
	[April] [bigint] NULL,
	[May] [bigint] NULL,
	[June] [bigint] NULL,
	[July] [bigint] NULL,
	[August] [bigint] NULL,
	[September] [bigint] NULL,
	[October] [bigint] NULL,
	[November] [bigint] NULL,
	[December] [bigint] NULL,
	[Annual] [bigint] NULL,                                 					-- ���ָ��
    [Remarks] [nvarchar](max) NULL												-- ��ע
) 
GO

CREATE TABLE [dbo].[report_CementMillProductionLineProductionLineEnergyConsumptionSchedule](
																				-- ˮ���������ܺļƻ�
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
    [KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[IndicatorName] [char](30) NULL,                        					-- ָ������
	[January] [bigint] NULL,                                  					-- һ��ָ��
	[February] [bigint] NULL,                                 					-- ����ָ��
	[March] [bigint] NULL,
	[April] [bigint] NULL,
	[May] [bigint] NULL,
	[June] [bigint] NULL,
	[July] [bigint] NULL,
	[August] [bigint] NULL,
	[September] [bigint] NULL,
	[October] [bigint] NULL,
	[November] [bigint] NULL,
	[December] [bigint] NULL,
	[Annual] [bigint] NULL,                                    					-- ���ָ��
	[Remarks] [nvarchar](max) NULL												-- ��ע
) 
GO




CREATE TABLE [dbo].[report_CementMonthlyElectricityConsumption](				-- ˮ��(��Ʒ��)��ĥ�����ͳ�Ʒ�������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,                                     					-- ����
	[CementTypes] [char](30) NULL,                          					-- ˮ��Ʒ��
	[ConvertCoefficient] [float] NULL,                      					-- �ۺ�ϵ��
	--�װ�
    [First_Output] [bigint] NULL,                             					-- ����
	[First_Electricity] [bigint] NULL,                        					-- ����
    [First_ElectricityConsumption]  [decimal](18, 4) NULL,            			-- ���
	[First_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     			-- ������
	--�Ұ�
    [Second_Output] [bigint] NULL,                             					-- ����
	[Second_Electricity] [bigint] NULL,                        					-- ����
    [Second_ElectricityConsumption]  [decimal](18, 4) NULL,             		-- ���
	[Second_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,    			-- ������
	--����
    [Third_Output] [bigint] NULL,                             					-- ����
	[Third_Electricity] [bigint] NULL,                        					-- ����
    [Third_ElectricityConsumption] [decimal](18, 4) NULL,             			-- ���
	[Third_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,    			-- ������
	--�ϼ�
    [Amountto_Output] [bigint] NULL,                             				-- ����
	[Amountto_Electricity] [bigint] NULL,                        				-- ����
    [Amountto_ElectricityConsumption]  [decimal](18, 4) NULL,          			-- ���
	[Amountto_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,    		-- ������
) 
GO

CREATE TABLE [dbo].[report_CementYearlyElectricityConsumption](--ˮ��(��Ʒ��)��ĥ�����ͳ�Ʒ�������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --����ID
	[KeyID] [uniqueidentifier] NULL,                        --���������ID
	[vMonth] [int] NULL,                                    --�·�
	[CementTypes] [char](30) NULL,                          --ˮ��Ʒ��
	[ConvertCoefficient]  [decimal](6, 4) NULL,                      --�ۺ�ϵ��
    [Output] [bigint] NULL,                             --����
	[Electricity] [bigint] NULL,                        --����
    [ElectricityConsumption]  [decimal](18, 4) NULL,             --���
	[Convert_ElectricityConsumption]  [decimal](18, 4) NULL,    --������
) 
GO

CREATE TABLE [dbo].[report_TeamCementClassificationMonthlyElectricityConsumption](--����ˮ��(��Ʒ��)��ĥ�����ͳ�Ʒ������� -----------------------report_TeamCementMonthlyElectricityConsumption��Ϊreport_TeamCementClassificationMonthlyElectricityConsumption-------------------------------------------------------------------------------
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --����ID
	[KeyID] [uniqueidentifier] NULL,                        -- ���������ID
	[vDate] [int] NULL,                                     --����
	[CementTypes] [char](30) NULL,                          --ˮ��Ʒ��
	[ConvertCoefficient] [decimal](6, 4) NULL,                   --�ۺ�ϵ��
	--A��
    [TeamA_Output] [decimal](18, 4) NULL,                             --����
	[TeamA_Electricity] [decimal](18, 4) NULL,                        --����
    [TeamA_ElectricityConsumption]  [decimal](18, 4) NULL,           --���
	[TeamA_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     --������
	--B��
    [TeamB_Output] [decimal](18, 4) NULL,                             --����
	[TeamB_Electricity] [decimal](18, 4) NULL,                        --����
    [TeamB_ElectricityConsumption]  [decimal](18, 4) NULL,             --���
	[TeamB_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     --������
	--C��
    [TeamC_Output] [decimal](18, 4) NULL,                             --����
	[TeamC_Electricity] [decimal](18, 4) NULL,                        --����
    [TeamC_ElectricityConsumption] [decimal](18, 4) NULL,             --���
	[TeamC_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     --������
	--D��
    [TeamD_Output] [decimal](18, 4) NULL,                             --����
	[TeamD_Electricity] [decimal](18, 4) NULL,                        --����
    [TeamD_ElectricityConsumption]  [decimal](18, 4) NULL,             --���
	[TeamD_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     --������
	--�ϼ�
    [Amountto_Output] [decimal](18, 4) NULL,                             --����
	[Amountto_Electricity] [decimal](18, 4) NULL,                        --����
    [Amountto_ElectricityConsumption]  [decimal](18, 4) NULL,             --���
	[Amountto_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     --������
	
) 
GO

CREATE TABLE [dbo].[report_TeamCementYearlyElectricityConsumption](--����ˮ��(��Ʒ��)��ĥ�����ͳ�Ʒ�������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --����ID
	[KeyID] [uniqueidentifier] NULL,                        -- ���������ID
	[vMonth] [int] NULL,                                    --�·�
	[CementTypes] [char](30) NULL,                          --ˮ��Ʒ��
	[ConvertCoefficient]  [decimal](6, 4) NULL,                      --�ۺ�ϵ��
	--A��
    [TeamA_Output] [bigint] NULL,                             --����
	[TeamA_Electricity] [bigint] NULL,                        --����
    [TeamA_ElectricityConsumption]  [decimal](18, 4) NULL,             --���
	[TeamA_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,    --������
	--B��
    [TeamB_Output] [bigint] NULL,                             --����
	[TeamB_Electricity] [bigint] NULL,                        --����
    [TeamB_ElectricityConsumption]  [decimal](18, 4) NULL,           --���
	[TeamB_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     --������
	--C��
    [TeamC_Output] [bigint] NULL,                             --����
	[TeamC_Electricity] [bigint] NULL,                        --����
    [TeamC_ElectricityConsumption]  [decimal](18, 4) NULL,             --���
	[TeamC_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,    --������
	--D��
    [TeamD_Output] [bigint] NULL,                             --����
	[TeamD_Electricity] [bigint] NULL,                        --����
    [TeamD_ElectricityConsumption]  [decimal](18, 4) NULL,             --���
	[TeamD_Convert_ElectricityConsumption] [decimal](18, 4) NULL,     --������
	--�ϼ�
    [Amountto_Output] [bigint] NULL,                             --����
	[Amountto_Electricity] [bigint] NULL,                        --����
    [Amountto_ElectricityConsumption]  [decimal](18, 4) NULL,           --���
	[Amountto_Convert_ElectricityConsumption]  [decimal](18, 4) NULL,     --������
	
)
GO


CREATE TABLE [dbo].[report_CementMilMonthlyPeakerValleyFlatElectricityConsumption](--ˮ��ĥ(���ƽ)�õ���ͳ�Ʒ�������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --����ID
	[KeyID] [uniqueidentifier] NULL,                        -- ���������ID
	[vDate] [int] NULL,                                     --����
	--�װ�
    [First_Output] [decimal](18, 4) NULL,                             --����
    [First_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[First_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[First_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[First_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[First_ElectricityConsumption] [decimal](18, 4) NULL,           --���
	[First_Cost] [decimal](18, 4) NULL,                               --�ɱ�
	--�Ұ�
    [Second_Output] [decimal](18, 4) NULL,                             --����
    [Second_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[Second_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[Second_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[Second_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[Second_ElectricityConsumption] [decimal](18, 4) NULL,             --���
	[Second_Cost] [decimal](18, 4) NULL,                              --�ɱ�
	--����
    [Third_Output] [decimal](18, 4) NULL,                             --����
    [Third_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[Third_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[Third_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[Third_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[Third_ElectricityConsumption] [decimal](18, 4) NULL,             --���
	[Third_Cost] [decimal](18, 4) NULL,                               --�ɱ�
	--�ϼ�
    [Amountto_Output] [decimal](18, 4) NULL,                             --����
    [Amountto_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[Amountto_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[Amountto_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[Amountto_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[Amountto_ElectricityConsumption] [decimal](18, 4) NULL,            --���
	[Amountto_Cost] [decimal](18, 4) NULL,                               --�ɱ�
)
GO

CREATE TABLE [dbo].[report_RawBatchMilMonthlyPeakerValleyFlatElectricityConsumption](--����ĥ(���ƽ)�õ���ͳ�Ʒ�������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --����ID
	[KeyID] [uniqueidentifier] NULL,                        -- ���������ID
	[vDate] [int] NULL,                                     --����
	--�װ�
    [First_Output] [decimal](18, 4) NULL,                             --����
    [First_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[First_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[First_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[First_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[First_ElectricityConsumption] [decimal](18, 4) NULL,             --���
	[First_Cost] [decimal](18, 4) NULL,                              --�ɱ�
	--�Ұ�
    [Second_Output] [decimal](18, 4) NULL,                             --����
    [Second_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[Second_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[Second_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[Second_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[Second_ElectricityConsumption] [decimal](18, 4) NULL,             --���
	[Second_Cost] [decimal](18, 4) NULL,                               --�ɱ�
	--����
    [Third_Output] [decimal](18, 4) NULL,                             --����
    [Third_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[Third_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[Third_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[Third_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[Third_ElectricityConsumption] [decimal](18, 4) NULL,             --���
	[Third_Cost] [decimal](18, 4) NULL,                              --�ɱ�
	--�ϼ�
    [Amountto_Output] [decimal](18, 4) NULL,                             --����
    [Amountto_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[Amountto_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[Amountto_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[Amountto_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[Amountto_ElectricityConsumption][decimal](18, 4) NULL,            --���
	[Amountto_Cost] [decimal](18, 4) NULL,                              --�ɱ�
)
GO

CREATE TABLE [dbo].[report_CoalMilMonthlyPeakerValleyFlatElectricityConsumption](--úĥ(���ƽ)�õ���ͳ�Ʒ�������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --����ID
	[KeyID] [uniqueidentifier] NULL,                        -- ���������ID
	[vDate] [int] NULL,                                     --����
	--�װ�
    [First_Output] [decimal](18, 4) NULL,                             --����
    [First_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[First_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[First_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[First_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[First_ElectricityConsumption] [decimal](18, 4) NULL,            --���
	[First_Cost] [decimal](18, 4) NULL,                               --�ɱ�
	--�Ұ�
    [Second_Output] [decimal](18, 4) NULL,                             --����
    [Second_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[Second_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[Second_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[Second_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[Second_ElectricityConsumption] [decimal](18, 4) NULL,             --���
	[Second_Cost] [decimal](18, 4) NULL,                              --�ɱ�
	--����
    [Third_Output] [decimal](18, 4) NULL,                             --����
    [Third_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[Third_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[Third_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[Third_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[Third_ElectricityConsumption] [decimal](18, 4) NULL,             --���
	[Third_Cost] [decimal](18, 4) NULL,                             --�ɱ�
	--�ϼ�
    [Amountto_Output] [decimal](18, 4) NULL,                             --����
    [Amountto_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[Amountto_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[Amountto_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[Amountto_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[Amountto_ElectricityConsumption] [decimal](18, 4) NULL,            --���
	[Amountto_Cost] [decimal](18, 4) NULL,                              --�ɱ�
)
GO

CREATE TABLE [dbo].[report_ClinkerMonthlyPeakerValleyFlatElectricityConsumption](--��������(���ƽ)�õ���ͳ�Ʒ�������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --����ID
	[KeyID] [uniqueidentifier] NULL,                        -- ���������ID
	[vDate] [int] NULL,                                     --����
	--�װ�
    [First_RawBatch_Output] [decimal](18, 4) NULL,                    --���ϲ���
	[First_Clinker_Output] [decimal](18, 4) NULL,                     --���ϲ���
	[First_CoalDust_Output] [decimal](18, 4) NULL,                    --ú�۲���
    [First_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[First_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[First_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[First_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[First_ElectricityConsumption] [decimal](18, 4) NULL,             --���
	[First_Cost] [decimal](18, 4) NULL,                               --�ɱ�
	--�Ұ�
    [Second_RawBatch_Output] [decimal](18, 4) NULL,                    --���ϲ���
	[Second_Clinker_Output] [decimal](18, 4) NULL,                     --���ϲ���
	[Second_CoalDust_Output] [decimal](18, 4) NULL,                    --ú�۲���
    [Second_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[Second_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[Second_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[Second_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[Second_ElectricityConsumption] [decimal](18, 4) NULL,             --���
	[Second_Cost] [decimal](18, 4) NULL,                               --�ɱ�
	--����
    [Third_RawBatch_Output] [decimal](18, 4) NULL,                    --���ϲ���
	[Third_Clinker_Output] [decimal](18, 4) NULL,                     --���ϲ���
	[Third_CoalDust_Output] [decimal](18, 4) NULL,                    --ú�۲���
    [Third_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[Third_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[Third_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[Third_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[Third_ElectricityConsumption] [decimal](18, 4) NULL,             --���
	[Third_Cost] [decimal](18, 4) NULL,                               --�ɱ�
	--�ϼ�
    [Amountto_RawBatch_Output] [decimal](18, 4) NULL,                    --���ϲ���
	[Amountto_Clinker_Output] [decimal](18, 4) NULL,                     --���ϲ���
	[Amountto_CoalDust_Output] [decimal](18, 4) NULL,                    --ú�۲���
    [Amountto_Peak_Electricity] [decimal](18, 4) NULL,                   --���ڵ���
	[Amountto_Valley_Electricity] [decimal](18, 4) NULL,                 --���ڵ���
	[Amountto_Flat_Electricity] [decimal](18, 4) NULL,                   --ƽ�ڵ���
	[Amountto_Sum_Electricity] [decimal](18, 4) NULL,                    --�ϼƵ���
	[Amountto_ElectricityConsumption] [decimal](18, 4) NULL,             --���
	[Amountto_Cost] [decimal](18, 4) NULL,                               --�ɱ�
)
GO

CREATE TABLE [dbo].[report_ClinkerMonthlyCoalDustConsumption](--����������ú��ͳ�Ʒ���
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --����ID
	[KeyID] [uniqueidentifier] NULL,                        -- ���������ID
	[vDate] [int] NULL,                                     --����
	--�װ�
	[First_Clinker_Output] [decimal](18, 4) NULL,                     --���ϲ���
    [First_KilnHead_CoalDust] [decimal](18, 4) NULL,                  --Ҥͷ��ú��
	[First_KilnTail_CoalDust] [decimal](18, 4) NULL,                  --Ҥβ��ú��
	[First_sum_CoalDust] [decimal](18, 4) NULL,                       --�ϼ���ú��
	[First_CoalDustConsumption] [decimal](18, 4) NULL,                --ú��
	--�Ұ�
	[Second_Clinker_Output] [decimal](18, 4) NULL,                     --���ϲ���
    [Second_KilnHead_CoalDust] [decimal](18, 4) NULL,                  --Ҥͷ��ú��
	[Second_KilnTail_CoalDust] [decimal](18, 4) NULL,                  --Ҥβ��ú��
	[Second_sum_CoalDust] [decimal](18, 4) NULL,                       --�ϼ���ú��
	[Second_CoalDustConsumption] [decimal](18, 4) NULL,                --ú��
	--����
	[Third_Clinker_Output] [decimal](18, 4) NULL,                     --���ϲ���
    [Third_KilnHead_CoalDust] [decimal](18, 4) NULL,                  --Ҥͷ��ú��
	[Third_KilnTail_CoalDust] [decimal](18, 4) NULL,                  --Ҥβ��ú��
	[Third_sum_CoalDust] [decimal](18, 4) NULL,                       --�ϼ���ú��
	[Third_CoalDustConsumption] [decimal](18, 4) NULL,                --ú��
	--�ϼ�
	[Amountto_Clinker_Output] [decimal](18, 4) NULL,                     --���ϲ���
    [Amountto_KilnHead_CoalDust] [decimal](18, 4) NULL,                  --Ҥͷ��ú��
	[Amountto_KilnTail_CoalDust] [decimal](18, 4) NULL,                  --Ҥβ��ú��
	[Amountto_sum_CoalDust] [decimal](18, 4) NULL,                       --�ϼ���ú��
	[Amountto_CoalDustConsumption] [decimal](18, 4) NULL,                --ú��
)
GO

CREATE TABLE [dbo].[report_MonthlyEnergyConsumption](        --��Դ������ͳ�Ʒ�������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --����ID
	[KeyID] [uniqueidentifier] NULL,                        -- ���������ID
	[Name] [varchar](max)  NULL,                            --��������
	[Electricity_RawBatch] [decimal](18, 4) NULL,                     -- ����-�����Ʊ�
	[Electricity_Clinker] [decimal](18, 4) NULL,                      -- ����-�����ճ�
	[Electricity_Cement] [decimal](18, 4) NULL,                       -- ����-ˮ���Ʊ�
	[Consumption_CoalDust] [decimal](18, 4) NULL,                     -- ������-ú��
	[Output_RawBatch] [decimal](18, 4) NULL,                          -- ����-�����Ʊ�
	[Output_Clinker] [decimal](18, 4) NULL,                           -- ����-�����ճ�
	[Output_Cement] [decimal](18, 4) NULL,                            -- ����-ˮ���Ʊ�
	[Output_Cogeneration] [decimal](18, 4) NULL,                      -- ����-���ȷ��緢����
	[ElectricityConsumption_RawBatch] [decimal](18, 4) NULL,          -- ���-�����Ʊ�
	[ElectricityConsumption_Clinker] [decimal](18, 4) NULL,           -- ���-�����ճ�
	[ElectricityConsumption_Cement] [decimal](18, 4) NULL,            -- ���-ˮ���Ʊ�
	[ComprehensiveElectricityConsumption] [decimal](18, 4) NULL,      -- �������ۺϵ��
	[ComprehensiveCoalConsumption] [decimal](18, 4) NULL,             -- �������ۺ�ʵ��ú��
	[ComprehensiveElectricityOutput] [decimal](18, 4) NULL,           -- �����Ϸ�����
) 

GO

CREATE TABLE [dbo].[report_YearlyEnergyConsumption](         --��Դ������ͳ�Ʒ�������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --����ID
	[KeyID] [uniqueidentifier] NULL,                        -- ���������ID
	[Name] [varchar](max)  NULL,                            --��������
	[Electricity_RawBatch] [bigint] NULL,                     -- ����-�����Ʊ�
	[Electricity_Clinker] [bigint] NULL,                      -- ����-�����ճ�
	[Electricity_Cement] [bigint] NULL,                       -- ����-ˮ���Ʊ�
	[Consumption_CoalDust] [bigint] NULL,                     -- ������-ú��
	[Output_RawBatch] [bigint] NULL,                          -- ����-�����Ʊ�
	[Output_Clinker] [bigint] NULL,                           -- ����-�����ճ�
	[Output_Cement] [bigint] NULL,                            -- ����-ˮ���Ʊ�
	[Output_Cogeneration] [bigint] NULL,                      -- ����-���ȷ��緢����
	[ElectricityConsumption_RawBatch] [decimal](18, 4) NULL,         -- ���-�����Ʊ�
	[ElectricityConsumption_Clinker] [decimal](18, 4) NULL,           -- ���-�����ճ�
	[ElectricityConsumption_Cement] [decimal](18, 4) NULL,           -- ���-ˮ���Ʊ�
	[ComprehensiveElectricityConsumption] [decimal](18, 4) NULL,      -- �������ۺϵ��
	[ComprehensiveCoalConsumption] [decimal](18, 4) NULL,             -- �������ۺ�ʵ��ú��
	[ComprehensiveElectricityOutput] [decimal](18, 4) NULL,          -- �����Ϸ�����
)
GO

CREATE TABLE [dbo].[report_CementMilEnergyConsumption_TargetCompletion](		-- ˮ��ĥ�ܺ�ָ��������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,							-- ����ID
	[KeyID] [uniqueidentifier] NULL,											-- ���������ID
	[Name] [varchar](max)  NULL,												-- ָ����Ŀ����
	[Monthly_Target] [bigint] NULL,												-- ����ָ��
	[Today_Completion] [decimal](18, 4) NULL,									-- �������
	[Monthly_Accumulative] [bigint] NULL,										-- �����ۼ�
    [Monthly_Gap] [bigint] NULL,												-- ���²��
	[Yearly_Target] [bigint] NULL,												-- ����ָ��
	[Yearly_Accumulative] [bigint] NULL,										-- �����ۼ�
    [Yearly_Gap] [bigint] NULL,													-- ������
)

CREATE TABLE [dbo].[report_ClinkerEnergyConsumption_TargetCompletion](			-- �ܺ�ָ��������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,							-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[Name] [varchar](max)  NULL,												-- ָ����Ŀ����
	[Monthly_Target] [bigint] NULL,												-- ����ָ��
	[Today_Completion] [decimal](18, 4) NULL,									-- �������
	[Monthly_Accumulative] [bigint] NULL,										-- �����ۼ�
    [Monthly_Gap] [bigint] NULL,												-- ���²��
	[Yearly_Target] [bigint] NULL,												-- ����ָ��
	[Yearly_Accumulative] [bigint] NULL,										-- �����ۼ�
    [Yearly_Gap] [bigint] NULL,													-- ������
)
GO

CREATE TABLE [dbo].[report_ClinkerMonthlyProcessEnergyConsumption](--�������������ܺ���ͳ�Ʊ���
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      --����ID
	[KeyID] [uniqueidentifier] NULL,                        -- ���������ID
	[vDate] [int] NULL,                                     -- ����
     --�װ�
	[First_Electricity_RawBatch]  [decimal](18, 4) NULL,               -- �װ�-����-�����Ʊ�
	[First_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,			---------------------------------zcs���, ����-����ĥ
	[First_Electricity_Clinker]  [decimal](18, 4) NULL,                -- �װ�-����-�����ճ�
	[First_Electricity_CoalDust]  [decimal](18, 4) NULL,               -- �װ�-����-ú���Ʊ�
	[First_Consumption_CoalDust]  [decimal](18, 4) NULL,               -- �װ�-������-ú��
	[First_Output_RawBatch]  [decimal](18, 4) NULL,                    -- �װ�-����-�����Ʊ�
	[First_Output_Clinker]  [decimal](18, 4) NULL,                     -- �װ�-����-�����ճ�
	[First_Output_CoalDust]  [decimal](18, 4) NULL,                    -- �װ�-����-ú���Ʊ�
	[First_Output_Cogeneration]  [decimal](18, 4) NULL,                -- �װ�-����-���ȷ��緢����
	[First_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,    -- �װ�-���-�����Ʊ�
	[First_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, --------------------------zcs��ӣ����-����ĥ 
	[First_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,     -- �װ�-���-�����ճ�
	[First_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,    -- �װ�-���-ú���Ʊ�
	[First_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,-- �װ�-�ۺϵ��
	[First_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,       -- �װ�-ʵ��ú��
     --�Ұ�
	[Second_Electricity_RawBatch]  [decimal](18, 4) NULL,              -- �Ұ�-����-�����Ʊ�
	[Second_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,			---------------------------------zcs���,����-����ĥ
	[Second_Electricity_Clinker]  [decimal](18, 4) NULL,               -- �Ұ�-����-�����ճ�
	[Second_Electricity_CoalDust]  [decimal](18, 4) NULL,              -- �Ұ�-����-ú���Ʊ�
	[Second_Consumption_CoalDust]  [decimal](18, 4) NULL,              -- �Ұ�-������-ú��
	[Second_Output_RawBatch]  [decimal](18, 4) NULL,                   -- �Ұ�-����-�����Ʊ�
	[Second_Output_Clinker]  [decimal](18, 4) NULL,                    -- �Ұ�-����-�����ճ�
	[Second_Output_CoalDust]  [decimal](18, 4) NULL,                   -- �Ұ�-����-ú���Ʊ�
	[Second_Output_Cogeneration]  [decimal](18, 4) NULL,               -- �Ұ�-����-���ȷ��緢����
	[Second_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,   -- �Ұ�-���-�����Ʊ�
	[Second_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, --------------------------zcs��ӣ����-����ĥ 
	[Second_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,    -- �Ұ�-���-�����ճ�
	[Second_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,   -- �Ұ�-���-ú���Ʊ�
	[Second_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,-- �Ұ�-�ۺϵ��
	[Second_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,      -- �Ұ�-ʵ��ú��
     --����
	[Third_Electricity_RawBatch]  [decimal](18, 4) NULL,               -- ����-����-�����Ʊ�
	[Third_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,			---------------------------------zcs���,����-����ĥ
	[Third_Electricity_Clinker]  [decimal](18, 4) NULL,                -- ����-����-�����ճ�
	[Third_Electricity_CoalDust]  [decimal](18, 4) NULL,               -- ����-����-ú���Ʊ�
	[Third_Consumption_CoalDust]  [decimal](18, 4) NULL,               -- ����-������-ú��
	[Third_Output_RawBatch]  [decimal](18, 4) NULL,                    -- ����-����-�����Ʊ�
	[Third_Output_Clinker]  [decimal](18, 4) NULL,                     -- ����-����-�����ճ�
	[Third_Output_CoalDust]  [decimal](18, 4) NULL,                    -- ����-����-ú���Ʊ�
	[Third_Output_Cogeneration]  [decimal](18, 4) NULL,                -- ����-����-���ȷ��緢����
	[Third_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,    -- ����-���-�����Ʊ�
	[Third_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, --------------------------zcs��ӣ����-����ĥ 
	[Third_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,     -- ����-���-�����ճ�
	[Third_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,    -- ����-���-ú���Ʊ�
	[Third_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,-- ����-�ۺϵ��
	[Third_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,       -- ����-ʵ��ú��
     --�պϼ�
	[Amountto_Electricity_RawBatch]  [decimal](18, 4) NULL,               -- �պϼ�-����-�����Ʊ�
	[Amountto_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,			---------------------------------zcs���
	[Amountto_Electricity_Clinker]  [decimal](18, 4) NULL,                -- �պϼ�-����-�����ճ�
	[Amountto_Electricity_CoalDust]  [decimal](18, 4) NULL,               -- �պϼ�-����-ú���Ʊ�
	[Amountto_Consumption_CoalDust]  [decimal](18, 4) NULL,               -- �պϼ�-������-ú��
	[Amountto_Output_RawBatch]  [decimal](18, 4) NULL,                    -- �պϼ�-����-�����Ʊ�
	[Amountto_Output_Clinker]  [decimal](18, 4) NULL,                     -- �պϼ�-����-�����ճ�
	[Amountto_Output_CoalDust]  [decimal](18, 4) NULL,                    -- �պϼ�-����-ú���Ʊ�
	[Amountto_Output_Cogeneration]  [decimal](18, 4) NULL,                -- �պϼ�-����-���ȷ��緢����
	[Amountto_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,    -- �պϼ�-���-�����Ʊ�
	[Amountto_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, --------------------------zcs��ӣ����-����ĥ 
	[Amountto_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,     -- �պϼ�-���-�����ճ�
	[Amountto_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,    -- �պϼ�-���-ú���Ʊ�
	[Amountto_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,-- �պϼ�-�ۺϵ��
	[Amountto_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,       -- �պϼ�-ʵ��ú��
) 
GO

CREATE TABLE [dbo].[report_ClinkerYearlyProcessEnergyConsumption](				-- �������������ܺ���ͳ�Ʊ���
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,             				-- ����ID
	[KeyID] [uniqueidentifier] NULL,                               				-- ���������ID
	[vDate] [nchar](2) NULL,                                       				-- ����
	[Electricity_RawBatch_Monthly] [real] NULL,                    				-- ����-�����Ʊ�_����
	[Electricity_RawBatch_Accumulative] [real] NULL,               				-- ����-�����Ʊ�_�ۼ�
	[Electricity_RawBatchMil_Monthly][real] NULL,                  				-- ����-����ĥ_���� 
	[Electricity_RawBatchMil_Accumulative][real] NULL,             				-- ����-����ĥ_�ۼ�
	[Electricity_Clinker_Monthly] [real] NULL,                     				-- ����-�����ճ�_����
	[Electricity_Clinker_Accumulative] [real] NULL,                				-- ����-�����ճ�_�ۼ�
	[Electricity_CoalDust_Monthly] [real] NULL,                    				-- ����-ú���Ʊ�_����
	[Electricity_CoalDust_Accumulative] [real] NULL,               				-- ����-ú���Ʊ�_�ۼ�
	[Consumption_CoalDust_Monthly] [real] NULL,                    				-- ������-ú��_����
	[Consumption_CoalDust_Accumulative] [real] NULL,               				-- ������-ú��_�ۼ�
	[Output_RawBatch_Monthly] [real] NULL,                         				-- ����-�����Ʊ�_����
	[Output_RawBatch_Accumulative] [real] NULL,                    				-- ����-�����Ʊ�_�ۼ�
	[Output_Clinker_Monthly] [real] NULL,                          				-- ����-�����ճ�_����
	[Output_Clinker_Accumulative] [real] NULL,                     				-- ����-�����ճ�_�ۼ�
	[Output_CoalDust_Monthly] [real] NULL,                         				-- ����-ú���Ʊ�_����
	[Output_CoalDust_Accumulative] [real] NULL,                    				-- ����-ú���Ʊ�_�ۼ�
	[Output_Cogeneration_Monthly] [real] NULL,                     				-- ����-���ȷ��緢����_����
	[Output_Cogeneration_Accumulative] [real] NULL,                				-- ����-���ȷ��緢����_�ۼ�
	[ElectricityConsumption_RawBatch_Monthly] [real] NULL,         				-- ���-�����Ʊ�_����
	[ElectricityConsumption_RawBatch_Accumulative] [real] NULL,    				-- ���-�����Ʊ�_�ۼ�
	[ElectricityConsumption_RawBatchMill_Monthly][real] NULL,      				-- ���-����ĥ_����
	[ElectricityConsumption_RawBatchMill_Accumulative][real] NULL, 				-- ���-����ĥ_�ۼ�
	[ElectricityConsumption_Clinker_Monthly] [real] NULL,         	 			-- ���-�����ճ�_����
	[ElectricityConsumption_Clinker_Accumulative] [real] NULL,     				-- ���-�����ճ�_�ۼ�
	[ElectricityConsumption_CoalDust_Monthly] [real] NULL,         				-- ���-ú���Ʊ�_����
	[ElectricityConsumption_CoalDust_Accumulative] [real] NULL,    				-- ���-ú���Ʊ�_�ۼ�
	[ComprehensiveElectricityConsumption_Monthly] [real] NULL,     				-- �ۺϵ��_����
	[ComprehensiveElectricityConsumption_Accumulative] [real] NULL,				-- �ۺϵ��_�ۼ�
	[ComprehensiveCoalConsumption_Monthly] [real] NULL,            				-- ʵ��ú��_����
	[ComprehensiveCoalConsumption_Accumulative] [real] NULL,       				-- ʵ��ú��_�ۼ�

) 
GO


CREATE TABLE [dbo].[report_CementMilMonthlyEnergyConsumption](					-- ˮ��ĥ�ܺ���ͳ�Ʒ���
	[ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,							-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [nchar](2) NULL,                                     					-- ����
	--�װ�
	[First_Electricity_Cement] [decimal](18, 4) NULL,							-- ����-ˮ���Ʊ�
	[First_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- ����-ˮ��ĥ
	[First_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- ����-��ϲ��Ʊ�����
	[First_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- ����-��װ��ɢװ
	[First_Output_Cement] [decimal](18, 4) NULL,								-- ����-ˮ���Ʊ�
	[First_Output_BagsBulk] [decimal](18, 4) NULL,								-- ����-��װ��ɢװ
	[First_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- ���-ˮ���Ʊ�
	[First_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- ���-ˮ��ĥ
	[First_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- ���-��װ��ɢװ
	[First_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- �ۺϵ��
	--�Ұ�
	[Second_Electricity_Cement] [decimal](18, 4) NULL,							-- ����-ˮ���Ʊ�
	[Second_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- ����-ˮ��ĥ
	[Second_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,			-- ����-��ϲ��Ʊ�����
	[Second_Electricity_BagsBulk] [decimal](18, 4) NULL,						-- ����-��װ��ɢװ
	[Second_Output_Cement] [decimal](18, 4) NULL,								-- ����-ˮ���Ʊ�
	[Second_Output_BagsBulk] [decimal](18, 4) NULL,								-- ����-��װ��ɢװ
	[Second_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- ���-ˮ���Ʊ�
	[Second_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- ���-ˮ��ĥ
	[Second_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- ���-��װ��ɢװ
	[Second_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 		-- �ۺϵ��
	--����
	[Third_Electricity_Cement] [decimal](18, 4) NULL,							-- ����-ˮ���Ʊ�
	[Third_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- ����-ˮ��ĥ
	[Third_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- ����-��ϲ��Ʊ�����
	[Third_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- ����-��װ��ɢװ
	[Third_Output_Cement] [decimal](18, 4) NULL,								-- ����-ˮ���Ʊ�
	[Third_Output_BagsBulk] [decimal](18, 4) NULL,								-- ����-��װ��ɢװ
	[Third_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- ���-ˮ���Ʊ�
	[Third_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- ���-ˮ��ĥ
	[Third_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- ���-��װ��ɢװ
	[Third_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- �ۺϵ��
	--�ϼ�
	[Amountto_Electricity_Cement] [decimal](18, 4) NULL,						-- ����-ˮ���Ʊ�
	[Amountto_Electricity_CementGrinding] [decimal](18, 4) NULL,				-- ����-ˮ��ĥ
	[Amountto_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,			-- ����-��ϲ��Ʊ�����
	[Amountto_Electricity_BagsBulk] [decimal](18, 4) NULL,						-- ����-��װ��ɢװ
	[Amountto_Output_Cement] [decimal](18, 4) NULL,								-- ����-ˮ���Ʊ�
	[Amountto_Output_BagsBulk] [decimal](18, 4) NULL,							-- ����-��װ��ɢװ
	[Amountto_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- ���-ˮ���Ʊ�
	[Amountto_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- ���-ˮ��ĥ
	[Amountto_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,			-- ���-��װ��ɢװ
	[Amountto_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 		-- �ۺϵ��
)
GO

CREATE TABLE [dbo].[report_TeamCementMonthlyEnergyConsumption](					--����ˮ���ĥ�ܺ���ͳ�Ʒ�������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					--����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,                                     					--����
	--A��
    [TeamA_Electricity_Cement] [decimal](18, 4) NULL,							-- ����-ˮ���Ʊ�
	[TeamA_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- ����-ˮ��ĥ
	[TeamA_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- ����-��ϲ��Ʊ�����
	[TeamA_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- ����-��װ��ɢװ
	[TeamA_Output_Cement] [decimal](18, 4) NULL,								-- ����-ˮ���Ʊ�
	[TeamA_Output_BagsBulk] [decimal](18, 4) NULL,								-- ����-��װ��ɢװ
	[TeamA_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- ���-ˮ���Ʊ�
	[TeamA_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- ���-ˮ��ĥ
	[TeamA_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- ���-��װ��ɢװ
	[TeamA_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- �ۺϵ��
	--B��
    [TeamB_Electricity_Cement] [decimal](18, 4) NULL,							-- ����-ˮ���Ʊ�
	[TeamB_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- ����-ˮ��ĥ
	[TeamB_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- ����-��ϲ��Ʊ�����
	[TeamB_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- ����-��װ��ɢװ
	[TeamB_Output_Cement] [decimal](18, 4) NULL,								-- ����-ˮ���Ʊ�
	[TeamB_Output_BagsBulk] [decimal](18, 4) NULL,								-- ����-��װ��ɢװ
	[TeamB_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- ���-ˮ���Ʊ�
	[TeamB_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- ���-ˮ��ĥ
	[TeamB_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- ���-��װ��ɢװ
	[TeamB_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- �ۺϵ��
	--C��
    [TeamC_Electricity_Cement] [decimal](18, 4) NULL,							-- ����-ˮ���Ʊ�
	[TeamC_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- ����-ˮ��ĥ
	[TeamC_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- ����-��ϲ��Ʊ�����
	[TeamC_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- ����-��װ��ɢװ
	[TeamC_Output_Cement] [decimal](18, 4) NULL,								-- ����-ˮ���Ʊ�
	[TeamC_Output_BagsBulk] [decimal](18, 4) NULL,								-- ����-��װ��ɢװ
	[TeamC_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- ���-ˮ���Ʊ�
	[TeamC_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- ���-ˮ��ĥ
	[TeamC_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- ���-��װ��ɢװ
	[TeamC_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- �ۺϵ��
	--D��
    [TeamD_Electricity_Cement] [decimal](18, 4) NULL,							-- ����-ˮ���Ʊ�
	[TeamD_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- ����-ˮ��ĥ
	[TeamD_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- ����-��ϲ��Ʊ�����
	[TeamD_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- ����-��װ��ɢװ
	[TeamD_Output_Cement] [decimal](18, 4) NULL,								-- ����-ˮ���Ʊ�
	[TeamD_Output_BagsBulk] [decimal](18, 4) NULL,								-- ����-��װ��ɢװ
	[TeamD_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- ���-ˮ���Ʊ�
	[TeamD_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- ���-ˮ��ĥ
	[TeamD_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- ���-��װ��ɢװ
	[TeamD_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- �ۺϵ��
	--�ϼ�
    [Amountto_Electricity_Cement] [decimal](18, 4) NULL,						-- ����-ˮ���Ʊ�
	[Amountto_Electricity_CementGrinding] [decimal](18, 4) NULL,				-- ����-ˮ��ĥ
	[Amountto_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,			-- ����-��ϲ��Ʊ�����
	[Amountto_Electricity_BagsBulk] [decimal](18, 4) NULL,						-- ����-��װ��ɢװ
	[Amountto_Output_Cement] [decimal](18, 4) NULL,								-- ����-ˮ���Ʊ�
	[Amountto_Output_BagsBulk] [decimal](18, 4) NULL,							-- ����-��װ��ɢװ
	[Amountto_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- ���-ˮ���Ʊ�
	[Amountto_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- ���-ˮ��ĥ
	[Amountto_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,			-- ���-��װ��ɢװ
	[Amountto_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 		-- �ۺϵ��
	
) 
GO

CREATE TABLE [dbo].[report_TeamCementYearlyElectricityConsumption](				--����ˮ���ĥ�ܺ���ͳ�Ʒ�������
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					--����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [int] NULL,                                     					--����
	--A��
    [TeamA_Electricity_Cement] [decimal](18, 4) NULL,							-- ����-ˮ���Ʊ�
	[TeamA_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- ����-ˮ��ĥ
	[TeamA_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- ����-��ϲ��Ʊ�����
	[TeamA_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- ����-��װ��ɢװ
	[TeamA_Output_Cement] [decimal](18, 4) NULL,								-- ����-ˮ���Ʊ�
	[TeamA_Output_BagsBulk] [decimal](18, 4) NULL,								-- ����-��װ��ɢװ
	[TeamA_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- ���-ˮ���Ʊ�
	[TeamA_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- ���-ˮ��ĥ
	[TeamA_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- ���-��װ��ɢװ
	[TeamA_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- �ۺϵ��
	--B��
    [TeamB_Electricity_Cement] [decimal](18, 4) NULL,							-- ����-ˮ���Ʊ�
	[TeamB_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- ����-ˮ��ĥ
	[TeamB_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- ����-��ϲ��Ʊ�����
	[TeamB_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- ����-��װ��ɢװ
	[TeamB_Output_Cement] [decimal](18, 4) NULL,								-- ����-ˮ���Ʊ�
	[TeamB_Output_BagsBulk] [decimal](18, 4) NULL,								-- ����-��װ��ɢװ
	[TeamB_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- ���-ˮ���Ʊ�
	[TeamB_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- ���-ˮ��ĥ
	[TeamB_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- ���-��װ��ɢװ
	[TeamB_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- �ۺϵ��
	--C��
    [TeamC_Electricity_Cement] [decimal](18, 4) NULL,							-- ����-ˮ���Ʊ�
	[TeamC_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- ����-ˮ��ĥ
	[TeamC_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- ����-��ϲ��Ʊ�����
	[TeamC_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- ����-��װ��ɢװ
	[TeamC_Output_Cement] [decimal](18, 4) NULL,								-- ����-ˮ���Ʊ�
	[TeamC_Output_BagsBulk] [decimal](18, 4) NULL,								-- ����-��װ��ɢװ
	[TeamC_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- ���-ˮ���Ʊ�
	[TeamC_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- ���-ˮ��ĥ
	[TeamC_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- ���-��װ��ɢװ
	[TeamC_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- �ۺϵ��
	--D��
    [TeamD_Electricity_Cement] [decimal](18, 4) NULL,							-- ����-ˮ���Ʊ�
	[TeamD_Electricity_CementGrinding] [decimal](18, 4) NULL,					-- ����-ˮ��ĥ
	[TeamD_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,				-- ����-��ϲ��Ʊ�����
	[TeamD_Electricity_BagsBulk] [decimal](18, 4) NULL,							-- ����-��װ��ɢװ
	[TeamD_Output_Cement] [decimal](18, 4) NULL,								-- ����-ˮ���Ʊ�
	[TeamD_Output_BagsBulk] [decimal](18, 4) NULL,								-- ����-��װ��ɢװ
	[TeamD_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- ���-ˮ���Ʊ�
	[TeamD_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- ���-ˮ��ĥ
	[TeamD_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,				-- ���-��װ��ɢװ
	[TeamD_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 			-- �ۺϵ��
	--�ϼ�
    [Amountto_Electricity_Cement] [decimal](18, 4) NULL,						-- ����-ˮ���Ʊ�
	[Amountto_Electricity_CementGrinding] [decimal](18, 4) NULL,				-- ����-ˮ��ĥ
	[Amountto_Electricity_AdmixturePreparation] [decimal](18, 4) NULL,			-- ����-��ϲ��Ʊ�����
	[Amountto_Electricity_BagsBulk] [decimal](18, 4) NULL,						-- ����-��װ��ɢװ
	[Amountto_Output_Cement] [decimal](18, 4) NULL,								-- ����-ˮ���Ʊ�
	[Amountto_Output_BagsBulk] [decimal](18, 4) NULL,							-- ����-��װ��ɢװ
	[Amountto_ElectricityConsumption_Cement] [decimal](18, 4) NULL,				-- ���-ˮ���Ʊ�
	[Amountto_ElectricityConsumption_CementGrinding] [decimal](18, 4) NULL,		-- ���-ˮ��ĥ
	[Amountto_ElectricityConsumption_BagsBulk] [decimal](18, 4) NULL,			-- ���-��װ��ɢװ
	[Amountto_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL, 		-- �ۺϵ��
	
) 
GO

CREATE TABLE [dbo].[report_CementMilYearlyEnergyConsumption](					-- ˮ��ĥ�ܺ���ͳ�Ʒ���
	[ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,							-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [nchar](2) NULL,                                     				-- ����
	[Electricity_Cement_Monthly] [decimal](18, 4) NULL,							-- ����-ˮ���Ʊ�_����
	[Electricity_Cement_Accumulative] [decimal](18, 4) NULL,					-- ����-ˮ���Ʊ�_�ۼ�
	[Electricity_CementGrinding_Monthly] [decimal](18, 4) NULL,					-- ����-ˮ��ĥ_����
	[Electricity_CementGrinding_Accumulative] [decimal](18, 4) NULL,			-- ����-ˮ��ĥ_�ۼ�
	[Electricity_AdmixturePreparation_Monthly] [decimal](18, 4) NULL,			-- ����-��ϲ��Ʊ�����_����
	[Electricity_AdmixturePreparation_Accumulative] [decimal](18, 4) NULL,		-- ����-��ϲ��Ʊ�����_�ۼ�
	[Electricity_BagsBulk_Monthly] [decimal](18, 4) NULL,						-- ����-��װ��ɢװ_����
	[Electricity_BagsBulk_Accumulative] [decimal](18, 4) NULL,					-- ����-��װ��ɢװ_�ۼ�
	[Output_Cement_Monthly] [decimal](18, 4) NULL,								-- ����-ˮ���Ʊ�_����
	[Output_Cement_Accumulative] [decimal](18, 4) NULL,							-- ����-ˮ���Ʊ�_�ۼ�
	[Output_BagsBulk_Monthly] [decimal](18, 4) NULL,							-- ����-��װ��ɢװ_����
	[Output_BagsBulk_Accumulative] [decimal](18, 4) NULL,								-- ����-��װ��ɢװ_�ۼ�
	[ElectricityConsumption_Cement_Monthly] [decimal](18, 4) NULL,				        -- ���-ˮ���Ʊ�_����
	[ElectricityConsumption_Cement_Accumulative] [decimal](18, 4) NULL,				    -- ���-ˮ���Ʊ�_�ۼ�
	[ElectricityConsumption_CementGrinding_Monthly] [decimal](18, 4) NULL,		        -- ���-ˮ��ĥ_����
	[ElectricityConsumption_CementGrinding_Accumulative] [decimal](18, 4) NULL,		    -- ���-ˮ��ĥ_�ۼ�
	[ElectricityConsumption_BagsBulk_Monthly] [decimal](18, 4) NULL,				    -- ���-��װ��ɢװ_����
	[ElectricityConsumption_BagsBulk_Accumulative] [decimal](18, 4) NULL,				-- ���-��װ��ɢװ_�ۼ�
	[ComprehensiveElectricityConsumption_Monthly] [decimal](18, 4) NULL, 			    -- �ۺϵ��_����
	[ComprehensiveElectricityConsumption_Accumulative] [decimal](18, 4) NULL, 			-- �ۺϵ��_�ۼ�
)
GO

CREATE TABLE [dbo].[report_TeamClinkerYearlyProcessEnergyConsumption](			-- �������������ܺ���ͳ�Ʒ���
    [ID] [uniqueidentifier] DEFAULT(newid()) NOT NULL,      					-- ����ID
	[KeyID] [uniqueidentifier] NULL,                        					-- ���������ID
	[vDate] [nchar](2) NULL,                                     				-- ����
      --A��
	[TeamA_Electricity_RawBatch]  [decimal](18, 4) NULL,               			-- ����-�����Ʊ�
	[TeamA_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,					---����-����ĥ
	[TeamA_Electricity_Clinker]  [decimal](18, 4) NULL,                			-- ����-�����ճ�
	[TeamA_Electricity_CoalDust]  [decimal](18, 4) NULL,               			-- ����-ú���Ʊ�
	[TeamA_Consumption_CoalDust]  [decimal](18, 4) NULL,               			-- ������-ú��
	[TeamA_Output_RawBatch]  [decimal](18, 4) NULL,                    			-- ����-�����Ʊ�
	[TeamA_Output_Clinker]  [decimal](18, 4) NULL,                     			-- ����-�����ճ�
	[TeamA_Output_CoalDust]  [decimal](18, 4) NULL,                    			-- ����-ú���Ʊ�
	[TeamA_Output_Cogeneration]  [decimal](18, 4) NULL,                			-- ����-���ȷ��緢����
	[TeamA_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,    			-- ���-�����Ʊ�
	[TeamA_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, 		-- ���-����ĥ 
	[TeamA_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,     			-- ���-�����ճ�
	[TeamA_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,    			-- ���-ú���Ʊ�
	[TeamA_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,			-- �ۺϵ��
	[TeamA_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,       			-- ʵ��ú��
     --B��
	[TeamB_Electricity_RawBatch]  [decimal](18, 4) NULL,              			-- ����-�����Ʊ�
	[TeamB_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,					-- ����-����ĥ
	[TeamB_Electricity_Clinker]  [decimal](18, 4) NULL,               			-- ����-�����ճ�
	[TeamB_Electricity_CoalDust]  [decimal](18, 4) NULL,              			-- ����-ú���Ʊ�
	[TeamB_Consumption_CoalDust]  [decimal](18, 4) NULL,              			-- ������-ú��
	[TeamB_Output_RawBatch]  [decimal](18, 4) NULL,                   			-- ����-�����Ʊ�
	[TeamB_Output_Clinker]  [decimal](18, 4) NULL,                    			-- ����-�����ճ�
	[TeamB_Output_CoalDust]  [decimal](18, 4) NULL,                   			-- ����-ú���Ʊ�
	[TeamB_Output_Cogeneration]  [decimal](18, 4) NULL,               			-- ����-���ȷ��緢����
	[TeamB_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,   			-- ���-�����Ʊ�
	[TeamB_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, 		-- ���-����ĥ 
	[TeamB_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,    			-- ���-�����ճ�
	[TeamB_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,   			-- ���-ú���Ʊ�
	[TeamB_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,			-- �ۺϵ��
	[TeamB_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,      			-- ʵ��ú��
     --C��
	[TeamC_Electricity_RawBatch]  [decimal](18, 4) NULL,               			-- ����-�����Ʊ�
	[TeamC_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,					-- ����-����ĥ
	[TeamC_Electricity_Clinker]  [decimal](18, 4) NULL,                			-- ����-�����ճ�
	[TeamC_Electricity_CoalDust]  [decimal](18, 4) NULL,               			-- ����-ú���Ʊ�
	[TeamC_Consumption_CoalDust]  [decimal](18, 4) NULL,               			-- ������-ú��
	[TeamC_Output_RawBatch]  [decimal](18, 4) NULL,                    			-- ����-�����Ʊ�
	[TeamC_Output_Clinker]  [decimal](18, 4) NULL,                    	 		-- ����-�����ճ�
	[TeamC_Output_CoalDust]  [decimal](18, 4) NULL,                    			-- ����-ú���Ʊ�
	[TeamC_Output_Cogeneration]  [decimal](18, 4) NULL,                			-- ����-���ȷ��緢����
	[TeamC_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,    			-- ���-�����Ʊ�
	[TeamC_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, 		-- ���-����ĥ 
	[TeamC_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,     			-- ���-�����ճ�
	[TeamC_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,    			-- ���-ú���Ʊ�
	[TeamC_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,			-- �ۺϵ��
	[TeamC_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,       			-- ʵ��ú��
	--D��
	[TeamD_Electricity_RawBatch]  [decimal](18, 4) NULL,               			-- ����-�����Ʊ�
	[TeamD_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,					-- ����-����ĥ
	[TeamD_Electricity_Clinker]  [decimal](18, 4) NULL,                			-- ����-�����ճ�
	[TeamD_Electricity_CoalDust]  [decimal](18, 4) NULL,               			-- ����-ú���Ʊ�
	[TeamD_Consumption_CoalDust]  [decimal](18, 4) NULL,               			-- ������-ú��
	[TeamD_Output_RawBatch]  [decimal](18, 4) NULL,                    			-- ����-�����Ʊ�
	[TeamD_Output_Clinker]  [decimal](18, 4) NULL,                     			-- ����-�����ճ�
	[TeamD_Output_CoalDust]  [decimal](18, 4) NULL,                    			-- ����-ú���Ʊ�
	[TeamD_Output_Cogeneration]  [decimal](18, 4) NULL,                			-- ����-���ȷ��緢����
	[TeamD_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,    			-- ���-�����Ʊ�
	[TeamD_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, 		-- ���-����ĥ 
	[TeamD_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,     			-- ���-�����ճ�
	[TeamD_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,    			-- ���-ú���Ʊ�
	[TeamD_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,			-- �ۺϵ��
	[TeamD_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,       			-- ʵ��ú��
     --�պϼ�
	[Amountto_Electricity_RawBatch]  [decimal](18, 4) NULL,               		-- �պϼ�-����-�����Ʊ�
	[Amountto_Electricity_RawBatchGrinding] [decimal](18, 4) NULL,				-- �պϼ�-����-�����Ʊ�
	[Amountto_Electricity_Clinker]  [decimal](18, 4) NULL,                		-- �պϼ�-����-�����ճ�
	[Amountto_Electricity_CoalDust]  [decimal](18, 4) NULL,               		-- �պϼ�-����-ú���Ʊ�
	[Amountto_Consumption_CoalDust]  [decimal](18, 4) NULL,               		-- �պϼ�-������-ú��
	[Amountto_Output_RawBatch]  [decimal](18, 4) NULL,                    		-- �պϼ�-����-�����Ʊ�
	[Amountto_Output_Clinker]  [decimal](18, 4) NULL,                     		-- �պϼ�-����-�����ճ�
	[Amountto_Output_CoalDust]  [decimal](18, 4) NULL,                    		-- �պϼ�-����-ú���Ʊ�
	[Amountto_Output_Cogeneration]  [decimal](18, 4) NULL,                		-- �պϼ�-����-���ȷ��緢����
	[Amountto_ElectricityConsumption_RawBatch]  [decimal](18, 4) NULL,    		-- �պϼ�-���-�����Ʊ�
	[Amountto_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL, 	--------------------------zcs��ӣ����-����ĥ 
	[Amountto_ElectricityConsumption_Clinker]  [decimal](18, 4) NULL,     		-- �պϼ�-���-�����ճ�
	[Amountto_ElectricityConsumption_CoalDust]  [decimal](18, 4) NULL,    		-- �պϼ�-���-ú���Ʊ�
	[Amountto_ComprehensiveElectricityConsumption]  [decimal](18, 4) NULL,		-- �պϼ�-�ۺϵ��
	[Amountto_ComprehensiveCoalConsumption]  [decimal](18, 4) NULL,       		-- �պϼ�-ʵ��ú��
) 
GO