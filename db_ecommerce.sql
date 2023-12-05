CREATE DATABASE db_ecommerce;

use db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datafabricacao DATE,
    preco DECIMAL NOT NULL,
	cor VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
);
INSERT INTO tb_produtos(nome, quantidade,datafabricacao, preco,cor) values 
( " blusa", 2,"2023-01-22",50.99,"verde"),
( " camisa", 5,"2023-02-10",40.40,"rosa"),
( " short", 3,"2023-03-15",30.99,"azul"),
( " meia", 8,"2023-05-29",5.99,"laranja");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;