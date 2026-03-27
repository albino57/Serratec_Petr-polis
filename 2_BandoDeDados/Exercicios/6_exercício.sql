/* Lista 6 */

/* 1. Crie um índice na tabela livro para melhorar a busca pelo campo titulo */
	create index idx_livro on biblioteca_albino.livro(titulo);
	--alter index biblioteca_albino.idx_livro rename to idx_livro_titulo
/**/


/* 2. Crie um índice na tabela emprestimo para otimizar a busca por data_emprestimo */
	create index idx_emprestimo_data on biblioteca_albino.emprestimo(data_emprestimo);
/**/


/* 3. Crie uma VIEW chamada vw_historico_emprestimos que exiba o nome do usuário, título do
livro, data do empréstimo e data de devolução */
	create view biblioteca_albino.vw_historico_emprestimos as
	select 
		u.nome as "Nome/Usuário",
		l.titulo as "Título/Livro",
		emp.data_emprestimo as "Data/Emprestimo",
		emp.data_devolucao as "Data/Devolução"
	from 
		biblioteca_albino.emprestimo as emp
	join
		biblioteca_albino.usuario as u on emp.id_usuario_fk = u.id_usuario
	join
		biblioteca_albino.livro as l on emp.id_livro_fk = l.id_livro
	where
		emp.status = 'emprestado';
		
	
	select * from biblioteca_albino.emprestimo
	select * from biblioteca_albino.vw_historico_emprestimos
	drop view biblioteca_albino.vw_historico_emprestimos
/**/


/* 4. Explique como um índice pode melhorar a performance de uma consulta e quais são os
	  impactos negativos de usar muitos índices */
	  
/*    O índice melhor porque ele armazena o índice e a informação que o usuário vai buscar como idx_indice_nome,
   o SQL já sabe que Rafael Albino já está na possição 245.049.234 do banco.
   O problema é que isso precisa de mais espaço no disco e também usa mais processamento quando
   mais um atributo for criado. */
/**/


/* 5. Teste a performance de uma consulta antes e depois de criar um índice usando EXPLAIN
ANALYZE. (Caso já tenha criado os índices nos exercícios 1 e 2, utilize o comando DROP
INDEX nome_indice; faça o teste, crie novamente e refaça o teste para analisar a diferença.) */

drop index biblioteca_albino.idx_livro_titulo

explain analyse select * from biblioteca_albino.livro where titulo = 'Código Limpo'

create index idx_livro_titulo on biblioteca_albino.livro(titulo);

/* 
explain analyse SEM index:
	Planning Time: 0.077 ms
	Execution Time: 0.046 ms
=============================
explain analyse COM index:
	Planning Time: 1.181 ms
	Execution Time: 0.039 ms
*/
/**/






/* ↓↓↓ Código da Lista 5 ↓↓↓ */
/* 1. Conte quantos livros estão cadastrados na biblioteca usando COUNT */
select
	count(*) as "QTD de livros"
from biblioteca_albino.livro;
/**/


/* 2. Descubra a média de tempo de empréstimo dos livros utilizando AVG */
select
	round(avg(emp.data_devolucao - emp.data_emprestimo)) as "Média_Dias de empréstimo"
from 
	biblioteca_albino.emprestimo as emp
where emp.data_devolucao is not null;
/**/


/* 3. Encontre o livro mais antigo e o mais recente utilizando MIN e MAX */
select
	max (li.ano_publicacao) as "Livro mais Recente", min (li.ano_publicacao) as "Livro mais Antigo"
from
	biblioteca_albino.livro as li;
/**/


/* 4. Liste quantos empréstimos cada usuário já fez, agrupando por nome do usuário */
select
	 us.nome as "Nome",
	 count(emp.id_usuario_fk) as "Total Emprestimos"

from biblioteca_albino.emprestimo as emp
	join biblioteca_albino.usuario as us
		on us.id_usuario = emp.id_usuario_fk
group by
	us.nome;
/**/


/* 5. Mostre quantos livros existem por gênero, agrupando os resultados */
select 
	li.genero as "Genero/livros",
	count(li.genero) as "QTD"
from biblioteca_albino.livro as li
group by li.genero;
/**/





/* ↓↓↓ Código da Lista 4 ↓↓↓ */
/* 1. Selecione todos os livros cadastrados no banco de dados. */
select * from biblioteca_albino.livro;
/**/

/* 2. Liste o nome do usuário e o título do livro de todos os empréstimos realizados, utilizando um JOIN. */
select 
	emp.id_emprestimo, 
	emp.id_livro_fk,
	u.nome
from biblioteca_albino.emprestimo as emp
	join biblioteca_albino.usuario as u
		on emp.id_emprestimo = u.id_usuario
			order by emp.id_emprestimo

select      --Selecione 'nome de usuario' e 'titulo do livro'
    u.nome,  --'nome de usuario'
    l.titulo --'titulo do livro'
from biblioteca_albino.emprestimo as emp    -- Da tabela 'emprestimo' como "emp"
    join biblioteca_albino.usuario as u     -- Junte com tabela 'usuario' como "u"
        on emp.id_usuario_fk = u.id_usuario -- Na chave estrangeira 'id_usuario_fk' recebendo id_usuario
    join biblioteca_albino.livro as l 		-- Agora, Junte resultado acima com a tabela 'livro' como "l"
        on emp.id_livro_fk = l.id_livro		-- Na chave est
order by u.nome;

select * from biblioteca_albino.usuario;
select * from biblioteca_albino.emprestimo;
select * from biblioteca_albino.livro;
/**/





/* ↓↓↓ Código da Lista 3 ↓↓↓*/

/* 1. Insira 10 registros na tabela livro com informações fictícias. */
insert into biblioteca_albino.livro(titulo, autor, ano_publicacao, genero, quantidade_estoque, editora)
	--values('As Quatro Estações de Deus', 'José Maurício', '2023-01-01', 'Cristão, Vida cristã', 10, 'Palavra Viva');
	--values('Livro Subindo A Montanha De Deus', 'José Maurício', '2024-01-01', 'Espiritualidade', 7, 'Palavra Viva');
	--values('Restaurando Os Muros Da Vida', 'José Maurício', '2023-02-01', 'Cristão, Vida cristã', 12, 'Palavra Viva');
	--values('Manual De Batalha Espiritual', 'José Maurício', '2025-01-04', 'Espiritualidade', 5, 'Palavra Viva');
	--values('O Poder Da Carne X O Poder Do Espírito', 'José Maurício', '2024-05-01', 'teologia', 8, 'Palavra Viva');
	--values('Porque Sou Dizimista', 'José Maurício', '2023-08-04', 'Literatura cristã', 2, 'Palavra Viva');
	--values('A Intercessão Profética', 'José Maurício', '2022-10-01', 'Batalha Espiritual', 1, 'Palavra Viva');
	--values('Deuses Falsos', 'Tim Keller', '2018-01-01', 'Cristão', 7, 'Vida Novo');
	--values('Introdução À Linguagem Sql', 'Thomas Nield', '2016-01-01', 'Tecnologia', 2, 'NOVATEC');
	values('Código Limpo', 'Robert C. Martin', '2009-01-01', 'Tecnologia', 9, 'Alta Books');

	--update biblioteca_albino.livro set editora = 'Palavra Viva';
	select * from biblioteca_albino.livro order by id_livro;
/**/


/* 2. Insira 5 registros na tabela usuario com diferentes usuários. */
insert into biblioteca_albino.usuario(nome,cpf,email,telefone,endereco)
	--values('Rafael Albino','1256734345','rafael@gmail.com','24981052644','Rua Cândido 123, Mosela');
	--values('Carina Albino','3257834545','Carina@gmail.com','21981034542','Rua Magalhães 333, Jardim');
	--values('Ricardo de Jesus','8596732345','deJesus@gmail.com','21995054644','Rua Terê 321, Quitandinha');
	--values('Eduardo Justo','5676734345','Justo@gmail.com','24999052144','Rua Duques 123, America');
	--values('Rafael Rosa','0798634345','Rosa@gmail.com','24918052122','Rua Mosela 1234, Mosela');

	select * from biblioteca_albino.usuario order by id_usuario;
/**/

	
/* 3. Atualize o telefone de um usuário específico usando o comando UPDATE. */
update biblioteca_albino.usuario set telefone = '25981052555' where nome = 'Rafael Rosa';
/**/


/* 4. Tente remover um usuário específico da tabela usuario que possui um empréstimo. O que
aconteceu? Explique o que ocorreu? */

--PRIMEIRO, vamos inserir algum valor em biblioteca_albino.emprestimo:
insert into biblioteca_albino.emprestimo(id_usuario_FK, id_livro_FK, data_emprestimo, data_devolucao)
	values(6,1,'2026-03-24','2026-03-31');

--SEGUNDO, vamos checar se o valor realmente foi inserido:
select * from biblioteca_albino.emprestimo order by id_emprestimo;

--TERCEIRO, vamos tentar excluir os valor de :
delete from biblioteca_albino.usuario where id_usuario = 1;

/* Aconteceu ISSO: ERROR:  update or delete on table "usuario" violates foreign key constraint "emprestimo_id_usuario_fk_fkey" on table "emprestimo"
						   Key (id_usuario)=(1) is still referenced from table "emprestimo". 
   Explicação: Isso aconteceu graças a Chave Estrangeira que protegeu o dado de outra tabela "emprestimo". Uma uma exelente forma para o banco não 
   			   começar a perder integridade.
*/
/**/


/*(DESAFIO) Explique a diferença entre DELETE FROM e TRUNCATE TABLE. Em qual situação cada um deve ser utilizado?*/
/* A diferença é que o DELETE FROM é menos rápido para bancos grandes, é mais preciso porque apagua um único dado ou alguns, é mais seguro de usar
   por pessoas com pouca experiência em banco.

   O TRUNCATE TABLE é muito rápido porque ele apagua a tabela toda, é bem ruim para precisão, ou seja, não apagua apenas algum dado que eu quero e
   bem menos seguro par alguém com pouco experiência, na verdade é muito perigoso.
*/
/**/


/* ↓↓↓ Código da Lista 2 ↓↓↓*/
create table biblioteca_albino.livro(
	id_livro serial primary key,
	titulo varchar(50) not null,
	autor varchar(80) not null,
	ano_publicacao date not null,
	genero varchar(25) not null,
	quantidade_estoque int not null
)

create table biblioteca_albino.usuario(
	id_usuario serial primary key,
	nome varchar(100) not null,
	cpf varchar(15) not null unique,
	email varchar(50) not null unique,
	telefone varchar(14) not null,
	endereco varchar(50) not null
)

CREATE TYPE biblioteca_albino.status_emprestimo AS ENUM ('emprestado', 'devolvido');
create table biblioteca_albino.emprestimo(
	id_emprestimo serial primary key,
	id_usuario_FK int not null references biblioteca_albino.usuario(id_usuario),
	id_livro_FK int not null references biblioteca_albino.livro(id_livro),
	data_emprestimo date not null default current_date,
	data_devolucao date,
	status biblioteca_albino.status_emprestimo not null default 'emprestado'
)

alter table biblioteca_albino.livro
	add column editora varchar(100);
