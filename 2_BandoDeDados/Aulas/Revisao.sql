create table vendas(
	id_venda serial primary key,
	data_emissao timestamp without time zone,
	in_cliente int references cliente (id_cliente),
	valor_total double precision;
);

create table produtos(
	id_produto serial primary key,
	id_venda int references vendas (id_vendas),
	quantidade int,
	valor double precision
);

alter table produtos add colimn idauto int references

insert into vendas(data_emissao, id_cliente)
values('23-02-2026 09:30', 4),
values('05-03-2026 19:30', 10),
values('25-01-2026 10:30', 1),
values('05-05-2026 09:30', 3),
values('07-04-2025 08:00', 5),
values('05-05-2024 09:30', 9),
values('05-02-2023 09:30', 8),
values('12-12-2024 09:30', 6),
values('05-01-2025 09:30', 7);

insert into produtos(id_venda, quantidade, valor)
values
(4, 1, )