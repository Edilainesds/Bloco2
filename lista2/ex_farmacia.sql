CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR (30),
    descricao VARCHAR (150)
);

CREATE TABLE tb_produto (
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (100),
    marca VARCHAR (30),
    quantidade INT,
    preco FLOAT,
    fk_produto INT,
    FOREIGN KEY (fk_produto) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria (categoria, descricao)
VALUES
	("Medicamentos", "Produtos destinados a prevencao, tratamento, cura ou alivio dos sintomas de doença"),
    ("skincare", "Produtos voltados para rotina diária de limpeza, hidratação, e cuidado geral com a pele"),
    ("Cuidados diarios", "Produtos destinados ao uso diario"),
    ("Higiene", "Produtos de higiene pessoal "),
    ("Promocoes", "Produtos partcipantes de descontos, compre um leve outro com desconto");

INSERT INTO tb_produto (nome, marca, quantidade, preco, fk_produto)
VALUES
	("Dipirona generico 500mg/ml gotas 20mL", "generico", 3, 2.00, 1),
    ("pomada para assaduras ", "hipoglos", 4, 9.90, 5),
    ("hidratante ", "nivea", 2, 17.33, 4),
    ("Protetor solar", "la roche posay", 1, 98.07, 2),
    ("Aparelho de depilacao 2 unidades", "venus", 2, 19.54, 3),
    ("dorflex", "generico", 2, 2.50, 1),
    ("Absorvente  noturno com abas", "Always", 3, 12.90, 4),
    ("Mascara de cilios curvatura e volume 5ml", "maybelline", 4, 29.30, 2);

SELECT * FROM tb_produto
WHERE preco > 19;

SELECT * FROM tb_produto
WHERE preco BETWEEN 15 AND 60;

SELECT * FROM tb_produto
WHERE nome LIKE "%B%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_produto;

SELECT tb_produto.nome, tb_produto.marca, tb_produto.preco, categoria, descricao
FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_produto
WHERE tb_categoria.categoria = "skincare";