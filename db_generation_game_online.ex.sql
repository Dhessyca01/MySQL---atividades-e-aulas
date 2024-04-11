CREATE DATABASE db_generation_game_online;
use db_generation_game_online;

create table tb_classes (
    id bigint auto_increment, 
    nome varchar(60) not null, 
    habilidade_especial varchar(50)
);

-- classes
insert into tb_classes (nome, habilidade_especial) values ("Bruxo", "super potion"), ("Mago", "Avada kedavra"), 
("Anciã", "wisdom"),
("Dementador", "Sugation of Alma"),
("Feiticeiro", "4elements");

create table tb_personagem (
    id bigint auto_increment primary key, 
    nome varchar(50), 
    ataque int default 2000, 
    defesa int default 2000, 
    fraqueza varchar(50) default "Atmosfera", 
    nivel bigint, 
Foreign Key (classe_id) references tb_classes (id)
);

-- personagens
insert into tb_personagem (nome, ataque, defesa, fraqueza, nivel) values ('Harry', 7600, 1730, 'Voldemort', 3),
       ('Dumbledore', 9990, 8990, 'Fogo', 1),
       ('Snape', 8300, 10000, 'Luz.', 2),
       ('Lupin', 6300, 7000, 'Lua.', 4),
       ('Gina', 6500, 3500, 'Controle da mente.', 9),
       ('Luna', 5700, 5000, 'Dementador.', 8),
       ('Almofadinhas', 8000, 3000, 'Gelo.', 5),
       ('Minerva', 8900, 8300, 'Água.', 7),
       ('Dobby', 10000, 8700, 'Ferro.', 6);

select * from tb_classes;

-- Chave estrangeira
alter table tb_personagem add classes_id bigint;
alter table tb_personagem add constraint fk_personagem_classes foreign key(classe_id) references tb_classes(id);

update tb_personagem set classes_id = 1 where id = 1;
update tb_personagem set classes_id = 2 where id = 2;
update tb_personagem set classes_id = 3 where id = 3;
update tb_personagem set classes_id = 4 where id = 4;
update tb_personagem set classes_id = 5 where id = 5;
update tb_personagem set classes_id = 2 where id = 6;
update tb_personagem set classes_id = 1 where id = 7;
update tb_personagem set classes_id = 2 where id = 8;

select * from tb_personagem;

-- Personagens com poder >>>>> 2000.
select * from tb_personagem where ataque > 2000;

-- Personagens com poder entre 1000 e 2000.
select * from tb_personagem where defesa between 1000 and 2000;

-- Operador LIKE, Personagens possuam a letra C no atributo nome. 
select * from tb_personagem where nome like '%c%';

-- Cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
select tb_personagem
tb_classes from tb_personagem inner join tb_classes on tb_personagem.classes_id = tb_classes.id;


select tb_personagem.nome, classe, tb_classes.tipo from tb_personagem inner join tb_classes on 
tb_classes.id = tb_personagem.classes_id
where tb_classes.classe = "Mago";