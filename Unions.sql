
-- Selecionar lotes que venceram há 30 dias
SELECT
CD, 
doença,
lote,
dataVencimento,
dose,
dataAplicação,
CDFabricante
FROM
Vacina
WHERE
dataVencimento BETWEEN DATEADD(DAY, -30, GETDATE()) AND GETDATE()
UNION
-- Selecionar lotes que vencerão nos próximos 30 dias
SELECT
CD, doença, lote,
dataVencimento,
dose,
dataAplicação,
CDFabricante
FROM
Vacina
WHERE
dataVencimento BETWEEN GETDATE() AND DATEADD(DAY, 30, GETDATE());