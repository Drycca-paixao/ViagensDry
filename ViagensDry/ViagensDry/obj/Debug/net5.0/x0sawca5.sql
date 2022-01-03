IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Destinos] (
    [IdDestino] int NOT NULL IDENTITY,
    [LugarDestino] nvarchar(max) NOT NULL,
    [DiaPartida] datetime2 NOT NULL,
    CONSTRAINT [PK_Destinos] PRIMARY KEY ([IdDestino])
);
GO

CREATE TABLE [Passageiros] (
    [IdPassageiro] int NOT NULL IDENTITY,
    [Nome] nvarchar(max) NOT NULL,
    [Email] nvarchar(max) NOT NULL,
    [DataNascimento] datetime2 NOT NULL,
    [Cpf] bigint NOT NULL,
    [DestinoIdDestino] int NOT NULL,
    CONSTRAINT [PK_Passageiros] PRIMARY KEY ([IdPassageiro]),
    CONSTRAINT [FK_Passageiros_Destinos_DestinoIdDestino] FOREIGN KEY ([DestinoIdDestino]) REFERENCES [Destinos] ([IdDestino]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_Passageiros_DestinoIdDestino] ON [Passageiros] ([DestinoIdDestino]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20211227200358_ViagensDry', N'5.0.12');
GO

COMMIT;
GO

