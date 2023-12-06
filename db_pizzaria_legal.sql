CREATE DATABASE db_pizzaria_legal;

use db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, descricao)VALUES
("Doce","Pizza doce"),
("Salgada","Pizza Salgada"),
("Vegana","Pizzas vegana"),
("Refrigerante","Refrigerantes diversos");

SELECT * FROM tb_categorias;


CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
sabor varchar(255) NOT NULL,
preco DECIMAL (5,2),
quantidade int,
categorias_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_pizzas (sabor, preco, quantidade, categorias_id)VALUES
('Mussarela', 34.99, 2, 2),
('Brigadeiro', 34.99, 5, 1),
('Margarita', 34.99, 10, 2),
('Churros', 34.99, 5, 1),
('Palmito', 39.99, 3, 3),
('Coca cola', 10.99, 3, 4);


SELECT * FROM tb_pizzas;


SELECT * FROM tb_pizzas WHERE preco > 35.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 30.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome Like "%a%";

SELECT nome, sabor, preco, quantidade, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id 
WHERE tb_categorias.tipo = "Salgada";