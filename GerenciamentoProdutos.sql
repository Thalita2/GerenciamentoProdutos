CREATE DATABASE GerenciamentoP;

USE GerenciamentoP;

DROP DATABASE GerenciamentoP;

CREATE TABLE Produtos(
ProdutoId INT PRIMARY KEY AUTO_INCREMENT,
NomeProduto VARCHAR(100) NOT NULL,
Descricao VARCHAR(255) NOT NULL,
Preco DECIMAL(10,2) NOT NULL
);

INSERT INTO Produtos(NomeProduto, Descricao, Preco) VALUES ('Caneta', 'Caneta Azul, Bic', 2.50);
INSERT INTO Produtos(NomeProduto, Descricao, Preco) VALUES ('Giz de Cera', 'Kit com 6 Giz de Cera', 5.50);
INSERT INTO Produtos(NomeProduto, Descricao, Preco) VALUES ('Caderno', 'Caderno 20 matérias, Cadeal', 30.50);
INSERT INTO Produtos(NomeProduto, Descricao, Preco) VALUES ('Lápis', 'Lápis preto, Faber Castell', 1.50);
INSERT INTO Produtos(NomeProduto, Descricao, Preco) VALUES ('Marca Texto', 'Kit com 6 Marca Texto, Faber Castell', 12.50);

DROP TABLE Produtos;

CREATE TABLE Comentarios(
ComentariosId INT PRIMARY KEY AUTO_INCREMENT,
Autor VARCHAR(255) NOT NULL,
TextoComentario VARCHAR(255) NOT NULL,
DataComentario DATE NOT NULL,
IdProduto INT,
FOREIGN KEY (IdProduto) REFERENCES Produtos(ProdutoId)
);

INSERT INTO Comentarios(Autor, TextoComentario, DataComentario, IdProduto) VALUES ('Thalita', 'Ótima caneta', '2018-05-16', 1);
INSERT INTO Comentarios(Autor, TextoComentario, DataComentario, IdProduto) VALUES ('Thalita', 'Legal', '2018-05-16', 1);
INSERT INTO Comentarios(Autor, TextoComentario, DataComentario, IdProduto) VALUES ('João', 'Gostei do kit giz de cera', '2019-06-17', 2);
INSERT INTO Comentarios(Autor, TextoComentario, DataComentario, IdProduto) VALUES ('Joana', 'Gostei do caderno', '2020-07-18', 3);
INSERT INTO Comentarios(Autor, TextoComentario, DataComentario, IdProduto) VALUES ('Maria', 'Ótimo lápiz', '2022-08-19', 4);
INSERT INTO Comentarios(Autor, TextoComentario, DataComentario, IdProduto) VALUES ('Pedro', 'Boa pigmentação dos marca textos', '2023-09-20', 5);

DROP TABLE Comentarios;

SELECT P.NomeProduto AS 'Número total de comentários', 
COUNT(C.ComentariosId) AS 'Comentários'
FROM Produtos P
INNER JOIN Comentarios C ON P.ProdutoId = C.IdProduto
GROUP BY P.NomeProduto;

SELECT*FROM Produtos;
SELECT*FROM Comentarios;
