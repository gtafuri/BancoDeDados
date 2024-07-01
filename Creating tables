CREATE TABLE Pessoa (
    CPF BIGINT PRIMARY KEY,
    nome NVARCHAR(255),
    dataNascimento DATE,
	contato BIGINT,
	nacionalidade NVARCHAR(100),
	naturalidade NVARCHAR(100),
	sexo NVARCHAR(100),
);

-- Tabela aplicador
CREATE TABLE Aplicador (
    CD BIGINT PRIMARY KEY,
    profissão NVARCHAR(100),
    PessoaCPF BIGINT, -- Chave estrangeira para Imunização
    FOREIGN KEY (PessoaCPF) REFERENCES Pessoa(CPF)
);

-- Tabela Paciente
CREATE TABLE Paciente (
    CD BIGINT PRIMARY KEY,
	PessoaCPF BIGINT,
	FOREIGN KEY (PessoaCPF) REFERENCES Pessoa(CPF)  
);



-- Tabela Posto
CREATE TABLE Posto (
    CD BIGINT PRIMARY KEY,
    unidade NVARCHAR(100),
	endereço NVARCHAR(255),
    município NVARCHAR(100),
    UF NVARCHAR(100)
);

-- Tabela Fabricante
CREATE TABLE Fabricante (
    CD BIGINT PRIMARY KEY,
    nome NVARCHAR(100),
);

-- Tabela Vacina
CREATE TABLE Vacina (
    CD BIGINT PRIMARY KEY,
    doença NVARCHAR(100),
    lote NVARCHAR(50),
    dataVencimento DATE,
    dose BIGINT,
	dataAplicação DATE,
	CDFabricante BIGINT, -- Chave estrangeira para Fabricante
    FOREIGN KEY (CDFabricante) REFERENCES Fabricante(CD)
);

--Tabela Imunização
CREATE TABLE Vacinação(
	CD BIGINT PRIMARY KEY,
	CDAplicador BIGINT,
	CDPosto BIGINT,
	CDVacina BIGINT,
	CDPaciente BIGINT,
	FOREIGN KEY (CDAplicador) REFERENCES Aplicador(CD),
	FOREIGN KEY (CDPosto) REFERENCES Posto(CD),
	FOREIGN KEY (CDVacina) REFERENCES Vacina(CD),
	FOREIGN KEY (CDPaciente) REFERENCES Paciente(CD)
);
