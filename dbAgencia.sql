drop database dbAgencia;

create database dbAgencia;
use dbAgencia;

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100),
email varchar (100),
telCel char (10),
cpf char (14),
sexo char (1) default 'F' check (sexo in('F','M','N')),
salario decimal (9,2) default 0 check(salario >= 0),
primary key (codFunc) 
);


insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Kamilla Melissa','kamilla.mel@gmail.com', '96741-3617', '472.805.507.30','f',4500.50 );
	insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Victor Mangabeira','victor.mangabeira@gmail.com', '95631-3516', '471.804.506.31','m',5000.50 );
	insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Wesley de Jesus','wesley.jesus@gmail.com', '94521-3415', '470.803.502.32','m',6000.50 );
	insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Emilia Piega','emi.piega@gmail.com', '96611-3314', '472.802.501.33','f',5300.50 );
	insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Joao Biscoito','joao.biscoito@gmail.com', '96501-3213', '472.801.500.34','m',2500.50 );

	select * from tbFuncionarios;
	select nome, email from tbFuncionarios;
	select nome, salario from tbFuncionarios;

	select codFunc as 'Codigo', nome as 'Nome' from tbFuncionarios;
	