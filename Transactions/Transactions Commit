BEGIN TRANSACTION;

DECLARE @PessoaCPF BIGINT = 12345678901; -- CPF da pessoa que será atualizada
DECLARE @NovoContato BIGINT = 21993798068; -- Novo número de contato

UPDATE Pessoa
SET contato = @NovoContato
WHERE CPF = @PessoaCPF;

COMMIT TRANSACTION;

SELECT * FROM Pessoa WHERE CPF = @PessoaCPF;
