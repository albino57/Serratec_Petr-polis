/* Lista de exercício 2.
1. Crie um banco de dados chamado biblioteca.
*/
CREATE DATABASE biblioteca;
create schema biblioteca_albino; 

/* 2. Crie uma tabela livro com os seguintes campos: 

 id (chave primária, autoincremento) 
 titulo (não nulo) 
 autor (não nulo) 
 ano_publicacao (não nulo) 
 genero (não nulo) 
 quantidade_estoque (não nulo) */

create table biblioteca_albino.livro(
	id_livro serial primary key,
	titulo varchar(50) not null,
	autor varchar(80) not null,
	ano_publicacao date not null,
	genero varchar(25) not null,
	quantidade_estoque int not null
)

/*3. Crie uma tabela usuario com os campos: 
 
 id (chave primária, autoincremento) 
 nome (não nulo) 
 cpf (único) 
 email (único) 
 telefone (não nulo) 
 endereco (não nulo) */


 create table biblioteca_albino.usuario(
	id_usuario serial primary key,
	nome varchar(100) not null,
	cpf varchar(15) not null unique,
	email varchar(50) not null unique,
	telefone varchar(14) not null,
	endereco varchar(50) not null
 )

 /*4. Crie uma tabela emprestimo com os seguintes campos: 
 
 id (chave primária, autoincremento)
 id_usuario (chave estrangeira referenciando usuario)
 id_livro (chave estrangeira referenciando livro)
 data_emprestimo (não nulo)
 data_devolucao (pode ser nulo)
 status (ENUM: "emprestado", "devolvido") */

CREATE TYPE biblioteca_albino.status_emprestimo AS ENUM ('emprestado', 'devolvido');
create table biblioteca_albino.emprestimo(
	id_emprestimo serial primary key,
	id_usuario_FK int not null references biblioteca_albino.usuario(id_usuario),
	id_livro_FK int not null references biblioteca_albino.livro(id_livro),
	data_emprestimo date not null default current_date,
	data_devolucao date,
	status biblioteca_albino.status_emprestimo not null default 'emprestado'
)

/*5. Escreva um comando SQL para alterar a tabela livro, adicionando um campo editora
VARCHAR(100).*/

alter table biblioteca_albino.livro
	add column editora varchar(100);
