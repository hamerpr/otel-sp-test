USE [MuleSoftBridge]
GO
/****** Object:  Table [mule].[CBS_FT_DWP]    Script Date: 14/05/2025 12:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mule].[CBS_FT_DWP](
	[BNK_ID] [varchar](11) NULL,
	[CC_BNK_ID] [varchar](2) NULL,
	[CCY] [varchar](3) NULL,
	[CHRG_BEN] [varchar](1) NULL,
	[CHRG_OUR] [varchar](1) NULL,
	[CHRG_SHA] [varchar](1) NULL,
	[CR_VALUE_DATE] [numeric](2, 0) NULL,
	[IBAN] [varchar](1) NULL,
	[CLIENT_NO] [varchar](12) NULL,
	[ACCT_TYPE] [varchar](1) NULL,
	[ACCT_NO] [varchar](20) NULL,
	[GL_CODE] [varchar](16) NULL,
	[SETTLE_MTD] [varchar](3) NULL,
	[RECEIVER] [varchar](11) NULL,
	[BRANCH] [varchar](6) NULL,
	[SEQ_NO] [numeric](2, 0) NULL,
	[PROFIT_CENTRE] [varchar](12) NULL,
	[DWP_SEQ_NO] [bigint] NOT NULL,
	[TAG53_OPT] [varchar](1) NULL,
	[TAG53_BIC] [varchar](11) NULL,
	[TAG53_ACCOUNT] [varchar](34) NULL,
	[TAG53_ADDRESS] [varchar](143) NULL,
	[LIMIT_FROM] [float] NULL,
	[LIMIT_TO] [float] NULL
) ON [PRIMARY]
GO
INSERT [mule].[CBS_FT_DWP] ([BNK_ID], [CC_BNK_ID], [CCY], [CHRG_BEN], [CHRG_OUR], [CHRG_SHA], [CR_VALUE_DATE], [IBAN], [CLIENT_NO], [ACCT_TYPE], [ACCT_NO], [GL_CODE], [SETTLE_MTD], [RECEIVER], [BRANCH], [SEQ_NO], [PROFIT_CENTRE], [DWP_SEQ_NO], [TAG53_OPT], [TAG53_BIC], [TAG53_ACCOUNT], [TAG53_ADDRESS], [LIMIT_FROM], [LIMIT_TO]) VALUES (NULL, N'A1', N'GBP', N'Y', N'Y', N'Y', NULL, N'N', N'11704', N'N', NULL, N'1740010', N'F03', N'NWBKGB2L', N'HO', CAST(1 AS Numeric(2, 0)), N'BANK', 2059, N'B', NULL, N'60000148568910', NULL, NULL, NULL)
GO
