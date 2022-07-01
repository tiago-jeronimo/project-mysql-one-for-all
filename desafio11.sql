SELECT
  musica.nome AS nome_musica,
  CASE
    WHEN musica.nome LIKE "%Streets" THEN REPLACE (musica.nome, "Streets", "Code Review")
    WHEN musica.nome LIKE "%Her Own" THEN REPLACE (musica.nome, "Her Own", "Trybe")
    WHEN musica.nome LIKE "%Inner Fire" THEN REPLACE (musica.nome, "Inner Fire", "Project")
    WHEN musica.nome LIKE "%Silly" THEN REPLACE (musica.nome, "Silly", "Nice")
    WHEN musica.nome LIKE "%Circus" THEN REPLACE (musica.nome, "Circus", "Pull Request")  
  END AS novo_nome

FROM 
 SpotifyClone.musica
    HAVING novo_nome IS NOT NULL

    ORDER BY
        nome_musica ASC,
        novo_nome ASC;