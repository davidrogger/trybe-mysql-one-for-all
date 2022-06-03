CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plan (
	id INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  cost DECIMAL(5, 2) NOT NULL
);

INSERT SpotifyClone.plan(`name`, cost)
VALUES
  ('gratuito', 0.00),
  ('universitário', 5.99),
  ('pessoal', 6.99),
  ('familiar', 7.99);

CREATE TABLE SpotifyClone.user (
  id INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  age INT NOT NULL,
  signature_date DATE NOT NULL,
  plan_id INT,
  FOREIGN KEY (plan_id) REFERENCES plan(id)
);

INSERT SpotifyClone.user(`name`, age, signature_date, plan_id)
VALUES
  ('Thati', 23, '2019-10-20', 1),
  ('Cintia', 35, '2017-12-30', 4),
  ('Bill', 20, '2019-06-05', 2),
  ('Roger', 45, '2020-05-13', 3),
  ('Norman', 58, '2017-02-17', 3),
  ('Patrick', 33, '2017-01-06', 4),
  ('Vivian', 26, '2018-01-05', 2),
  ('Carol', 19, '2018-02-14', 2),
  ('Angelina', 42, '2018-04-29', 4),
  ('Paul', 46, '2017-01-17', 4);

CREATE TABLE SpotifyClone.artist(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL
);

INSERT SpotifyClone.artist(`name`)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon'),
  ('Tyles Isle'),
  ('Fog');

CREATE TABLE SpotifyClone.album(
  id INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  artist_id INT NOT NULL,
  release_year YEAR NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artist(id)
);

INSERT SpotifyClone.album(`name`, artist_id, release_year)
VALUES
  ('Envious', 1, '1990'),
  ('Exuberant', 1, '1993'),
  ('Hallowed Steam', 2, '1995'),
  ('Incandescent', 3, '1998'),
  ('Temporary Culture', 4, '2001'),
  ('Library of liberty', 4, '2003'),
  ('Chained Down', 5, '2007'),
  ('Cabinet of fools', 5, '2012'),
  ('No guarantees', 5, '2015'),
  ('Apparatus', 6, '2015');

CREATE TABLE SpotifyClone.music(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `name` VARCHAR(150) NOT NULL,
  duration_seconds INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES album(id)
);

INSERT SpotifyClone.music(`name`, duration_seconds, album_id)
VALUES
  ('Soul For Us', 200, 1),
  ('Reflections Of Magic', 163, 1),
  ('Dance With Her Own', 116, 1),
  ('Troubles Of My Inner Fire', 203, 2),
  ('Time Fireworks', 152, 2),
  ('Magic Circus', 105, 3),
  ('Honey, So Do I', 207, 3),
  ("Sweetie, Let\'s Go Wild", 139, 3),
  ('She Knows', 244, 3),
  ('Fantasy For Me', 100, 4),
  ('Celebration Of More', 146, 4),
  ('Rock His Everything', 223, 4),
  ('Home Forever', 231, 4),
  ('Diamond Power', 241, 4),
  ("Let\'s Be Silly", 132, 4),
  ('Thang Of Thunder', 240, 5),
  ('Words Of Her Life', 185, 5),
  ('Without My Streets', 176, 5),
  ('Need Of The Evening', 190, 6),
  ('History Of My Roses', 222, 6),
  ('Without My Love', 111, 6),
  ('Walking And Game', 123, 6),
  ('Young And Father', 197, 6),
  ('Finding My Traditions', 179, 7),
  ('Walking And Man', 229, 7),
  ('Hard And Time', 135, 7),
  ("Honey, I\'m A Lone Wolf", 150, 7),
  ("She Thinks I Won\'t Stay Tonight", 166, 8),
  ("He Heard You\'re Bad For Me", 154, 8),
  ("He Hopes We Can\'t Stay", 210, 8),
  ('I Know I Know', 117, 8),
  ("He\'s Walking Away", 159, 9),
  ("He\'s Trouble", 138, 9),
  ('I Heard I Want To Bo Alone', 120, 9),
  ('I Rider Alone', 120, 9),
  ('Honey', 79, 10),
  ('You Cheated On Me', 95, 10),
  ("Wouldn\'t It Be Nice", 213, 10),
  ('Baby', 136, 10),
  ('You Make Me Feel So..', 83, 10);
