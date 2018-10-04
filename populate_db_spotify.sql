-- Populate table Artista
-- insert into Artista(nome, nacionalidade, foto) values(nome, nacionalidade, foto_url);
-- Eagle
insert into Artista(nome, nacionalidade, foto) values('Glenn Frey', 'norte-americana', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Glenn_Frey.jpg/400px-Glenn_Frey.jpg');
insert into Artista(nome, nacionalidade, foto) values('Don Henley', 'norte-americana', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Don_Henley.jpg/400px-Don_Henley.jpg');
insert into Artista(nome, nacionalidade, foto) values('Bernie Leadon', 'norte-americana', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/FlyingBurritos1970.jpg/599px-FlyingBurritos1970.jpg');
insert into Artista(nome, nacionalidade, foto) values('Randy Meisner', 'norte-americana', NULL);

--The Beatles
insert into Artista(nome, nacionalidade, foto) values('John Lennon', 'britanica', 'https://upload.wikimedia.org/wikipedia/commons/5/51/JohnLennonpeace.jpg');
insert into Artista(nome, nacionalidade, foto) values('Paul McCartney', 'britanica', 'https://upload.wikimedia.org/wikipedia/commons/f/f6/MaccaNewY.jpg');
insert into Artista(nome, nacionalidade, foto) values('George Harrison', 'britanica', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/George_Harrison_1974_edited.jpg/400px-George_Harrison_1974_edited.jpg');
insert into Artista(nome, nacionalidade, foto) values('Ringo Starr', 'britanica', 'https://pt.wikipedia.org/wiki/Ficheiro:Ringo_Starr_and_all_his_band_(8470866906).jpg');

--Fifth Harmony
insert into Artista(nome, nacionalidade, foto) values('Ally Brooke', 'norte-americana', 'https://pt.wikipedia.org/wiki/Ficheiro:Ally_Brooke_2017_(cropped).jpg');
insert into Artista(nome, nacionalidade, foto) values('Normani Kordei', 'norte-americana', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Normani_in_2017_%28cropped%29.jpg/500px-Normani_in_2017_%28cropped%29.jpg');
insert into Artista(nome, nacionalidade, foto) values('Lauren Jauregui', 'norte-americana', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Lauren_Jauregui_in_2017_%28cropped%29.jpg/440px-Lauren_Jauregui_in_2017_%28cropped%29.jpg');
insert into Artista(nome, nacionalidade, foto) values('Dinah Jane', 'norte-americana', NULL);
insert into Artista(nome, nacionalidade, foto) values('Camila Cabello', 'norte-americana', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/20170116212355%2193.3_FLZ_Jingle_Ball_Tampa_Florida_IMG_6336_%2811490125964%29_%28cropped%29.jpg/440px-20170116212355%2193.3_FLZ_Jingle_Ball_Tampa_Florida_IMG_6336_%2811490125964%29_%28cropped%29.jpg');


-- Populate table Feat
insert into Feat(artistaA, artistaB) values (artistaA, artistaB);
insert into Feat(artistaA, artistaB) values ("John Lennon", "Camila Cabello");

-- Populate table Banda
-- insert into Banda(nome, estilo musical, nacionalidade) values(nome, estilo musical, nacionalidade);
insert into Banda(nome, estilo musical, nacionalidade) values('Eagles', 'Rock', 'norte-americana');
insert into Banda(nome, estilo musical, nacionalidade) values('The Beatles', 'Rock', 'britanica');
insert into Banda(nome, estilo musical, nacionalidade) values('Fifth Harmony', 'Pop', 'norte-americana');


-- Populate table Show
insert into Show(nome, banda, data_de_entrada,local_do_show) values(nome, banda, data_de_entrada,local_do_show);

-- Populate table Pertence
insert into Pertence(nomeArtista, nomeBanda, data_de_entrada, funcao) values(nomeArtista, nomeBanda, data_de_entrada, funcao);

-- Populate table Usuario
insert into Usuario(username, data_de_nascimento, senha, cidade, estado);

-- Populate table Musica
insert into Musica(nome, banda, duração, foto) values (nome, banda, duração, foto);

-- Populate table Playlist
insert into Playlist(nome, foto, quantidade_de_musicas, dono) values (nome, foto, quantidade_de_musicas, dono);

-- Populate table PlaylistColaborativa
insert into PlaylistColaborativa(nome, limite_de_colaboradores, descricao, likes) values(nome, limite_de_colaboradores, descricao, likes);

-- Populate table PlaylistPrivada
insert into PlaylistPrivada(nome, data_de_inicio, duracao_total, baixado) values(nome, data_de_inicio, duracao_total, baixado);

-- Populate table Inserir
insert into Inserir(musica, playlist, usuario) values(musica, playlist, usuario);

-- Populate table Seguir
insert into Seguir(playlist, usuario, usuario_que_seguiu) values(playlist, usuario, usuario_que_seguiu);