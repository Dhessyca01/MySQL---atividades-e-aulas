
CREATE DATABASE db_escola; 

USE db_escola; 

-- Tabela de estudantes
create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(200),
    data_nascimento date,
    turma int,
    nota decimal(6,3),
    primary key (id)
);

-- Tabela de 8 registros
insert into tb_estudantes (nome, data_nascimento, turma, nota) values ("Raimundo Silva", "2000-02-16", 2, 9.00);
insert into tb_estudantes (nome, data_nascimento, turma, nota) values ("Anderson Sousa", "2001-03-25", 1, 3.50);
insert into tb_estudantes (nome, data_nascimento, turma, nota) values ("Davi Barreto", "1999-07-20", 3, 7.00);
insert into tb_estudantes (nome, data_nascimento, turma, nota) values ("Michael Bubble", "1998-01-18", 4, 6.00);
insert into tb_estudantes (nome, data_nascimento, turma, nota) values ("Luis Strong", "2002-12-22", 5, 8.00);
insert into tb_estudantes (nome, data_nascimento, turma, nota) values ("Sérgio Cortella", "1997-02-11", 6, 10.00);
insert into tb_estudantes (nome, data_nascimento, turma, nota) values ("Leandro Karnal", "1999-11-06", 3, 4.00);
insert into tb_estudantes (nome, data_nascimento, turma, nota) values ("Thalles Roberto", "1998-10-22", 5, 9.00);

SELECT * FROM tb_estudantes;

-- Nota maior que 7
SELECT * FROM tb_estudantes WHERE nota > 7.00;

-- Nota menor que 7
SELECT * FROM tb_estudantes WHERE nota < 7.00;


UPDATE tb_estudantes SET nota = 6.00 WHERE id = 2;