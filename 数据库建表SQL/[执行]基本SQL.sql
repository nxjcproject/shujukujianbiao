
-- ������֯�ṹID���ֳ�����ȡ��ǰ�������

SELECT	*
FROM	[dbo].[system_ShiftDescription]
WHERE	[OrganizationID] = 1 AND [CreatedDate] in (
SELECT	MAX([CreatedDate]) FROM [dbo].[system_ShiftDescription]
WHERE	[OrganizationID] = 1
)

-- ������֯����ID���ֳ�����ȡDCSϵͳ
SELECT * 
FROM [dbo].[system_Organization_Instrumentation] 
WHERE LEN([LevelCode]) = 7 AND [LevelCode] LIKE (
	(SELECT [LevelCode] FROM [dbo].[system_Organization_Instrumentation] 
	WHERE [OrganizationID] = 'C41B1F47-A48A-495F-A890-0AABB2F3BFF7') 
	+ '%' 
)