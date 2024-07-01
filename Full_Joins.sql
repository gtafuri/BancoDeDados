SELECT
    f.CD AS FabricanteCD,
    f.nome AS FabricanteNome,
    v.CD AS VacinaCD,
    v.doença AS VacinaDoença,
    v.lote AS VacinaLote,
    v.dataVencimento AS VacinaDataVencimento,
    v.dose AS VacinaDose,
    v.dataAplicação AS VacinaDataAplicação,
    v.CDFabricante AS VacinaCDFabricante
FROM
    Fabricante f
FULL JOIN
    Vacina v ON f.CD = v.CDFabricante;
