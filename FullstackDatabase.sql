create database fullstack
default character set utf8mb4
default collate utf8mb4_general_ci;
use fullstack;
create table produtos(
	id_produto int auto_increment not null,
	nome varchar(30) not null,
	descricao varchar(700) default 'Produto sem descrição',
	preco int not null,
	nome_imagem varchar(30) not null,
	primary key (id_produto)
) default charset utf8mb4;
-- Forma completa de adicionar dados a uma tabela
insert into produtos
(nome, descricao, preco, nome_imagem)
values
('RTX2080 Super', 'Uma placa de video muito poderosa', '5000', 'rtx2080Super.jpg');

-- Forma simplificada de adicionar dados a uma tabela(se fizer de modo simplificado, todos os campos
-- deverão ser preenchidos!)
insert into produtos values
(default, 'AMD Ryzen 3700x', 'Um processador muito potente', '2699', 'amdRyzen3700x.jpg');

-- Podemos inserir mais de um produto a tabela utilizando a virgula no fechamento dos parenteses

insert into produtos
(nome, descricao, preco, nome_imagem)
values
('Mouse Cougar XT Minos', 'Mouse otimo para games', '269', 'mouseCougarXTMinos.jpg'),
('Monitor Samsung 23 pol 144hz', 'Monitor de alto desempenho para jogos', '1699', 'monitorSumsung23p144hz.jpg');
create table pedidos(
	id_pedido int auto_increment not null,
    cliente varchar(30) not null,
    endereco varchar(150) not null,
    telefone varchar(14) not null,
    produto varchar(30) not null,
    valor_unitario int not null,
    quantidade int not null default '1',
    valor_total int not null,
    primary key (id_pedido)
)default charset = utf8mb4;
