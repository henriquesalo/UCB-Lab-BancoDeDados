CREATE DATABASE exemplo1;

USE exemplo1;

CREATE table uf (
    id INT(3) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50),
    sigla VARCHAR(2),
    PRIMARY KEY (id)
);

CREATE table cidade (
    id INT(3) NOT NULL AUTO_INCREMENT,
    uf_id INT(3),
    nome VARCHAR(50),
    PRIMARY KEY (id),
    CONSTRAINT cidade_uf_id FOREIGN KEY (uf_id) REFERENCES uf (id) 
);
DESCRIBE cidade;

