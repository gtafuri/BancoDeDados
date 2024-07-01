
-- Inserção Invalida
INSERT INTO Vacina (CD, doença, lote, dataVencimento, dose, dataAplicação, CDFabricante, quantidade) 
VALUES 
(50010, 'Febre Amarela', 'L131', DATEADD(DAY, 180, GETDATE()), 1, 01-07-2024, 40001, 150);
-- Quantidade fora do limite