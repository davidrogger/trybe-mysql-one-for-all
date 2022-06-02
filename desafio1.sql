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
  signature_date DATETIME NOT NULL,
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
  name VARCHAR(100) NOT NULL,
);

INSERT SpotifyClone.artist(`name`,)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon'),
  ('Tyles Isle'),
  ('Fog');
