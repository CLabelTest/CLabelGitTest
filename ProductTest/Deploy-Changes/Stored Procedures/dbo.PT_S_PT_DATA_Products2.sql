IF OBJECT_ID('[dbo].[PT_S_PT_DATA_Products2]') IS NOT NULL
	DROP PROCEDURE [dbo].[PT_S_PT_DATA_Products2];

GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PT_S_PT_DATA_Products2]
(
	@ID					int,
    @Name				varchar(50),
    @CategoryID			int
    
)
AS
SELECT
	PTP.ID,
	PTP.Name,
	PTPC.Description AS Category,
	PTP.CategoryID,
	PTP.Price,
	PTP.DateCreated
	
FROM
	PT_DATA_Products PTP
	INNER JOIN PT_DECODE_ProductCategories PTPC ON PTP.CategoryID = PTPC.ID

WHERE (PTP.ID = @ID OR @ID = 0) AND
		(PTP.Name like @Name + '%' OR LEN(@Name) = 0) AND
		(PTP.CategoryID = @CategoryID OR @CategoryID = 0)
	
ORDER BY
	PTP.Name
GO
