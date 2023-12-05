CREATE DATABASE db_empresa;

use db_empresa;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	idade INT,
	datanascimento DATE,
	salario DECIMAL NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, idade,datanascimento, salario,cargo) values 
 ("Wendy",18, "2003-12-20", 1000.00,"Administrativo"),
 ("Nina",25, "2000-06-30", 6000.00,"TI"),
 ("Eugenia",20, "2005-01-10", 10000.00,"Limpeza"),
 ("Luana",55, "1998-03-10", 8000.00,"RH"),
 ("Lucas",20, "2003-11-06", 20000.00,"Administrativo");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;