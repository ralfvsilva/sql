USE db_rh;

CREATE TABLE tb_rh_colaboradores
(
	id BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(255) NOT NULL,
    salario INT NOT NULL,
    data_nascimento VARCHAR(255) NOT NULL
);

SELECT * FROM tb_rh_colaboradores;

INSERT INTO tb_rh_colaboradores (id, nome, cpf, salario, data_nascimento) VALUES (1, "Ralf", "000.111.222-33", 2500, "12/01/1999");
INSERT INTO tb_rh_colaboradores (id, nome, cpf, salario, data_nascimento) VALUES (2, "José", "755-800-991-02", 2200, "19/04/1973");
INSERT INTO tb_rh_colaboradores (id, nome, cpf, salario, data_nascimento) VALUES (3, "Cesar", "755-800-991-02", 4500, "19/04/1973");
INSERT INTO tb_rh_colaboradores (id, nome, cpf, salario, data_nascimento) VALUES (4, "Joao", "755-800-991-02", 4000, "19/04/1973");
INSERT INTO tb_rh_colaboradores (id, nome, cpf, salario, data_nascimento) VALUES (5, "Pedro", "755-800-991-02", 1800, "19/04/1973");

SELECT * FROM tb_rh_colaboradores WHERE salario > 2000;
SELECT * FROM tb_rh_colaboradores WHERE salario < 2000;

UPDATE tb_rh_colaboradores SET salario = 2600 WHERE id = 2;

SELECT * FROM tb_rh_colaboradores;

