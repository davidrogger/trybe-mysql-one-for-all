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
  id INT PRIMARY KEY NOT NULL,
  `name` VARCHAR(150) NOT NULL,
  duration_seconds INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES album(id)
);