CREATE DATABASE turma37;
create schema aula01

--Cria uma entidade (tabela)
create table IF NOT EXISTS aula01.curso(
	idcurso serial primary key,
	nome varchar(100) not null,
	carga_horaria int not null
);

create table IF NOT EXISTS aula01.docente(
	iddocente serial primary key,
	nome varchar(100) not null,
	titulacao varchar(50) not null
);

create table IF NOT EXISTS aula01.discente(
	iddiscente serial primary key,
	nome varchar(100) not null,
	idcurso int not null
);

-- ↓ Aqui adiciona a chave estrageira e configura o nome dela ↓
ALTER TABLE aula01.discente
	ADD CONSTRAINT fk_discente_curso
	FOREIGN KEY (idcurso)
	REFERENCES aula01.curso(idcurso);
-- ↑ Aqui cria a chave estrageira e configura o nome dela ↑

--drop aula01.curso;
--drop aula01.docente;
--drop aula01.discente;