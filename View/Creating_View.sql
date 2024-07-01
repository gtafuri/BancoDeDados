-- Criando Views de Lotes Vencidos
CREATE VIEW VW_LotesVencidos AS
SELECT CD AS CDVacina,
doença,
lote,
DataVencimento,
dose,
dataAplicação,
CDFabricante
FROM Vacina WHERE dataVencimento < GETDATE();