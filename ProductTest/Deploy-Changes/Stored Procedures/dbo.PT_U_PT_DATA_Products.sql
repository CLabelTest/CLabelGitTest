IF OBJECT_ID('[dbo].[PT_U_PT_DATA_Products]') IS NOT NULL
	DROP PROCEDURE [dbo].[PT_U_PT_DATA_Products];

GO
SET ANSI_NULLS OFF
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[PT_U_PT_DATA_Products]
(
	@ID				int,
	@Name			varchar(50),
	@CategoryID		int,
	@Price			numeric(9,2)
)
AS

UPDATE	PT_DATA_Products

SET		Name = @Name,
		CategoryID = @CategoryID,
		Price = @Price

WHERE	ID = @ID


GO
