



--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

USE [NXJC_DEVELOP]
GO

/****** Object:  Table [dbo].[experience_CaseAnalysis]    Script Date: 2015/1/18 23:55:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[experience_CaseAnalysis](
	[CaseAnalysisId] [varchar](64) NOT NULL,
	[CaseAnalysisName] [varchar](64) NOT NULL,
	[Keyword] [varchar](256) NULL,
	[CaseAnalysisType] [varchar](64) NOT NULL,
	[CaseAnalysisLevel] [int] NOT NULL,
	[CaseAnalysisNature] [varchar](64) NOT NULL,
	[CaseAnalysisText] [text] NULL,
	[CaseAnalysisParticipants] [text] NOT NULL,
	[CaseAnalysisTime] [datetime] NOT NULL,
	[ModifyFlag] [int] NOT NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_experience_CaseAnalysis] PRIMARY KEY CLUSTERED 
(
	[CaseAnalysisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[experience_CaseAnalysis] ADD  CONSTRAINT [DF_experience_CaseAnalysis_OperationCaseId]  DEFAULT (newid()) FOR [CaseAnalysisId]
GO

ALTER TABLE [dbo].[experience_CaseAnalysis] ADD  CONSTRAINT [DF_experience_CaseAnalysis_OperationCaseLevel]  DEFAULT ((1)) FOR [CaseAnalysisLevel]
GO

ALTER TABLE [dbo].[experience_CaseAnalysis] ADD  CONSTRAINT [DF_experience_CaseAnalysis_ModifyFlag]  DEFAULT ((1)) FOR [ModifyFlag]
GO


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


USE [NXJC_DEVELOP]
GO

/****** Object:  Table [dbo].[experience_EnergySavingSuggestions]    Script Date: 2015/1/18 23:55:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[experience_EnergySavingSuggestions](
	[SuggestionsId] [varchar](64) NOT NULL,
	[SuggestionsName] [nvarchar](64) NULL,
	[Keyword] [varchar](256) NULL,
	[PostName] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[SuggestionsType] [varchar](64) NULL,
	[SuggestionsGroup] [varchar](64) NOT NULL,
	[SuggestionsText] [text] NULL,
	[Propounder] [varchar](32) NOT NULL,
	[ProposedTime] [datetime] NOT NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[ModifyFlag] [int] NOT NULL,
	[Remarks] [nvarchar](2048) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[experience_EnergySavingSuggestions] ADD  CONSTRAINT [DF_Table_1_PostOperationKnowledgeId]  DEFAULT (newid()) FOR [SuggestionsId]
GO

ALTER TABLE [dbo].[experience_EnergySavingSuggestions] ADD  CONSTRAINT [DF_experience_EnergySavingSuggestions_ModifyFlag]  DEFAULT ((0)) FOR [ModifyFlag]
GO


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

USE [NXJC_DEVELOP]
GO

/****** Object:  Table [dbo].[experience_PostOperationKnowledge]    Script Date: 2015/1/18 23:56:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[experience_PostOperationKnowledge](
	[PostOperationKnowledgeId] [varchar](64) NOT NULL,
	[PostOperationKnowledgeName] [nvarchar](64) NULL,
	[Keyword] [varchar](256) NULL,
	[PostName] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[PostOperationKnowledgeType] [varchar](64) NULL,
	[PostOperationKnowledgeGroup] [varchar](64) NOT NULL,
	[PostOperationKnowledgeText] [text] NULL,
	[Propounder] [varchar](32) NOT NULL,
	[ProposedTime] [datetime] NOT NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[ModifyFlag] [int] NOT NULL,
	[Remarks] [nvarchar](2048) NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[PostOperationKnowledgeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[experience_PostOperationKnowledge] ADD  CONSTRAINT [DF_Note_EnergyKnowledgeId]  DEFAULT (newid()) FOR [PostOperationKnowledgeId]
GO

ALTER TABLE [dbo].[experience_PostOperationKnowledge] ADD  CONSTRAINT [DF_experience_PostOperationKnowledge_ModifyFlag]  DEFAULT ((0)) FOR [ModifyFlag]
GO

