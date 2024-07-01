ALTER TABLE Vacina
ADD CONSTRAINT CHK_Quantidade_Vacina CHECK (quantidade <= 100);