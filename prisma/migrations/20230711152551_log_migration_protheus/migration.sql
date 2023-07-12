BEGIN TRY

BEGIN TRAN;

-- CreateTable
CREATE TABLE [dbo].[logIntegracaoProtheus] (
    [id] INT NOT NULL IDENTITY(1,1),
    [endPoint] VARCHAR(155) NOT NULL,
    [json] VARCHAR(max) NOT NULL,
    [status] INT NOT NULL,
    [data] DATETIME2 NOT NULL,
    CONSTRAINT [logIntegracaoProtheus_pkey] PRIMARY KEY CLUSTERED ([id])
);

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
