create database cinema;
show databases;
use cinema;

create table ator(
codAutor varchar(3) primary key,
nomeArtistico varchar(40) not null,
nomeReal varchar(40) not null,
nacionalidade varchar(20) not null,
sexo char(1) not null,
idade int(2) not null,
indicacaoOscar int(2),
oscar int(2)
);

create table filme(
codFilme varchar(3) primary key,
nomeFilme varchar(40) not null,
anoFilme int(4) not null,
orcamento int(15) not null,
tempo int(2) not null
);

create table personagem(
foreign key (codFilme) references filme(codF),
foreign key (codAtor) references ator(codAtor),
personagem varchar(40) not null,
Cache int(15) not null
);