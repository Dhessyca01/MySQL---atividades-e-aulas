
create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;


create table tb_categorias (
    id bigint auto_increment primary key, 
    nome varchar(100) not null, 
    nicho int
);


create table tb_produtos (
    id bigint auto_increment primary key, 
    nome varchar(100) not null, 
    preco decimal(6, 2) not null, 
    quantidade int not null default 0, 
    validade date not null, 
    categoria_id bigint, 
    foreign key (categoria_id) references tb_categorias (id)
);

insert into
    tb_categorias (nome, nicho)
values ('Xarope', 1),
       ('Fralda', 2),
       ('Cuidados pessoais', 3),
       ('Comprimido', 4),
       ('Aerosol', 5);

insert into
    tb_produtos (
        nome, preco, quantidade, validade, categoria_id
    )
values ('Dexametasona 20ml', 20.99, 280, '2026-06-20', 1),
    ('Cetoprofeno 150mg', 39.99, 50, '2028-08-02', 4),
    ('Huggies 20 unidades Fralda Calça', 75.80, 30, '2026-12-22', 3),
    ('Àvene protetor fps 70', 90.00, 55, '2024-12-25', 3),
    ('Dove Aerosol', 16.00, 80, '2025-11-24', 5),
    ('Amoxicilina 100ml', 49.90, 60, '2026-09-30', 1),
    ('Pantene - Creme de pentear', 22.00, 20, '2025-01-22', 3),
    ('Dipirona 1G', 20.00, 100, '2028-07-22', 4);


select * from tb_produtos where preco > 50;

select * from tb_produtos where preco BETWEEN 5 and 60;
select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;

select tb_produtos.id, tb_produtos.nome, preco, quantidade, validade, tb_categorias.nome as categoria 
from tb_produtos
    inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id
where
    tb_categorias.id = 3;