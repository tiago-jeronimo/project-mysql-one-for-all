SELECT 
    COUNT(DISTINCT (musica.id_musica)) AS cancoes,
    COUNT(DISTINCT (artista.id_artista)) AS artistas,
    COUNT(DISTINCT (album.id_album)) AS albuns
FROM musica 
JOIN album ON album.id_album = musica.id_album
JOIN artista ON artista.id_artista = artista.id_artista;