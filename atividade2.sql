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
codFilme varchar(3) primary key,
codAutor varchar(3) primary key,
personagem varchar(40) not null,
Cache int(15) not null
foreign key (codFilme) references filme(codFilme),
foreign key (codAtor) references ator(codAtor)
);

insert into ator values ('a1', 'Demi Moore', 'Maria da Silva', 'USA', 'F', 32, null, null);
insert into ator values ('a10', 'Willian Hurt', 'Willian Ernst Hurth', 'USA', 'M', 45, 2, 1);
insert into ator values ('a11', 'George Clooney', 'George Costa Smith', 'USA', 'M', 32, 1, null);
insert into ator values ('a12', 'Jennifer Lopez', 'Maria Conchita Lopez', 'México', 'F', 32, null, null);
insert into ator values ('a13', 'Antony Hopkins', 'Antony Richard Hopcroft', 'USA', 'M', 65, 6, 3);
insert into ator values ('a14', 'Antônio Banderas', 'Antônio Augusto Banderas', 'Espanha', 'M', 34, null, null);
insert into ator values ('a15', 'Tom Hanks', 'Antony Hanks', 'USA', 'M', 45, 1, 1);
insert into ator values ('a16', 'Matt Damon', 'Mattew Louis Damon', 'USA', 'M', 32, 1, 1);
insert into ator values ('a17', 'Jim Carrey', 'James Carrey', 'USA', 'M', 40, null, null);
insert into ator values ('a18', 'Nicole Kidman', 'Susan West', 'Austrália', 'F', 33, null, null);
insert into ator values ('a19', 'Val Kilmer', 'Valerio Soza Kilmer', 'Porto Rico', 'M', 40, null, null);
insert into ator values ('a20', 'Cameron Diaz', 'Esperanza Diaz', 'Costa Rica', 'F', 29, null, null);
insert into ator values ('a21', 'Holly Hunter', 'Susan Richards', 'USA', 'F', 33, 1, 1);
insert into ator values ('a22', 'Richard Gere', 'Richard Gere', 'USA', 'M', 34, null, null);
insert into ator values ('a3', 'Jessica Lange', 'Jessica Lange', 'USA', 'F', 42, 4, 2);
insert into ator values ('a4', 'Dustin Hoffman', 'Dustin Hoffman', 'USA', 'M', 36, 2, null);
insert into ator values ('a5', 'Sônia Braga', 'Sônia Braga', 'Brasil', 'F', 45, null, null);
insert into ator values ('a6', 'Samuel Jacson', 'Samuel L. Jackson', 'USA', 'M', 40, null, null);
insert into ator values ('a7', 'Sandra Bullock', 'Sandra Bullock', 'USA', 'F', 30, 2, null);
insert into ator values ('a8', 'Harry Cornick Jr.', 'Harry Cornick Jr.', 'USA', 'M', 40, null, null);
insert into ator values ('a9', 'Wesley Snipes', 'Wesley Snipes', 'USA', 'M', 31, 1, null);

insert into filme values ('f1', 'A jurada', 1996, 1000000, 18);
insert into filme values ('f10', 'Cidade das Sombras', 1997, 100000000, 7);
insert into filme values ('f11', 'Irresistível Paixão', 1998, 100000000, 10);
insert into filme values ('f12', 'A Máscara do Zorro', 1998, 110000000, 11);
insert into filme values ('f13', 'Quem vai ficar com Marry?', 1997, 6000000, 8);
insert into filme values ('f14', 'O resgate do soldado Ryan', 1997, 100000000, 7);
insert into filme values ('f15', 'O show de Truman', 1998, 100000000, 14);
insert into filme values ('f16', 'Batman, o Filme', 1995, 100000000, 9);
insert into filme values ('f17', 'Filadélfia', 1996, 100000000, 6);
insert into filme values ('f18', 'O Máscara', 1995, 6000000, 7);
insert into filme values ('f19', 'O Beijo da Mulher Aranha', 1990, 8000000, 24);
insert into filme values ('f2', 'A Letra Escarlate', 1995, 100000000, 24);
insert into filme values ('f20', 'O Pacificador', 1997, 100000000, 15);
insert into filme values ('f21', 'Ace Ventura', 1995, 7000000, 12);
insert into filme values ('f22', 'Chaplin', 1993, 8000000, 14);
insert into filme values ('f23', 'Batman e Robin', 1997, 100000000, 20);
insert into filme values ('f24', 'Strip Tease', 1996, 7000000, 12);
insert into filme values ('f25', 'Passageiro 57', 1993, 200000000, 15);
insert into filme values ('f26', 'Forrest Gump', 1996, 90000000, 15);
insert into filme values ('f3', 'Seven', 1995, 15000000, 20);
insert into filme values ('f4', 'Tootsie', 1982, 5000000, 16);
insert into filme values ('f5', 'Tieta', 1995, 2000000, 18);
insert into filme values ('f6', 'Código de Violência', 1997, 10000000, 15);
insert into filme values ('f7', 'Quando o Amor Acontece', 1998, 5000000, 12);
insert into filme values ('f8', 'A Vingança de Bette', 1998, 10000000, 9);
insert into filme values ('f9', 'Blade, o Caçador de Vampiros', 1998, 100000000, 18);

insert into personagem ('f1', 'a1', 'Mary', 30000);
insert into personagem ('f10', 'a10', 'Columbo', 3000000);
insert into personagem ('f11', 'a11', 'Johnny', 8000000);
insert into personagem ('f11', 'a12', 'Holly', 1000000);
insert into personagem ('f12', 'a13', 'Diego', 5000000);
insert into personagem ('f12', 'a14', 'Pancho', 8000000);
insert into personagem ('f13', 'a16', 'Roger', 4000000);
insert into personagem ('f13', 'a20', 'Mary', 5000000);
insert into personagem ('f14', 'a15', 'Roberts', 10000000);
insert into personagem ('f14', 'a16', 'Edward', 200000);
insert into personagem ('f14', 'a17', 'Truman', 12000000);
insert into personagem ('f16', 'a17', 'Charade', 5000000);
insert into personagem ('f16', 'a18', 'Betty', 7000000);
insert into personagem ('f16', 'a19', 'Bruce', 8000000);
insert into personagem ('f17', 'a14', 'Bobby', 4000000);
insert into personagem ('f17', 'a15', 'Bill', 6000000);
insert into personagem ('f18', 'a17', 'Mascara', 10000000);
insert into personagem ('f18', 'a21', 'Sammy', 2000000);
insert into personagem ('f19', 'a10', 'Molina', 2000000);
insert into personagem ('f19', 'a5', 'Aranha', 80000);
insert into personagem ('f2', 'a1', 'Sandy', 50000);
insert into personagem ('f20', 'a11', 'George', 14000000);
insert into personagem ('f20', 'a18', 'Mary', 5000000);
insert into personagem ('f21', 'a17', 'Ace', 6000000);
insert into personagem ('f21', 'a21', 'Lola', 1000000);
insert into personagem ('f22', 'a8', 'Chaplin', 3000000);
insert into personagem ('f23', 'a11', 'Bruce', 10000000);
insert into personagem ('f24', 'a1', 'Annie', 18000000);
insert into personagem ('f25', 'a9', 'James', 14000000);
insert into personagem ('f26', 'a15', 'Forrest', 20000000);
insert into personagem ('f3', 'a2', 'John', 50000);
insert into personagem ('f4', 'a3', 'Mary', 1000000);
insert into personagem ('f4', 'a4', 'Tootsie', 2000000);
insert into personagem ('f5', 'a10', 'Nacib', 2500000);
insert into personagem ('f5', 'a5', 'Tieta', 50000);
insert into personagem ('f6', 'a6', 'Robinson', 3000000);
insert into personagem ('f7', 'a7', 'Suszy', 3000000);
insert into personagem ('f7', 'a8', 'Bill', 5000000);
insert into personagem ('f8', 'a3', 'Bette', 3000000);
insert into personagem ('f9', 'a9', 'Blade', 100000000);


