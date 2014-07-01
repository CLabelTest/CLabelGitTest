-- <Migration ID="01fba5c7-b480-49d6-8e89-78dd98d57ffa" />
GO


SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO


Print 'Create Table [dbo].[PT_DECODE_ProductCategories]'
GO
CREATE TABLE [dbo].[PT_DECODE_ProductCategories] (
		[ID]              [int] IDENTITY(1, 1) NOT NULL,
		[Description]     [varchar](100) NULL
) ON [PRIMARY]
GO


Print 'Add Primary Key PK_PT_DECODE_ProductCategories to [dbo].[PT_DECODE_ProductCategories]'
GO
ALTER TABLE [dbo].[PT_DECODE_ProductCategories]
	ADD
	CONSTRAINT [PK_PT_DECODE_ProductCategories]
	PRIMARY KEY
	CLUSTERED
	([ID])
	ON [PRIMARY]
GO


ALTER TABLE [dbo].[PT_DECODE_ProductCategories] SET (LOCK_ESCALATION = TABLE)
GO


SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO


Print 'Create Table [dbo].[PT_DATA_Products]'
GO
CREATE TABLE [dbo].[PT_DATA_Products] (
		[ID]              [int] IDENTITY(1, 1) NOT NULL,
		[Name]            [varchar](50) NOT NULL,
		[CategoryID]      [int] NOT NULL,
		[Price]           [numeric](9, 2) NOT NULL,
		[DateCreated]     [datetime] NOT NULL
) ON [PRIMARY]
GO


Print 'Add Primary Key PK_PT_DATA_Products to [dbo].[PT_DATA_Products]'
GO
ALTER TABLE [dbo].[PT_DATA_Products]
	ADD
	CONSTRAINT [PK_PT_DATA_Products]
	PRIMARY KEY
	CLUSTERED
	([ID])
	ON [PRIMARY]
GO


Print 'Add Default Constraint DF_PT_DATA_Products_DateCreated to [dbo].[PT_DATA_Products]'
GO
ALTER TABLE [dbo].[PT_DATA_Products]
	ADD
	CONSTRAINT [DF_PT_DATA_Products_DateCreated]
	DEFAULT (getdate()) FOR [DateCreated]
GO


ALTER TABLE [dbo].[PT_DATA_Products] SET (LOCK_ESCALATION = TABLE)
GO


