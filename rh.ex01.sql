CREATE DATABASE db_rh; 
-- Banco de Dados para um Serviço de RH

USE db_rh;

-- Crie uma tabela de colaboradores (5 dados)
CREATE TABLE tb_colaboradores (
	id BIGINT AUTO_INCREMENT, 
    nome varchar(100) not null, 
    data_nascimento date not null,
    salario decimal(9,2),
    cargo varchar(60)
);

-- Tabela de no mínimo 5 dados registrados  
 
insert into tb_colaboradores (nome, data_nascimento, salario, cargo) values ("Ana",  "2000-06-17", 7544.00, "Programador"),
insert into tb_colaboradores (nome, data_nascimento, salario, cargo) values ("Márcio",  "1984-09-06", 9000.00, "Desenvolvedor Sênior"),
insert into tb_colaboradores (nome, data_nascimento, salario, cargo) values ("Ricardo",  "1990-10-29", 5000.00, "Analista de sistemas"),
insert into tb_colaboradores (nome, data_nascimento, salario, cargo) values ("Gean",  "2001-09-18", 1500.00, "Estagiário"),
insert into tb_colaboradores (nome, data_nascimento, salario, cargo) values ("Samuel",  "1998-01-22", 8000.00, "DProgramador Pleno");
 
 -- Select tb_colaboradores
 select * from tb_colaboradores;
 
-- Select >>>
select * from tb_colaboradores where salario > 2000;

-- Select <<<
select * from tb_colaboradores where salario < 2000;

-- Update
update tb_colaboradores set nome = "Gean" where id = 4;