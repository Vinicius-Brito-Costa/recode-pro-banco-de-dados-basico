create database exercicios;
use exercicios;
create table curso(
	id_curso int not null auto_increment,
    nome varchar(30) not null,
    tipo varchar(20) not null,
    duracao int not null,
    primary key(id_curso)
)default charset utf8mb4;
insert into curso
(nome, tipo, duracao)
values
('Sistemas de Informação', 'Bacharelado', '4'),
('Ciência da Computação', 'Bacharelado', '4'),
('Análise de Sistemas', 'Tecnólogo', '3'),
('Gestão de TI', 'Tecnólogo', '3');

update curso SET tipo = "Sup. Tec." WHERE duracao = '3';
update curso SET duracao = "5" WHERE duracao = '4';
update curso SET nome = "Gestão da Tec. Inf." WHERE nome = 'Gestão de TI';

select * from curso;

create table professor(
id_professor int not null auto_increment,
nome varchar(70),
endereco varchar(80),
cidade varchar(80),
titulo varchar(20),
primary key(id_professor)
)default charset utf8mb4;

insert into professor
(nome, endereco, cidade, titulo)
values
('Pedro Antunes', 'Rua A, 30', 'São Paulo', 'Mestre'),
('Carlos Augusto', 'Rua B, 50', 'São Paulo', 'Mestre'),
('Marta Andrade', 'Rua C, 90', 'São Paulo', 'Especialista'),
('Clara Machado', 'Rua D, 20', 'São Paulo', 'Doutora');

delete from professor where titulo = 'Doutora';
select * from professor;
delete from professor where nome = "Marta Andrade";
select * from professor;
delete from professor where titulo = "Mestre";
select * from professor;

create table curso2(
	id_curso int auto_increment,
    nome varchar(30) not null,
    duracao int not null,
    mensalidade float,
    primary key(id_curso)
)default charset utf8mb4;
insert into curso2
(nome, duracao, mensalidade)
values
("Análise Sist.", "4", "400"),
("Eng. Mecatrônica", "5", "600"),
("Ciência Comp.", "4", "450"),
("Eng. Elétrica", "4", "600"),
("Turismo", "3", "350");

create table disciplina(
	id_disciplina int auto_increment not null,
    nome varchar(20) not null,
    carga int not null,
    area varchar(40),
    pre_requisito varchar(10),
    primary key(id_disciplina)
)default charset utf8mb4;

insert into disciplina
(nome, carga, area, pre_requisito)
values
("TLP1", "2", "Computação", "D2"),
("Cálculo 1", "4", "Matemática", null),
("Inglês", "2", "Humanas", null),
("Ed. Fisica", "3", "Saúde", null),
("G. Analítica", "5", "Matemática", "D2"),
("Projeto Final", "6", null, "D1");

select * from disciplina;
select * from disciplina where nome like "G%%a";
select * from curso2 where mensalidade between 450 and 600;
select max(mensalidade) from curso2; 
select min(mensalidade) from curso2;
select avg(mensalidade) from curso2;

create table grade(
	id_curso int,
    id_disciplina int,
    id_professor int,
    primary key(id_curso, id_disciplina, id_professor)
)default charset utf8mb4;