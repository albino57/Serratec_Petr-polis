CREATE DATABASE loja;
create schema albinoloja;

--Cria uma entidade (tabela)
create table albinoloja.produto(
	id_produto serial primary key,
	nome varchar(100) not null,
	valor decimal,
	id_categoria int
);

create table albinoloja.categoria(
	id_categoria serial primary key,
	nome varchar(100) not null,
	ativo boolean not null
);

-- ↓ Aqui adiciona a chave estrageira e configura o nome dela ↓
ALTER TABLE albinoloja.produto
	ADD CONSTRAINT fk_id_categoria_produto
	FOREIGN KEY (id_categoria)
	REFERENCES albinoloja.categoria(id_categoria);
-- ↑ Aqui cria a chave estrageira e configura o nome dela ↑

--EXEMPLO para criar chave Estrangeira ↓ 
ALTER TABLE <NOME_TABELA>
	ADD CONSTRAINT <NOME_REGRA> 
	<FOREIGN KEY> <COLUNA_TABELA_LOCAL>
	REFERENCES <NOME_TABELA_ESTRANGEIRA> <NOME_COLUNA_ESTRANGEIRA>

--EXEMPLO para Criar/Alterar uma regra ↓
ALTER TABLE <NOME_TABELA> 
	ADD <QUAL_REGRA> <NOME_REGRA> 
	<REGRA> <COLUNA_TABELA_LOCAL>
	REFERENCES <NOME_TABELA_ESTRANGEIRA> <NOME_COLUNA_ESTRANGEIRA>

	--↓ Aqui inserimos dados na tabela.
	insert into albinoloja.categoria (nome, ativo)
	values
	('HD', true);
	
	insert into albinoloja.produto
	(nome, valor, id_categoria)
	values
	('HD', 1159.00, 9);
	--↑ Aqui inserimos dados na tabela.

	--↓ Assim altera os dados
	update albinoloja.categoria set ativo = true where nome = 'capas'
	update albinoloja.produto set id_categoria = 9 where nome = 'HD' and id_categoria = 8
	update albinoloja.produto set nome = 'produto ' || nome; -- '||' é concatenação
	--↑ Assim altera os dados

	--↓ Aqui remove um atributo
	delete from albinoloja.categoria where id_categoria = 1;
	delete from albinoloja.produto where id_produto = 1;
	truncate albinoloja.produto
	--↑ Aqui remove um atributo

	--↓ Aqui consegue-se ver o que tem nas tabelas
	select * from albinoloja.categoria order by id_categoria;
	select * from albinoloja.produto;

drop albinoloja.produto;