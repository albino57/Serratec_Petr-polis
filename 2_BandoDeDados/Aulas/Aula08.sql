create database odontologia;
create schema aula;

/* 1- Mostre a média de valores dos carros e quantos carros são. */
-- coalesce (<campo>, <default>). 'O default inseri alguma coisa quando o campo for nulo.'
select 
	avg(coalesce(valor, 0)) as "Média de preço", 
	sum(coalesce(valor, 0)) Total,
	count(*) quantidade 
from aula.automoveis

select * from aula.automoveis;


/* 2- Mostre o maior e menor valor de preço de carro.*/
select 
	max(valor) maior_valor, 
	min(valor) menor_valor 
from aula.automoveis;


/* 3-  Mostre a média de valores por marca de carro. */
select 
	avg(coalesce(valor, 0)) as "Média de preço", 
	sum(coalesce(valor, 0)) Total,
	count(*) quantidade 
from aula.automoveis
group by marca
order by marca


/* 4- */
select
	marca, modelo,
	max(coalesce (valor,0)) maior_valor,
	min(coalesce (valor,0)) menor_valor
from aula.automoveis
group by marca, modelo
order by marca




