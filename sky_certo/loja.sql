DROP DATABASE LOJA;
CREATE DATABASE LOJA;

USE LOJA;

CREATE TABLE usuario(
idUsuario INT AUTO_INCREMENT,
nome VARCHAR(60),
email VARCHAR(60),
senha VARCHAR(60),
cpf VARCHAR(11),
dtNasc DATE,
tipoUsuario VARCHAR(11), 
PRIMARY KEY(idUsuario)
) engine = innodb;


CREATE TABLE produto(
idProduto INT AUTO_INCREMENT,
nmProduto VARCHAR(60) NOT NULL,
preco FLOAT NOT NULL,
descricao VARCHAR(11),
imagem VARCHAR(100),
sabor VARCHAR(11),
PRIMARY KEY(idProduto)
) engine = innodb;

INSERT INTO usuario (nome, email, senha, cpf,tipoUsuario)
VALUES ('ana', 'ana@gmail.com', 'ana123456', '999.999.999-99','admin');

INSERT INTO produto (nmProduto, preco, descricao, sabor
VALUES ('sabor do ceu', 12, 'o sol', 'creme');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('chocolate', 12, 'o sole', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('morango', 2, 'top', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('creme', 22, 'bom', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('uva', 21, 'gostoso', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('pera', 2, 'legal', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('abacaxi', 2, 'cleiton', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('damasco', 12, 'otimo', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('pessego', 12, 'pessimo', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('kiwi', 12, 'massa', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('caju', 12, 'bem', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('amora', 12, 'legal', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('melancia', 12, 'magali', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('flocos', 12, 'tops', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('castanha', 12, 'ruim', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('leite', 12, 'zop', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('ninho', 12, 'zip', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('brigadeiro', 12, 'Brasil', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('pistache', 12, 'ines', 'cremes');

INSERT INTO produto (nmProduto, preco, descricao, sabor)
VALUES ('beijinho', 12, 'ai', 'cremes');


CREATE TABLE pedido(
idPedido INT AUTO_INCREMENT,
idUsuario INT NOT NULL,
PRIMARY KEY(idPedido) ,
FOREIGN KEY(idUsuario) REFERENCES usuario(idUsuario)
) engine = innodb;


CREATE TABLE pedido_produto(
idPedido_produto INT AUTO_INCREMENT,
idProduto INT NOT NULL,
idPedido INT NOT NULL,
quantidade VARCHAR(5), 
PRIMARY KEY(idPedido_produto),
FOREIGN KEY(idProduto) REFERENCES produto(idProduto),
FOREIGN KEY(idPedido) REFERENCES pedido(idPedido)
) engine = innodb;