CREATE DATABASE turma37;
create schema aula03;

-- Tabela de MUITO PARA MUITOS ↓↓↓
create table aula03.cliente(
	id_cliente serial primary key,
	nome varchar(100) not null,
	cpf varchar(11)
);

create table aula03.caracteristicas(
	id_carac serial primary key,
	dscarc varchar(100)
);

create table aula03.carac_cliente(
	id_carac int references aula03.caracteristicas(id_carac),
	id_cliente int references aula03.cliente(id_cliente),
	primary key (id_carac, id_cliente)
);
-- Tabela de MUITO PARA MUITOS ↑↑↑

create table aula03.automoveis(
	id_auto serial primary key,
	modelo varchar(100),
	marca varchar(100),
	id_cliente int references aula03.cliente(id_cliente) --Aqui é uma Chave estrangeira
);

-- Inserindo vários valores no mesmo comando ↓↓↓
insert into aula03.cliente(nome, cpf)
values('Rafael', '01234567891'),
	  ('Carina', '01234567892'),
	  ('Luna', '01234567893'),
	  ('João', '01234567894'),
	  ('Joana', '01234567895');
-- Inserindo vários valores no mesmo comando ↑↑↑

insert into aula03.caracteristicas(dscarc)
values
('Diamante'), ('Ouro'), ('Prata'), ('Bronze'), ('Cobre'), ('Negativado');

insert into aula03.carac_cliente(id_carac, id_cliente)
	values (1,1), (1,2), (1,3), (2,4), (2,5);

insert into aula03.automoveis(modelo, marca, id_cliente)
	values('KA 1.0', 'Ford', 1),
		  ('KA 1.5', 'Ford', 2),
		  ('Palio Fire 1.0', 'Fiat', 1),
		  ('Palio Fire 1.6', 'Fiat', 3),
		  ('Fiesta 1.6', 'Ford', 4),
		  ('Civic 2.0', 'Honda', 5);


select * from aula03.cliente by order = id_cliente;
select * from aula03.caracteristicas;
select * from aula03.carac_cliente;
select * from aula03.automoveis;

select id_cliente, modelo, marca from aula03.automoveis where id_auto = 4;
select id_cliente, modelo, marca from aula03.automoveis where id_cliente = 1;

select * from aula03.cliente where nome = 'Rafael';

update aula03.cliente set cpf = '05930819785' where id_cliente = 1;