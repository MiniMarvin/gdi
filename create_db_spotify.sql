DROP TABLE Artista;
DROP TABLE Feat;
DROP TABLE Banda;
DROP TABLE Show;
DROP TABLE Pertence;
DROP TABLE Usuario;
DROP TABLE Musica;
DROP TABLE Genero;
DROP TABLE Playlist;
DROP TABLE PlaylistPrivada;
DROP TABLE Inserir;

 
create table Artista(
	nome varchar(100), 
	nacionalidade varchar(100), 
	foto varchar(100), 
	constraint artista_pk primary key (nome)
);

create table Feat(
	artistaA varchar(100), 
	artistaB varchar(100), 
	constraint feat_pk primary key (artistaA, artistaB),
	constraint feat_fk1 foreign key (artistaA) references Artista(nome),
	constraint feat_fk2 foreign key (artistaB) references Artista(nome)
);

create table Banda(
	nome varchar(100), 
	estilo_musical varchar(100), 
	nacionalidade varchar(100),
	constraint banda_pk primary key (nome)
);

create table Show(
	nome varchar(100), 
	banda varchar(100) unique, 
	data_de_entrada varchar(100), 
	local_do_show varchar(100),
	constraint show_pk primary key (nome),
	constraint show_fk1 foreign key (banda) references Banda(nome)
);

create table Pertence(
	nomeArtista varchar(100), 
	nomeBanda varchar(100), 
	data_de_entrada date, 
	funcao varchar(100),
	constraint pertence_pk primary key (nomeArtista, nomeBanda, data_de_entrada, funcao),
	constraint pertence_fk1 foreign key (nomeArtista) references Artista(nome),
	constraint pertence_fk2 foreign key (nomeBanda) references Banda(nome)
);

create table Usuario(
	username varchar(100), 
	data_de_nascimento date, 
	senha varchar(100), 
	cidade varchar(100), 
	estado varchar(100),
	constraint usuario_pk primary key (username)
);

create table Musica(
	nome varchar(100), 
	banda varchar(100) unique not null, 
	duração int, 
	foto varchar(100),
	constraint musica_pk primary key (nome),
	constraint musica_fk1 foreign key (banda) references Banda(nome)
);

create table Genero(
	musica varchar(100), 
	genero varchar(100),
	constraint genero_pk primary key (musica, genero),
	constraint genero_fk1 foreign key (musica) references Musica(nome)
);

create table Playlist(
	nome varchar(100), 
	foto varchar(100),  
	quantidade_de_musicas int,
	dono varchar(100) unique not null,
	constraint playlist_pk primary key (nome),
	constraint playlist_colaborativa_fk2 foreign key (dono) references Usuario(username)
);

create table PlaylistColaborativa(
	nome varchar(100), 
	limite_de_colaboradores int, 
	descricao varchar(1000), 
	likes int,
	constraint playlist_colaborativa_pk primary key (nome),
	constraint playlist_colaborativa_fk1 foreign key (nome) references Playlist(nome)
	
);

create table PlaylistPrivada(
	nome varchar(100), 
	data_de_inicio date, 
	duracao_total int, 
	baixado int, 
	constraint playlist_privada_pk primary key (nome),
	constraint playlist_privada_fk1 foreign key (nome) references Playlist(nome)
);

create table Inserir(
	musica varchar(100), 
	playlist varchar(100),
	usuario varchar(100) not null, 
	constraint inserir_pk primary key (musica, playlist),
	constraint inserir_fk1 foreign key (musica) references Musica(nome),
	constraint inserir_fk2 foreign key (playlist) references Playlist(nome),
	constraint inserir_fk3 foreign key (usuario) references Usuario(username)
);

create table Seguir(
	playlist varchar(100), 
	usuario varchar(100), 
	usuario_que_seguiu varchar(100),
	constraint seguir_pk primary key (playlist, usuario),
	constraint seguir_fk1 foreign key (playlist) references Playlist(nome),
	constraint seguir_fk2 foreign key (usuario) references Usuario(username),
	constraint seguir_fk3 foreign key (usuario_que_seguiu) references Usuario(username)
);
