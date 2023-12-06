create database db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
subclasse varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classe (classe, subclasse)VALUES
("lutador","chute mortal"),
("ninja","soco destruidor"),
("fada","atorduado"),
("motoqueiro","velididade maxima");

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
nivel int, 
ataque int,
defesa int,
classe_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);
SELECT * FROM tb_personagem;

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id)
VALUES
("Caio", 8, 1000, 1100, 1),
("Rodolfo", 7, 1500, 1600, 2),
("Ana", 9, 2000, 2200, 3), 
("Enzo", 10, 900, 1000, 4);

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nome Like "%a%";

SELECT nome, nivel, ataque, defesa , tb_classe.classe
FROM tb_personagem INNER JOIN tb_classe 
ON tb_personagem.classe_id = tb_classe.id 

