
-- 根据组织结构ID（分厂）获取当前班次设置

SELECT	*
FROM	[dbo].[system_ShiftDescription]
WHERE	[OrganizationID] = 1 AND [CreatedDate] in (
SELECT	MAX([CreatedDate]) FROM [dbo].[system_ShiftDescription]
WHERE	[OrganizationID] = 1
)