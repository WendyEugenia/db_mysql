CREATE DATABASE db_escola;
use db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    sexo enum('M', 'F'),
    datanascimento DATE,
    nota DECIMAL (6,2),
	cpf BIGINT,
     PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, sexo, datanascimento, nota, cpf) 
VALUES
('Ana', 'F', '2000-01-15', 5.5, 555558565623),
('Maria', 'F', '1995-05-20', 6.0, 9876554840),
('luis', 'M', '2001-03-10', 8.2,1156565699952),
('Paloma', 'M', '2002-07-05', 9.0, 4854655622661),
('MArinne', 'F', '2000-11-30', 7.5, 55551223222),
('Daiane', 'F', '2007-02-25', 5.0, 85565667874),
('Joana', 'F', '1998-09-12', 6.8, 654848441100);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;
