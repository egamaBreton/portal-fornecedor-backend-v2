BEGIN TRY

BEGIN TRAN;

-- CreateTable
CREATE TABLE [dbo].[protheusarmazem] (
    [id] INT NOT NULL IDENTITY(1,1),
    [name] VARCHAR(50) NOT NULL,
    [externalCode] VARCHAR(50) NOT NULL,
    [isActive] BIT NOT NULL,
    [companyExternalCode] VARCHAR(50) NOT NULL,
    [companyName] VARCHAR(50) NOT NULL,
    [subsidiaryExternalCode] VARCHAR(50) NOT NULL,
    [subsidiaryName] VARCHAR(50) NOT NULL,
    CONSTRAINT [protheusarmazem_pkey] PRIMARY KEY CLUSTERED ([id])
);

-- CreateTable
CREATE TABLE [dbo].[protheuscategoria] (
    [id] INT NOT NULL IDENTITY(1,1),
    [name] VARCHAR(50) NOT NULL,
    [catalogUrlVideo] VARCHAR(50) NOT NULL,
    [catalogContent] VARCHAR(50) NOT NULL,
    [externalCode] VARCHAR(50) NOT NULL,
    [isActive] BIT NOT NULL,
    [companyExternalCode] VARCHAR(50) NOT NULL,
    [companyName] VARCHAR(50) NOT NULL,
    [subsidiaryExternalCode] VARCHAR(50) NOT NULL,
    [subsidiaryName] VARCHAR(100) NOT NULL,
    [productCategoryExternalCode] VARCHAR(50) NOT NULL,
    CONSTRAINT [protheuscategoria_pkey] PRIMARY KEY CLUSTERED ([id])
);

-- CreateTable
CREATE TABLE [dbo].[protheusclassificacao] (
    [id] INT NOT NULL IDENTITY(1,1),
    [name] VARCHAR(50) NOT NULL,
    [externalCode] VARCHAR(50) NOT NULL,
    [isActive] BIT NOT NULL,
    [companyExternalCode] VARCHAR(50) NOT NULL,
    [companyName] VARCHAR(50) NOT NULL,
    [subsidiaryExternalCode] VARCHAR(50) NOT NULL,
    [subsidiaryName] VARCHAR(100) NOT NULL,
    CONSTRAINT [protheusclassificacao_pkey] PRIMARY KEY CLUSTERED ([id])
);

-- CreateTable
CREATE TABLE [dbo].[protheuscolecao] (
    [id] INT NOT NULL IDENTITY(1,1),
    [name] VARCHAR(50) NOT NULL,
    [externalCode] VARCHAR(50) NOT NULL,
    [isActive] BIT NOT NULL,
    [companyExternalCode] VARCHAR(50) NOT NULL,
    [companyName] VARCHAR(50) NOT NULL,
    [subsidiaryExternalCode] VARCHAR(50) NOT NULL,
    [subsidiaryName] VARCHAR(50) NOT NULL,
    CONSTRAINT [protheuscolecao_pkey] PRIMARY KEY CLUSTERED ([id])
);

-- CreateTable
CREATE TABLE [dbo].[protheusfornecedor] (
    [id] INT NOT NULL IDENTITY(1,1),
    [externalCodeColecao] VARCHAR(50) NOT NULL,
    [productSupplierName] VARCHAR(50) NOT NULL,
    [productSupplierCode] VARCHAR(50) NOT NULL,
    [externalCode] VARCHAR(50) NOT NULL,
    [isActive] BIT NOT NULL,
    [productExternalCode] VARCHAR(50) NOT NULL,
    [supplierExternalCode] VARCHAR(50) NOT NULL,
    [supplierStoreCode] VARCHAR(50) NOT NULL,
    [companyExternalCode] VARCHAR(50) NOT NULL,
    [subsidiaryExternalCode] VARCHAR(50) NOT NULL,
    CONSTRAINT [protheusfornecedor_pkey] PRIMARY KEY CLUSTERED ([id])
);

-- CreateTable
CREATE TABLE [dbo].[protheusgrupo] (
    [id] INT NOT NULL IDENTITY(1,1),
    [name] VARCHAR(50) NOT NULL,
    [externalCode] VARCHAR(50) NOT NULL,
    [isActive] BIT NOT NULL,
    [companyExternalCode] VARCHAR(50) NOT NULL,
    [companyName] VARCHAR(50) NOT NULL,
    [subsidiaryExternalCode] VARCHAR(50) NOT NULL,
    [subsidiaryName] VARCHAR(50) NOT NULL,
    CONSTRAINT [protheusgrupo_pkey] PRIMARY KEY CLUSTERED ([id])
);

-- CreateTable
CREATE TABLE [dbo].[protheusgrupotrib] (
    [id] INT NOT NULL IDENTITY(1,1),
    [name] VARCHAR(50) NOT NULL,
    [externalCode] VARCHAR(50) NOT NULL,
    [isActive] BIT NOT NULL,
    [companyExternalCode] VARCHAR(50) NOT NULL,
    [companyName] VARCHAR(50) NOT NULL,
    [subsidiaryExternalCode] VARCHAR(50) NOT NULL,
    [subsidiaryName] VARCHAR(50) NOT NULL,
    CONSTRAINT [protheusgrupotrib_pkey] PRIMARY KEY CLUSTERED ([id])
);

-- CreateTable
CREATE TABLE [dbo].[protheusipincm] (
    [id] INT NOT NULL IDENTITY(1,1),
    [name] VARCHAR(50) NOT NULL,
    [externalCode] VARCHAR(50) NOT NULL,
    [isActive] BIT NOT NULL,
    [companyExternalCode] VARCHAR(50) NOT NULL,
    [subsidiaryExternalCode] VARCHAR(50) NOT NULL,
    CONSTRAINT [protheusipincm_pkey] PRIMARY KEY CLUSTERED ([id])
);

-- CreateTable
CREATE TABLE [dbo].[protheuslinha] (
    [id] INT NOT NULL IDENTITY(1,1),
    [companyExternalCode] VARCHAR(50) NOT NULL,
    [companyName] VARCHAR(50) NOT NULL,
    [subsidiaryExternalCode] VARCHAR(50) NOT NULL,
    [subsidiaryName] VARCHAR(50) NOT NULL,
    [collectionexternalCode] VARCHAR(50) NOT NULL,
    [linedescription] VARCHAR(50) NOT NULL,
    [isActive] BIT NOT NULL,
    [exclusivity] VARCHAR(5) NOT NULL,
    [CoatingLine] VARCHAR(5) NOT NULL,
    CONSTRAINT [protheuslinha_pkey] PRIMARY KEY CLUSTERED ([id])
);

-- CreateTable
CREATE TABLE [dbo].[protheusLoja] (
    [id] INT NOT NULL IDENTITY(1,1),
    [idLoja] VARCHAR(50) NOT NULL,
    [nomeLoja] VARCHAR(50) NOT NULL,
    CONSTRAINT [protheusLoja_pkey] PRIMARY KEY CLUSTERED ([id])
);

-- CreateTable
CREATE TABLE [dbo].[protheusshapes] (
    [id] INT NOT NULL IDENTITY(1,1),
    [name] VARCHAR(50) NOT NULL,
    [externalCode] VARCHAR(50) NOT NULL,
    [isActive] BIT NOT NULL,
    [companyExternalCode] VARCHAR(50) NOT NULL,
    [companyName] VARCHAR(50) NOT NULL,
    [subsidiaryExternalCode] VARCHAR(50) NOT NULL,
    [subsidiaryName] VARCHAR(50) NOT NULL,
    [numberofdimensions] VARCHAR(10) NOT NULL,
    [Dimension1] VARCHAR(50) NOT NULL,
    [Dimension2] VARCHAR(50) NOT NULL,
    [Dimension3] VARCHAR(50) NOT NULL,
    CONSTRAINT [protheusshapes_pkey] PRIMARY KEY CLUSTERED ([id])
);

-- CreateTable
CREATE TABLE [dbo].[protheustipo] (
    [id] INT NOT NULL IDENTITY(1,1),
    [name] VARCHAR(50) NOT NULL,
    [externalCode] VARCHAR(50) NOT NULL,
    [isActive] BIT NOT NULL,
    [companyExternalCode] VARCHAR(50) NOT NULL,
    [subsidiaryExternalCode] VARCHAR(50) NOT NULL,
    CONSTRAINT [protheustipo_pkey] PRIMARY KEY CLUSTERED ([id])
);

-- CreateTable
CREATE TABLE [dbo].[protheusunidade] (
    [id] INT NOT NULL IDENTITY(1,1),
    [name] VARCHAR(50) NOT NULL,
    [externalCode] VARCHAR(50) NOT NULL,
    [isActive] BIT NOT NULL,
    [subsidiaryExternalCode] VARCHAR(50) NOT NULL,
    [companyExternalCode] VARCHAR(50) NOT NULL,
    CONSTRAINT [protheusunidade_pkey] PRIMARY KEY CLUSTERED ([id])
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
