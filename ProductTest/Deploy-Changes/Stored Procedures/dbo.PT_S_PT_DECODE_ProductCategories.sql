IF OBJECT_ID('[dbo].[PT_S_PT_DECODE_ProductCategories]') IS NOT NULL
	DROP PROCEDURE [dbo].[PT_S_PT_DECODE_ProductCategories];

GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PT_S_PT_DECODE_ProductCategories]
AS

SELECT
	ID,
	Description
	
FROM
	PT_DECODE_ProductCategories
	
ORDER BY
	Description
GO
