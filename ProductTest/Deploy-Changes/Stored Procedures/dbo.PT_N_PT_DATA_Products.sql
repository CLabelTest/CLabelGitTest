IF OBJECT_ID('[dbo].[PT_N_PT_DATA_Products]') IS NOT NULL
	DROP PROCEDURE [dbo].[PT_N_PT_DATA_Products];

GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[PT_N_PT_DATA_Products]
(
    @Name				varchar(50),
    @CategoryID			int,
    @Price				numeric(9,2)
    
)
As
    Insert into PT_DATA_Products
    (
		Name,
        CategoryID,
        Price
    )
    VALUES
    (
		@Name,
		@CategoryID,
		@Price
    )


	SELECT IDENT_CURRENT('PT_DATA_Products')

GO
