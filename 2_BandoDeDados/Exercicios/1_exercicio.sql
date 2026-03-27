15:56 20/03/2026

Aula 1: Introdução ao Banco de Dados 

1. Pensando em um sistema financeiro, escreva 10 entidades.

	CREATE DATABASE bancoAlbino
	create schema financeiro

	create table financeiro.cliente()
	create table financeiro.contasClientes()
	create table financeiro.funcionarios()
	create table financeiro.dinheiro()
	create table financeiro.despesas()
	create table financeiro.endereco()
	create table financeiro.telefone()
	create table financeiro.fornecedores()
	create table financeiro.produtos()
	create table financeiro.consumiveis()


2. Dê três exemplos de entidades com cinco atributos cada um sistema de biblioteca. 

	CREATE DATABASE bibliotecaAlbino
	create schema biblioteca

	create table biblioteca.cliente(
		id_cliente SERIAL PRIMARY KEY,
		nome VARCHAR(100) NOT NULL,
		telefone VARCHAR(20) NOT NULL,
		endereco VARCHAR(100) NOT NULL,
		email VARCHAR(100),
		data_cadastro DATE DEFAULT CURRENT_DATE
	)

	create table biblioteca.livros(
		id_livros SERIAL PRIMARY KEY,
		titulo VARCHAR(100) NOT NULL,
		autor VARCHAR(100) NOT NULL,
		categoria VARCHAR(50) NOT NULL,
		qtd_estoque INT NOT NULL,
		isbn VARCHAR(13) UNIQUE
	)

	create table biblioteca.funcionario(
		id_funcionario SERIAL PRIMARY KEY,
		nome VARCHAR(100) NOT NULL,
		telefone VARCHAR(20) NOT NULL,
		cargo VARCHAR(50) NOT NULL,
		salario NUMERIC NOT NULL,
		data_nascimento DATE NOT NULL
	)


3. Identifique e corrija os problemas de normalização na seguinte tabela:
Cliente (id, nome, telefone, email, endereço, produto_comprado, valor_compra)

	Correção: (id_cliente, nome, telefone, email, endereço)
		  (id_compra, produto_comprado, valor_compra, id_cliente_FK)

 4. Dê um exemplo, com entidades e atributos, de um relacionamento 1:N e um N:M em um
sistema de e-commerce. (8 pontos)

	R E L A C I O N A M E N T O   1:n ↓

	E N T I D A D E	S	
	  Cliente		  
	  Endereço			  

	A T R I B U T O S
	Cliente > id_cliente_PK
		> nome

	Endereço > id_endereco_PK
		 > bairro
		 > cidade
		 > cep
		 > id_cliente_FK

============================================
	R E L A C I O N A M E N T O   N:M ↓

	E N T I D A D E	S
	Pedido
	Produto
	Itens_pedido


	A T R I B U T O S
	Pedido > id_pedido_PK
	       > data
	       > valor_total	       
	       > status
	       > id_cliente_FK

	Produto > id_produto_PK
	        > nome_produto
	        > estoque
	        > descricao

	Itens_pedido > id_itens_pedido_PK
	             > quantidade
	             > preco_no_momento
	             > id_pedido_FK
	             > id_produto_FK



 5. Construa um modelo conceitual (2 entidades) e um modelo lógico (até 3 entidades) para o
relacionamento Pessoa x Automóvel.

	C o n c e i t u a l
	E N T I D A D E	S
	Pessoa
	Automovel

	A T R I B U T O S
	Pessoa > nome
	       > cpf

	Automovel > nome
		  > modelo
		  > marca
======================================
	Lógico
	E N T I D A D E	S
	Pessoa
	Automovel
	Manutencao

	A T R I B U T O S
	Pessoa > id_pessoa_PK
	       > nome
	       > cpf

	Automovel > id_automovel_PK
		  > nome
		  > modelo
		  > marca
		  > id_pessoa_FK

	Manutenção > id_manutencao_PK
		   > data-servico
		   > descricao
		   > valor_total
		   > id_automovel_FK

	
	




