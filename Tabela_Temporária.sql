
-- Criar a tabela temporária 
global CREATE TABLE ##TempFabricantes ( 
CD INT PRIMARY KEY,
nome NVARCHAR(199)
);
-- Inserir dados da tabela Fabricante na tabela temporária  global 
INSERT INTO ##TempFabricantes (CD, nome)
SELECT CD, nome
FROM Fabricante;

-- Consultar os dados na tabela temporária global
SELECT * FROM ##TempFabricantes;