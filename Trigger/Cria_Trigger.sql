-- Criação do trigger
CREATE TRIGGER AtualizarDataAplicaçãoVacina
ON Vacinação
AFTER INSERT
AS
BEGIN

-- Atualizar a data de aplicação na tabela Vacina para a data atual
UPDATE Vacina
SET dataAplicação = GETDATE()

FROM Vacina v

INNER JOIN inserted i ON v.CD = i. CDVacina;

END;
GO