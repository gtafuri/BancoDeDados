-- Declare o cursor
DECLARE curConsulta CURSOR FOR
SELECT
    CONVERT(VARCHAR(10), v.dataAplicação, 103) AS Data,
    p.nome AS Paciente,
    v.lote AS Lote,
    f.nome AS Fabricante
FROM
    Vacinação vac
INNER JOIN
    Paciente pa ON vac.CDPaciente = pa.CD
INNER JOIN
    Pessoa p ON pa.PessoaCPF = p.CPF
INNER JOIN
    Vacina v ON vac.CDVacina = v.CD
INNER JOIN
    Fabricante f ON v.CDFabricante = f.CD;

-- Abrir o cursor
OPEN curConsulta;

-- Declarar variáveis para armazenar os valores do cursor
DECLARE @Data VARCHAR(10), @Paciente NVARCHAR(255), @Lote NVARCHAR(50), @Fabricante NVARCHAR(100);

-- Inicializar o cursor
FETCH NEXT FROM curConsulta INTO @Data, @Paciente, @Lote, @Fabricante;

-- Loop para processar os resultados do cursor
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Imprimir os resultados (pode ser substituído por outra operação desejada)
    PRINT 'Data: ' + @Data + ', Paciente: ' + @Paciente + ', Lote: ' + @Lote + ', Fabricante: ' + @Fabricante;

    -- Avançar para o próximo registro
    FETCH NEXT FROM curConsulta INTO @Data, @Paciente, @Lote, @Fabricante;
END;

-- Fechar o cursor
CLOSE curConsulta;

-- Liberar recursos do cursor
DEALLOCATE curConsulta;
