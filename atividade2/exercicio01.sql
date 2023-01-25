CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes 
(
	id BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    genero VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens
(
	id BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nacionalidade VARCHAR(255) NOT NULL,
    ataque BIGINT NOT NULL,
    defesa BIGINT NOT NULL,
    fk_classes BIGINT NOT NULL,
    FOREIGN KEY (fk_classes) REFERENCES tb_classes (id)
);

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

INSERT INTO tb_classes (genero, tipo) VALUES ("masculino", "Fogo");
INSERT INTO tb_classes (genero, tipo) VALUES ("feminino", "Água");
INSERT INTO tb_classes (genero, tipo) VALUES ("masculino", "Fogo");
INSERT INTO tb_classes (genero, tipo) VALUES ("feminino", "Água");
INSERT INTO tb_classes (genero, tipo) VALUES ("masculino", "Fogo");

INSERT INTO tb_personagens (nome, nacionalidade, ataque, defesa, fk_classes) 
VALUES ("Carlos", "Brasil", 500, 1000, 1);
INSERT INTO tb_personagens (nome, nacionalidade, ataque, defesa, fk_classes) 
VALUES ("Sandra", "Brasil", 1500, 3000, 2);
INSERT INTO tb_personagens (nome, nacionalidade, ataque, defesa, fk_classes) 
VALUES ("Fernando", "Brasil", 2000, 4000, 3);
INSERT INTO tb_personagens (nome, nacionalidade, ataque, defesa, fk_classes) 
VALUES ("Francisca", "Brasil", 200, 400, 4);
INSERT INTO tb_personagens (nome, nacionalidade, ataque, defesa, fk_classes) 
VALUES ("Fabricio", "Brasil", 2500, 4500, 5);
INSERT INTO tb_personagens (nome, nacionalidade, ataque, defesa, fk_classes) 
VALUES ("Carolina", "Brasil", 1999, 3333, 3);
INSERT INTO tb_personagens (nome, nacionalidade, ataque, defesa, fk_classes) 
VALUES ("Pedro", "Brasil", 2300, 3400, 2);
INSERT INTO tb_personagens (nome, nacionalidade, ataque, defesa, fk_classes) 
VALUES ("Flávia", "Brasil", 1900, 1600, 5);

/*
Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa < 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.fk_classes;

SELECT nacionalidade = "Brasil" FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.fk_classes;







