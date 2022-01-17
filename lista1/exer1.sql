CREATE DATABASE db_atividade1;

USE db_atividade1;

CREATE TABLE tb_funcionaries (
	id_funcionaries INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50),
    idade INT,
    formacao VARCHAR (30),
    cidade VARCHAR (15),
    pretencaoSalarial FLOAT
);

ALTER TABLE tb_funcionaries
MODIFY COLUMN formacao VARCHAR (50);

ALTER TABLE tb_funcionaries
RENAME COLUMN pretencaoSalarial TO pretensaoSalarial;

ALTER TABLE tb_funcionaries
MODIFY COLUMN cidade VARCHAR (30);

INSERT INTO tb_funcionaries (nome, idade, formacao, cidade, pretensaoSalarial)
VALUES
("rebeca santos", 24, "Sistemas para internet", "Sao Paulo", 4500.00),
("Raissa alencar", 30, "Ciencia da computacao", "são bernardo do campos", 4975.00),
("Maria vitoria santos", 26, "Engenharia de Producao", "Sao Bernardo do Campo", 5550.00),
("Bianca alves", 28, "Analise e Desenvolvimento de Sistemas", "Sao paulo", 3500.00);

SELECT * FROM tb_funcionaries
WHERE pretensaoSalarial > 4500;

SELECT * FROM tb_funcionaries
WHERE pretensaoSalarial < 4500;

UPDATE tb_funcionaries
SET idade = 24
WHERE id_funcionaries = 11;

