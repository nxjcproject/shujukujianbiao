
-- ������֯�ṹID���ֳ�����ȡ��ǰ�������

SELECT	*
FROM	[dbo].[system_ShiftDescription]
WHERE	[OrganizationID] = 1 AND [CreatedDate] in (
SELECT	MAX([CreatedDate]) FROM [dbo].[system_ShiftDescription]
WHERE	[OrganizationID] = 1
)