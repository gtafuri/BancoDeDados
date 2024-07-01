-- Inserindo dados na tabela Pessoa
INSERT INTO Pessoa (CPF, nome, dataNascimento, contato, nacionalidade, naturalidade, sexo)
VALUES 
(12345678901, 'Giulia Tafuri', '2003-12-15', 11987654321, 'Brasileira', 'Rio de Janeiro', 'Feminino'),
(23456789012, 'Bianca Silva', '1992-03-22', 11987654322, 'Brasileira', 'Rio de Janeiro', 'Feminino'),
(34567890123, 'Sérgio Palma', '1985-05-10', 11987654323, 'Brasileira', 'Belo Horizonte', 'Masculino'),
(45678901234, 'Ricardo Rodrigues', '1978-08-30', 11987654324, 'Brasileira', 'Curitiba', 'Masculino'),
(56789012345, 'Lucas Souza', '1990-11-11', 11987654325, 'Brasileira', 'Porto Alegre', 'Masculino'),
(67890123456, 'Mariana Lima', '1983-02-25', 11987654326, 'Brasileira', 'Salvador', 'Feminino'),
(78901234567, 'Felipe Alves', '1995-04-14', 11987654327, 'Brasileira', 'Fortaleza', 'Masculino'),
(89012345678, 'Carla Mendes', '1988-09-29', 11987654328, 'Brasileira', 'Recife', 'Feminino'),
(90123456789, 'Rafael Costa', '1975-07-18', 11987654329, 'Brasileira', 'Brasília', 'Masculino'),
(11234567890, 'Fernanda Araújo', '1982-06-08', 11987654330, 'Brasileira', 'Manaus', 'Feminino'),
(22345678901, 'Gabriel Pires', '1999-01-23', 11987654331, 'Brasileira', 'Florianópolis', 'Masculino');

-- Inserindo dados na tabela Aplicador
INSERT INTO Aplicador (CD, profissão, PessoaCPF)
VALUES 
(100001, 'Enfermeiro', 12345678901),
(100002, 'Médico', 23456789012),
(100003, 'Técnico de Enfermagem', 34567890123),
(100004, 'Enfermeiro', 45678901234),
(100005, 'Médico', 56789012345),
(100006, 'Técnico de Enfermagem', 67890123456);

-- Inserindo dados na tabela Paciente
INSERT INTO Paciente (CD, PessoaCPF)
VALUES 
(200001, 12345678901),
(200002, 23456789012),
(200003, 34567890123),
(200004, 45678901234),
(200005, 56789012345),
(200006, 67890123456);

-- Inserindo dados na tabela Posto
INSERT INTO Posto (CD, unidade, endereço, município, UF)
VALUES 
(30001, 'Posto Central', 'Rua das Flores, 123', 'São Paulo', 'SP'),
(30002, 'Posto Leste', 'Avenida dos Imigrantes, 456', 'Rio de Janeiro', 'RJ'),
(30003, 'Posto Norte', 'Rua da Liberdade, 789', 'Belo Horizonte', 'MG'),
(30004, 'Posto Sul', 'Avenida do Comércio, 321', 'Curitiba', 'PR'),
(30005, 'Posto Oeste', 'Rua dos Pioneiros, 654', 'Porto Alegre', 'RS'),
(30006, 'Posto Nordeste', 'Avenida do Atlântico, 987', 'Salvador', 'BA');

-- Inserindo dados na tabela Fabricante
INSERT INTO Fabricante (CD, nome)
VALUES 
(40001, 'BioNTech'),
(40002, 'Pfizer'),
(40003, 'Moderna'),
(40004, 'AstraZeneca'),
(40005, 'Janssen'),
(40006, 'Sinovac');

-- Inserindo dados na tabela Vacina
INSERT INTO Vacina (CD, doença, lote, dataVencimento, dose, dataAplicação, CDFabricante)
VALUES 
(50001, 'COVID-19', 'L12345', '2025-12-31', 1, '2023-06-01', 40001),
(50002, 'COVID-19', 'L67890', '2025-12-31', 2, '2023-06-01', 40002),
(50003, 'Gripe', 'G11111', '2024-10-15', 1, '2023-09-15', 40003),
(50004, 'Hepatite B', 'H22222', '2026-05-20', 1, '2023-05-20', 40004),
(50005, 'Febre Amarela', 'F33333', '2025-07-10', 1, '2023-07-10', 40005),
(50006, 'Sarampo', 'S44444', '2025-11-05', 1, '2023-11-05', 40006);

-- Inserindo dados na tabela Vacinação
INSERT INTO Vacinação (CD, CDAplicador, CDPosto, CDVacina, CDPaciente)
VALUES 
(60001, 100001, 30001, 50001, 200001),
(60002, 100002, 30002, 50002, 200002),
(60003, 100003, 30003, 50003, 200003),
(60004, 100004, 30004, 50004, 200004),
(60005, 100005, 30005, 50005, 200005),
(60006, 100006, 30006, 50006, 200006);
