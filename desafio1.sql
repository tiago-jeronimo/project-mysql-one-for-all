DROP DATABASE IF EXISTS `SpotifyClone`;

CREATE SCHEMA IF NOT EXISTS `SpotifyClone`;

USE `SpotifyClone` ;

-- ------------------------------/////------------------------------ --
-- >>> CRIA TABELA DE PLANOS <<<
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`planos`(
    `id_plano` INT NOT NULL,
    `nome` VARCHAR(60) NOT NULL,
    `valor` VARCHAR(60) NOT NULL,

    PRIMARY KEY (`id_plano`)
    ) ENGINE = InnoDB;

-- >>> POPULA TABELA DE PLANOS <<<
INSERT INTO `SpotifyClone`.`planos` (`id_plano`,`nome`, `valor`)
VALUES  
        (1, 'gratuito', 0.00),
        (2, 'universitário', 5.99),
		(3, 'pessoal', 6.99),
        (4, 'familiar', 7.99)
;

-- ------------------------------/////------------------------------ --

-- >>> CRIA TABELA DE USUARIO <<<
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`usuario` (
    `id_usuario` INT NOT NULL AUTO_INCREMENT,
    `idade` INT NOT NULL,
    `id_plano` INT NOT NULL,
    `nome` VARCHAR(60) NOT NULL,
    `data_assinatura` DATETIME NOT NULL,

    PRIMARY KEY(`id_usuario`),
    FOREIGN KEY (`id_plano`) REFERENCES `SpotifyClone`.`planos` (`id_plano`)
    ) ENGINE = InnoDB;



-- >>> POPULA TABELA DE USUARIO <<<
INSERT INTO `SpotifyClone`.`usuario`
VALUES
        (1, 23, 1, 'Thati', '2019-10-20'),
        (2, 35, 4, 'Cintia', '2017-12-30'),
        (3, 20, 2, 'Bill', '2019-06-05'),
        (4, 45, 3, 'Roger', '2020-05-13'),
        (5, 58, 3, 'Norman', '2017-02-17'),
        (6, 33, 4, 'Patrick', '2017-01-06'),
        (7, 26, 2, 'Vivian', '2018-01-05'),
        (8, 19, 2, 'Carol', '2018-02-14'),
        (9, 42, 4, 'Angelina', '2018-04-29'),
        (10, 46, 4, 'Paul', '2017-01-17');

-- ------------------------------/////------------------------------ -- 
-- >>> CRIA TABELA DE ARTISTA <<<

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artista` (
    `id_artista` INT NOT NULL,
    `nome` VARCHAR(60) NOT NULL,

    PRIMARY KEY(`id_artista`)
) ENGINE = InnoDB;


-- >>> POPULA TABELA DE ARTISTA <<<

INSERT INTO `SpotifyClone`.`artista`
VALUES 
        (1, 'Walter Phoenix' ),
        (2, 'Peter Strong' ),
        (3, 'Lance Day'),
        (4, 'Freedie Shannon'),
        (5, 'Tyler Isle'),
        (6, 'Fog'); 

-- ------------------------------/////------------------------------ --
-- >>> CRIA TABELA DE ALBUNS <<<

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`album` (
    `id_album` INT NOT NULL AUTO_INCREMENT,
    `nome_album` VARCHAR(60) NOT NULL,
    `ano_de_lancamento` INT NULL,
    `id_artista` INT NOT NULL,

    PRIMARY KEY (`id_album`),
    FOREIGN KEY (`id_artista`) REFERENCES `SpotifyClone`.`artista` (`id_artista`)
) ENGINE = InnoDB;


-- >>> POPULA TABELA DE ALBUNS <<<
INSERT INTO `SpotifyClone`.`album`
VALUES 
        (1, 'Envious', 1990, 1),
        (2, 'Exuberant', 1993, 1),
        (3, 'Hallowed Steam', 1995, 2),
        (4, 'Incandescent', 1998, 3),
        (5, 'Temporary Culture', 2001, 4),
        (6, 'Library of liberty', 2003, 4),
        (7, 'Chained Down', 2007, 5),
        (8, 'Cabinet of fools', 2012, 5),
        (9, 'No guarantees', 2015, 5),
        (10, 'Apparatus', 2015, 6);


-- ------------------------------/////------------------------------ --
-- >>> CRIA TABELA DE MUSICAS <<<

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`musica` (
    `id_musica` INT NOT NULL AUTO_INCREMENT ,
    `id_album` INT NOT NULL,
    `nome` VARCHAR(60) NULL, 
    `duracao` INT NOT NULL,
    `id_artista` INT NOT NULL, 

    PRIMARY KEY(`id_musica`),
    FOREIGN KEY(`id_album`) REFERENCES `SpotifyClone`.`album` (`id_album`),
    FOREIGN KEY(`id_artista`) REFERENCES `SpotifyClone`.`artista` (`id_artista`)
) ENGINE = InnoDB;


-- >>> POPULA TABELA DE MUSICAS <<<

INSERT INTO `SpotifyClone`.`musica` 
VALUES 
        (1, 1, "Soul For Us", 200, 1),
        (2, 1, "Reflections Of Magic", 163, 1),
        (3, 1, "Dance With Her Own", 116, 1),
        (4, 2, "Troubles Of My Inner Fire", 203, 1),
        (5, 2, "Time Fireworks", 152, 1),
        (6, 3, "Magic Circus", 105, 2),
        (7, 3, "Honey, So Do I", 207, 2),
        (8, 3, "Sweetie, Let's Go Wild", 139, 2),
        (9, 3, "She Knows", 244 , 2),
        (10, 4, "Fantasy For Me", 100, 3),
        (11, 4, "Celebration Of More", 146, 3),
        (12, 4, "Rock His Everything", 223, 3),
        (13, 4, "Home Forever", 231, 3),
        (14, 4, "Diamond Power", 241, 3),
        (15, 4, "Let's Be Silly", 132 , 3),
        (16, 5, "Thang Of Thunder", 240, 4),
        (17, 5, "Words Of Her Life", 185, 4 ),
        (18, 5, "Without My Streets", 176, 4),
        (19, 6, "Need Of The Evening", 190, 4),
        (20, 6, "History Of My Roses", 222, 4),
        (21, 6, "Without My Love", 111, 4),
        (22, 6, "Walking And Game", 123, 4),
        (23, 6, "Young And Father", 197 , 4),
        (24, 7, "Finding My Traditions", 179, 5),
        (25, 7, "Walking And Man", 229, 5),
        (26, 7, "Hard And Time", 135, 5),
        (27, 7, "Honey, I'm A Lone Wolf", 150, 5),
        (28, 8, "She Thinks I Won't Stay Tonight", 166, 5),
        (29, 8, "He Heard You're Bad For Me", 154, 5),
        (30, 8, "He Hopes We Can't Stay", 210, 5),
        (31, 8, "I Know I Know", 117, 5),
        (32, 9, "He's Walking Away", 159, 5),
        (33, 9, "He's Trouble", 138, 5),
        (34, 9, "I Heard I Want To Bo Alone", 120, 5),
        (35, 9, "I Ride Alone", 151, 5),
        (36, 10, "Honey", 79, 6),
        (37, 10, "You Cheated On Me", 95, 6),
        (38, 10, "Wouldn't It Be Nice", 213, 6),
        (39, 10, "Baby", 136, 6),
        (40, 10, "You Make Me Feel So..", 83, 6);



-- ------------------------------/////------------------------------ --
-- >>> CRIA TABELA DE HISTORICO <<<

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`historico` (
    `id_usuario` INT NOT NULL,
    `id_musica` INT NOT NULL,
    `data` DATETIME NOT NULL, 

    PRIMARY KEY (`id_usuario`, `id_musica` ),
    FOREIGN KEY(`id_usuario`) REFERENCES `SpotifyClone`.`usuario` (`id_usuario`),
    FOREIGN KEY(`id_musica`) REFERENCES `SpotifyClone`.`musica` (`id_musica`)
)ENGINE = InnoDB;


-- >>> POPULA TABELA DE HISTORICO <<<

INSERT INTO `SpotifyClone`.`historico`
VALUES
        (1, 36, "2020-02-28 10:45:55"),
        (1, 25, "2020-05-02 05:30:35"),
        (1, 23, "2020-03-06 11:22:33"),
        (1, 14, "2020-08-05 08:05:17"),
        (1, 15, "2020-09-14 16:32:22"),
        (2, 34, "2020-01-02 07:40:33"),
        (2, 24, "2020-05-16 06:16:22"),
        (2, 21, "2020-10-09 12:27:48"),
        (2, 39, "2020-09-21 13:14:46"),
        (3, 6, "2020-11-13 16:55:13"),
        (3, 3, "2020-12-05 18:38:30"),
        (3, 26, "2020-07-30 10:00:00"),
        (4, 2, "2021-08-15 17:10:10"),
        (4, 35, "2021-07-10 15:20:30"),
        (4, 27, "2021-01-09 01:44:33"),
        (5, 7, "2020-07-03 19:33:28"),
        (5, 12, "2017-02-24 21:14:22"),
        (5, 14, "2020-08-06 15:23:43"),
        (5, 1, "2020-11-10 13:52:27"),
        (6, 38, "2019-02-07 20:33:48"),
        (6, 29, "2017-01-24 00:31:17"),
        (6, 30, "2017-10-12 12:35:20"),
        (6, 22, "2018-05-29 14:56:41"),
        (7, 5, "2018-05-09 22:30:49"),
        (7, 4, "2020-07-27 12:52:58"),
        (7, 11, "2018-01-16 18:40:43"),
        (8, 39, "2018-03-21 16:56:40"),
        (8, 40, "2020-10-18 13:38:05"),
        (8, 32, "2019-05-25 08:14:03"),
        (8, 33, "2021-08-15 21:37:09"),
        (9, 16, "2021-05-24 17:23:45"),
        (9, 17, "2018-12-07 22:48:52"),
        (9, 8, "2021-03-14 06:14:26"),
        (9, 9, "2020-04-01 03:36:00"),
        (10, 20, "2017-02-06 08:21:34"),
        (10, 21, "2017-12-04 05:33:43"),
        (10, 12, "2017-07-27 05:24:49"),
        (10, 13, "2017-12-25 01:03:57");

-- ------------------------------/////------------------------------ --
-- >>> CRIA TABELA DE SEGUINDO <<< 

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`seguindo`(
    `id_usuario` INT NOT NULL,
    `id_artista`  INT NOT NULL,

    PRIMARY KEY (`id_usuario`, `id_artista`),
    FOREIGN KEY (`id_usuario`) REFERENCES `SpotifyClone`.`usuario` (`id_usuario`),
    FOREIGN KEY (`id_artista`) REFERENCES `SpotifyClone`.`artista` (`id_artista`)
)ENGINE = InnoDB;


-- >>> POPULA TABELA DE SEGUINDO <<<

INSERT INTO `SpotifyClone`.`seguindo`
VALUES 
        (1, 1),
        (1, 4),
        (1, 2),
        (2, 1),
        (2, 3),
        (3, 2),
        (3, 1),
        (4, 4),
        (5, 5),
        (5, 6),
        (6, 6),
        (6, 3),
        (6, 1),
        (7, 2),
        (7, 5),
        (8, 1),
        (8, 5),
        (9, 6),
        (9, 4),
        (9, 3),
        (10, 3),
        (10, 6);