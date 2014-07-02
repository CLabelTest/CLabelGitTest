﻿IF OBJECT_ID('[dbo].[PT_D_PT_DATA_Products]') IS NOT NULL
	DROP PROCEDURE [dbo].[PT_D_PT_DATA_Products];

GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[PT_D_PT_DATA_Products]
(
	@ID	int
)
AS

DELETE FROM PT_DATA_Products
WHERE ID = @ID
GO