CREATE PROCEDURE PacientesComVacinasVencidas AS
BEGIN
    SELECT
        p.CPF,
        p.nome AS NomePaciente,
        p.dataNascimento AS DataNascimento,
        p.contato AS Contato,
        v.doença AS Doença,
        va.dataAplicação AS DataAplicação,
        v.dataVencimento AS DataVencimento
    FROM
        Vacinação va
    INNER JOIN
        Vacina v ON va.CDVacina = v.CD
    INNER JOIN
        Paciente pa ON va.CDPaciente = pa.CD
    INNER JOIN
        Pessoa p ON pa.PessoaCPF = p.CPF
    WHERE
        va.dataAplicação > v.dataVencimento
    ORDER BY
        p.nome, va.dataAplicação;
END;
GO

-- Executar o procedimento armazenado
EXEC PacientesComVacinasVencidas;
