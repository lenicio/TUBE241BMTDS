CREATE DATABASE livraria;
USE livraria;

CREATE TABLE pais (
	id INT AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL UNIQUE,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

INSERT INTO pais (nome) VALUES 
('Brasil'),
('Reino Unido'),
('Estados Unidos'),
('México'),
('França');

CREATE TABLE autores (
	id INT AUTO_INCREMENT,
    nome_autor VARCHAR(200) NOT NULL,
    pais_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(pais_id) REFERENCES pais(id)
);

CREATE TABLE livros (
	id INT AUTO_INCREMENT,
    titulo VARCHAR (200) NOT NULL,
    autor_id INT NOT NULL,
    ano_publicacao CHAR(4) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (autor_id) REFERENCES autores(id)
);


SELECT * FROM pais;

INSERT INTO autores (nome_autor, pais_id) VALUES 
('JK Rowlings', 2),
('J.R.R Tolkien', 3),
('Monteiro Lobato', 1),
('Machado de Assis', 2);

INSERT INTO livros (titulo, autor_id, ano_publicacao) VALUES
('Livro 03', 1, '2024'),
('Livro 02', 1, '2024'),
('Livro 01', 2, '2023'),
('Livro 00', 3, '2022'),
('Livro -01', 3, '1990');



SELECT 
	autores.nome_autor,
    livros.titulo,
    pais.nome
FROM 	
	livros
    JOIN autores ON livros.autor_id = autores.id
    JOIN pais ON autores.pais_id = pais.id 
WHERE pais.nome = 'Reino Unido'
