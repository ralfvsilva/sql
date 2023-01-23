CREATE DATABASE db_ecommerce_livre;

USE db_ecommerce_livre;

CREATE TABLE tb_Produtos
(
	id BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
    preco INT NOT NULL
);

INSERT INTO tb_Produtos (id, nome, categoria, quantidade, preco) VALUES (1, "Tv", "Eletronicos", 100, 2499);
INSERT INTO tb_Produtos (id, nome, categoria, quantidade, preco) VALUES (2, "Mesa", "Eletrodomestico", 50, 1800);
INSERT INTO tb_Produtos (id, nome, categoria, quantidade, preco) VALUES (3, "Celular", "Eletronicos", 200, 1999);
INSERT INTO tb_Produtoa (id, nome, categoria, quantidade, preco) VALUES (4, "Geladeira", "Eletrodomestico", 80, 2999);
INSERT INTO tb_Produtos (id, nome, categoria, quantidade, preco) VALUES (5, "Fogao", "Eletrodomestico", 60, 1599);
INSERT INTO tb_Produtos (id, nome, categoria, quantidade, preco) VALUES (6, "Liquidificador", "Eletrodomestico", 120, 199);
INSERT INTO tb_Produtos (id, nome, categoria, quantidade, preco) VALUES (7, "Teclado", "Eletronico", 50, 205);
INSERT INTO tb_Produtos (id, nome, categoria, quantidade, preco) VALUES (8, "Sofa", "Eletrodomestico", 30, 2299);

SELECT * FROM tb_Produtos;

SELECT * FROM tb_Produtos WHERE preco > 500;

SELECT * FROM tb_Produtos WHERE preco < 500;

UPDATE tb_Produtos SET preco = 2599 WHERE id = 1;



