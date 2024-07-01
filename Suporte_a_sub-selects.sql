-- Listando os nomes dos Pacientes que tomaram a vacina de todos os fabricantes existentes.

SELECT DISTINCT p.CPF, p.nome AS NomePaciente
FROM Pessoa p
WHERE EXISTS (
    SELECT f.CD
    FROM Fabricante f
    WHERE NOT EXISTS (
        SELECT 1
        FROM Vacina v
        WHERE v.CDFabricante = f.CD
        AND NOT EXISTS (
            SELECT 1
            FROM Vacinação va
            WHERE va.CDVacina = v.CD
            AND va.CDPaciente = (
                SELECT pa.CD
                FROM Paciente pa
                WHERE pa.PessoaCPF = p.CPF
            )
        )
    )
)
