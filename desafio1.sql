CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plan (
	id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    cost DECIMAL(5, 2) NOT NULL
);

INSERT SpotifyClone.plan(`name`, cost) VALUES
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
