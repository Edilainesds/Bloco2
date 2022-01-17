CREATE DATABASE db_generation_game_online3;

USE db_generation_game_online3;

CREATE TABLE tb_classe (
	id_classe INT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR (25) NOT NULL,
    atributo_principal VARCHAR (45) NOT NULL
);

CREATE TABLE tb_personagem (
	id_personagem INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (45),
    ataque INT,
    defesa INT,
    constituicao INT,
    inteligencia INT,
    destreza INT,
    fk_personagem INT,
    FOREIGN KEY (fk_personagem) REFERENCES tb_classe (id_classe)
);

INSERT INTO tb_classe (classe, atributo_principal)
VALUES
	("Guerreiro", "Ataque"),
    ("Ladino", "Destreza"),
    ("Mago", "Inteligencia"),
    ("Barbaro", "Constituicao"),
    ("Paladino", "Defesa");

INSERT INTO tb_personagem (nome, ataque, defesa, constituicao, inteligencia, destreza, fk_personagem)
VALUES
	("Assis", 700, 1300, 1900, 400, 1000, 4),
    ("Cassandra", 2000, 1900, 100, 200, 1200, 1),
    ("Jessica", 700, 400, 1400, 400, 1700, 2),
    ("Miguel", 500, 400, 1300, 1400, 900, 3),
    ("Bernardo", 1000, 1900, 1200, 800, 1500, 5),
    ("Rodolfo", 800, 500, 1900, 400, 1300, 4),
    ("Alencar", 200, 1700, 400, 600, 1400, 5),
    ("Dolores", 200, 1900, 1200, 1900, 900, 2);

SELECT * FROM tb_personagem
WHERE ataque > 2000;

SELECT * FROM tb_personagem
WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem
WHERE nome LIKE "%C%";

SELECT
tb_personagem.nome AS Nome,
tb_classe.classe AS Classe,
tb_personagem.ataque AS Ataque,
tb_personagem.defesa AS Defesa,
tb_personagem.constituicao AS Constituição,
tb_personagem.inteligencia AS Inteligência,
tb_personagem.destreza AS Destreza
FROM
tb_personagem -- tabela esquerda
INNER JOIN
tb_classe -- tabela direita
ON tb_classe.id_classe = tb_personagem.fk_personagem
WHERE classe = "Mago";
