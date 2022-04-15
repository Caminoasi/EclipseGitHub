create database fazentech
default character set utf8
default collate utf8_general_ci;

use fazentech;
create table funcionarios (
id int not null auto_increment,
nome varchar(30) not null,
cpf varchar(14) unique not null,
telefone varchar(12) unique,
nascimento date,
funcao varchar(30),
sexo enum ('M','F'),
peso decimal (5,2), 
altura decimal (3,2),
nacionalidade varchar(20) default 'Brasil',
salario decimal, 
primary key (id)
) default charset = utf8;

create table producao (
id int not null auto_increment,
especie varchar (50) not null default 'holandesa',
ordenha date,
temperatura float (10),
produtividade float (10),
inseminação enum ('sim','não'),
estimativa float (10),
ruminação varchar (20),
primary key (id)
) default charset = utf8;

create table if not exists produtos (
id int not null auto_increment,
nome varchar (50) unique not null,
tipo varchar (50) not null,
quantidade int (30) not null,
preço int (10) not null,
primary key (id)
) default charset = utf8;

create table if not exists equipamentos (
id int not null auto_increment,
nome varchar (40) unique not null,
tipo varchar (20) not null,
função text not null,
quantidade int (30),
primary key (id)
) default charset = utf8;

create table varejistas (
id int not null auto_increment,
cpf varchar(14) unique not null,
telefone varchar(12) unique,
nome varchar (30) not null,
primary key (id)
) default charset = utf8;

insert into funcionarios values
(default, 'Felipe Silva Navarro', '112.669.558-88', '8293315-9988', '2002-08-09','Analista de Plantio', 'M', '70', '1.71', default, 2300.22),
(default, 'Frederica Paulino Silva', '557.665.992-88', '8297215-6332', '1998-05-10','Contadora', 'F', '78', '1.85', default, 1045.00),
(default, 'Nicole Pety', '663.889.554-22', '8291566-5544', '1992-10-10','Auxiliar Administrativo', 'F', '60', '1.53', default, 1045.00);
insert into producao values
(default, default, '2016-09-08', '25', '10', 'sim', '4', 'Ruminação otima'),
(default, default, '2018-10-08', '37', '29', 'sim', '8', 'Ruminação mediana'),
(default, default, '2020-04-11', '28', '6', 'nao', '3', 'Ruminação otima');
insert into equipamentos values
(default, 'pá', 'material', 'solo', '5'),
(default, 'regador', 'material', 'plantio', '10'),
(default, 'trator', 'veiculo', 'plantio', '1');
insert into produtos values
(default, 'semente', 'grão', '50', '5');
insert into produtos values
(default, 'vaca', 'animal', '100', '250'),
(default, 'trator', 'veiculo', '1', '1500');
insert into varejistas values
(default, '252.452,474-52', '8291162-4625', 'Jose Augusto Da Silva'),
(default, '464.989.741-47', '8291542-2578', 'Maria Da Silva Bezerra');
insert into varejistas values
(default, '525.747.396-25', '8292145-3697', 'João Jesus Cavalcante');
select * from funcionarios;
select * from producao;
select * from produtos;
select * from equipamentos;
select * from varejistas;
select tipo from produtos where preço=5;
select max(salario) from funcionarios;
select count(id) from funcionarios;
select nome from equipamentos where tipo='material' AND quantidade=10;
select nome from varejistas;
select temperatura from producao;
select nome from funcionarios where id=3;
desc funcionarios;
desc producao;
desc produtos;
desc equipamentos;
desc varejistas;