CREATE DATABASE Smart_Ice;
USE Smart_Ice;

CREATE TABLE cliente (
id_cliente INT PRIMARY KEY auto_increment,
razao_social VARCHAR(60),
nome_fantasia VARCHAR(60),
cnpj VARCHAR(20),
endereco VARCHAR(100),
responsavel VARCHAR(45),
telefone VARCHAR(14),
email VARCHAR(50)
);

CREATE TABLE sensor (
id_sensor INT PRIMARY KEY auto_increment,
localizacao VARCHAR(20), constraint chkLocalizacao CHECK
	(localizacao in ('freezer', 'transporte'))
);

CREATE TABLE registro (
id_registro INT PRIMARY KEY auto_increment,
temperatura FLOAT,
data_hora DATETIME default current_timestamp
);

INSERT INTO cliente VALUES
(null, 'OGGI COMERCIO DE SORVETES LTDA', 'LOJA DA FABRICA OGGI SORVETES & CIA', '23.321.726/0001-21','Rua Jorge Rizk, 108 - Praia das Gaivotas, Vila Velha - ES', 'Eliane Rodrigues', '(27)99914-5028','e.rodrigues@oggi.com'),
(null, 'UNILEVER BRASIL LTDA', 'Kibon', '61.068.276/0001-04', 'Av. Presidente Juscelino Kubitschek - 1309, Itaim Bibi, São Paulo - SP', 'Renato Rodrigues', '(11)5897-8954', 'renato.rodrigues@kibon.com'),
(null, 'NESTLÉ BRASIL LTDA', 'Nestlé', '60.409.075/0001-52', 'Av. das Nações Unidas, 17007 - Várzea de Baixo, São Paulo - SP',  'Natalia Sena', '(11)5874-3216', 'natalia.senha@nestle.com'),
(null, 'Euphoria Ice Cream Comercio de Alimentos LTDA', 'Ben & Jerrys', '20.241.041/0001-87 ', 'Rua Oscar Freire, 957 - Cerqueira Cesar, São Paulo - SP', 'Susana Vieira', '(11) 3218-2622', 'susana.vieira@benejerrys.com');

INSERT INTO sensor (localizacao) VALUES
('freezer'),
('transporte'),
('freezer'),
('transporte'),
('freezer'),
('transporte'),
('freezer'),
('transporte');

INSERT INTO registro(temperatura) VALUE
('-19'),
('-18'),
('-20'),
('-18'),
('-21'),
('-18'),
('-20'),
('-22');

SELECT * FROM cliente;
SELECT * FROM sensor;
SELECT * FROM registro;