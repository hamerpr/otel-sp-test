USE [MuleSoftBridge]
GO
/****** Object:  StoredProcedure [mule].[sp_getDWP]    Script Date: 14/05/2025 11:58:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Phil Hamer
-- Create date: 15/05/2023
-- Description:	Returns DWP Details for a passed-in 
--				Client Number & Currency
-- =============================================
ALTER PROCEDURE [mule].[sp_getDWP](@payload NVARCHAR(MAX)) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Count BIGINT = 0;
	DECLARE @maxFloat FLOAT = (CAST('1.79E+308' AS float))
	-- Variable declarations
	DECLARE @v_clientNo VARCHAR(12),
			@v_ccy VARCHAR(3),
			@v_value FLOAT,
			@v_type VARCHAR(6)

	-- Assign the variables from the passed-in JSON data structure
	BEGIN
		SELECT @v_clientNo=clientNo,
			   @v_ccy=ccy,
			   @v_value=value,
			   @v_type=type
		FROM
			OPENJSON(@payload)
		WITH
		(
			clientNo VARCHAR(12),
			ccy VARCHAR(3),
			value FLOAT,
			type VARCHAR(6)
		)
	END 

	SET @v_value=CAST(ROUND(@v_value, 0, 1) AS INT)

	-- MT103 messages are handled differently to MT2XX messages, so process the request based on the passed-in type
	IF @v_type = '103'
		BEGIN
			BEGIN
				CREATE TABLE #tmpDWP(
					[CCY] [varchar](3) NULL,
					[CLIENT_NO] [varchar](12) NULL,
					[DWP_SEQ_NO] [bigint] NOT NULL,
					[TAG53_OPT] [varchar](1) NULL,
					[TAG53_BIC] [varchar](11) NULL,
					[TAG53_ACCOUNT] [varchar](34) NULL,
					[TAG53_ADDRESS] [varchar](143) NULL,
					[LIMIT_FROM] [float] NULL,
					[LIMIT_TO] [float] NULL
				)
			END
			BEGIN
				INSERT INTO #tmpDWP 
					SELECT [CCY],
						[CLIENT_NO],
						[DWP_SEQ_NO],
						[TAG53_OPT],
						[TAG53_BIC],
						[TAG53_ACCOUNT],
						[TAG53_ADDRESS],
						[LIMIT_FROM],
						[LIMIT_TO]
					FROM [mule].[CBS_FT_DWP] 
					WHERE @v_value BETWEEN (ISNULL([LIMIT_FROM],0)) AND (ISNULL([LIMIT_TO],@maxFloat))
					AND [DWP_SEQ_NO] IN
						(SELECT [DWP_SEQ_NO] 
						 FROM [mule].[CBS_FT_DWP_CLIENT] C 
						 WHERE [CLIENT_NO]=@v_clientNo 
						 AND [DWP_SEQ_NO] IN
							(SELECT [DWP_SEQ_NO] 
							 FROM [mule].[CBS_FT_DWP] D 
							 WHERE [CCY]=@v_ccy 
							 AND [BNK_ID] IS NULL 
							 AND [CC_BNK_ID]='A1')
						)
			END

			SELECT @Count = COUNT(*) FROM #tmpDWP

			IF 0 = @Count
			BEGIN
				INSERT INTO #tmpDWP
					SELECT [CCY],
						[CLIENT_NO],
						[DWP_SEQ_NO],
						[TAG53_OPT],
						[TAG53_BIC],
						[TAG53_ACCOUNT],
						[TAG53_ADDRESS],
						[LIMIT_FROM],
						[LIMIT_TO]
					FROM [mule].[CBS_FT_DWP] 
					WHERE [CCY]=@v_ccy 
					AND [BNK_ID] IS NULL 
					AND [CC_BNK_ID]='A1' 
					AND @v_value BETWEEN (ISNULL([LIMIT_FROM],0)) AND (ISNULL([LIMIT_TO],@maxFloat))
					AND [DWP_SEQ_NO] NOT IN
						(SELECT [DWP_SEQ_NO] 
						 FROM [mule].[CBS_FT_DWP_CLIENT] C 
						 WHERE [DWP_SEQ_NO] IN
						 (SELECT [DWP_SEQ_NO] 
						  FROM [mule].[CBS_FT_DWP] D 
						  WHERE [CCY]=@v_ccy 
						  AND [BNK_ID] IS NULL 
						  AND [CC_BNK_ID]='A1')
					)
			END

			-- Return the results
			SELECT * FROM #tmpDWP
		END
	END
END
