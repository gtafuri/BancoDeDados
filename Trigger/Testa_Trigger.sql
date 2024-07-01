-- Inserir um novo registro na tabela Vacinação para testar o trigger
-- Certifique-se de fornecer um valor único para a coluna CD
INSERT INTO Vacinação (CD, CDAplicador, CDPosto, CDVacina, CDPaciente)
VALUES (70001, 100001, 30001, 50001, 200001);

-- Verificar se a data de aplicação na tabela Vacina foi atualizada corretamente
SELECT * FROM Vacina WHERE CD = 50001;