BEGIN TRANSACTION;

DECLARE @PessoaCPF BIGINT = 12345678901; -- CPF da pessoa que será atualizada
DECLARE @NovoContato BIGINT = 11981230629; -- Novo número de contato

-- Atualizar o número de contato
UPDATE Pessoa
SET contato = @NovoContato
WHERE CPF = @PessoaCPF;

-- Verificar a atualização
SELECT * FROM Pessoa WHERE CPF = @PessoaCPF;

-- Reverter a transação
ROLLBACK;

-- Verificar o estado após o rollback
SELECT * FROM Pessoa WHERE CPF = @PessoaCPF;
