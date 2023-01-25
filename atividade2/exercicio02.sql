CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria
(
	id BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    qtdSabores BIGINT NOT NULL,
    tipoPizza VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas 
(
	id BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    saborUm VARCHAR(255) NOT NULL,
    saborDois VARCHAR(255) NOT NULL,
    refrigerante VARCHAR(255) NOT NULL,
    valor BIGINT NOT NULL,
    fk_categoria BIGINT NOT NULL,
	FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id)
);

INSERT INTO tb_categoria (qtdSabores, tipoPizza) VALUES (1, "Salgada");
INSERT INTO tb_categoria (qtdSabores, tipoPizza) VALUES (2, "Doce");
INSERT INTO tb_categoria (qtdSabores, tipoPizza) VALUES (2, "Mista");
INSERT INTO tb_categoria (qtdSabores, tipoPizza) VALUES (2, "Salgada");
INSERT INTO tb_categoria (qtdSabores, tipoPizza) VALUES (1, "Doce");

INSERT INTO tb_pizzas (saborUm, saborDois, refrigerante, valor, fk_categoria) VALUES ("Calabresa", "Muzzarela", "nao", 90, 4);
INSERT INTO tb_pizzas (saborUm, saborDois, refrigerante, valor, fk_categoria) VALUES ("Romeu e Julieta", "Banana Caramelada", "sim", 50, 2);
INSERT INTO tb_pizzas (saborUm, saborDois, refrigerante, valor, fk_categoria) VALUES ("Portuguesa", "nenhum", "nao", 45, 1);
INSERT INTO tb_pizzas (saborUm, saborDois, refrigerante, valor, fk_categoria) VALUES ("Chocolate", "nenhum", "sim", 50, 5);
INSERT INTO tb_pizzas (saborUm, saborDois, refrigerante, valor, fk_categoria) VALUES ("Romeu e Julieta", "Frango com catupiry", "sim", 140, 3);
INSERT INTO tb_pizzas (saborUm, saborDois, refrigerante, valor, fk_categoria) VALUES ("4 queijos", "nenhhum", "nao", 45, 1);
INSERT INTO tb_pizzas (saborUm, saborDois, refrigerante, valor, fk_categoria) VALUES ("Frango", "Muzzarela", "sim", 90, 4);
INSERT INTO tb_pizzas (saborUm, saborDois, refrigerante, valor, fk_categoria) VALUES ("Chocolate", "nenhum", "nao", 45, 5);

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor > 50 AND valor < 100;

SELECT * FROM tb_pizzas WHERE saborUm LIKE '%m%';

SELECT * FROM tb_pizzas INNER JOIN tb_categoria ON tb_categoria.id = tb_pizzas.fk_categoria;

SELECT * FROM tb_pizzas INNER JOIN tb_categoria ON tb_categoria.id = tb_pizzas.fk_categoria WHERE tipoPizza = "Doce";



