create database if not exists ExemploAula;

use ExemploAula;

create table if not exists Aluno (
	cod_aluno Int not null AUTO_INCREMENT,
	nome VARCHAR(30) not null,
	sobrenome VARCHAR(50),
	RA char(12) not null,
	constraint PK_ALUNO primary key  (cod_aluno),
	constraint UQ_RA unique (RA)
	
);

create table if not exists  Disciplina(
cod_disciplina int not null auto_increment primary key,
nome VARCHAR(50)
)
create table if not exists AlunoDisciplina (
cod_aluno Int not null,
cod_disciplina Int not null,
data_matricula timestamp not null,
primary key (cod_aluno, cod_disciplina),
foreign key (cod_aluno) references Aluno (cod_aluno),
foreign key (cod_disciplina) references Disciplina (cod_disciplina)
);


