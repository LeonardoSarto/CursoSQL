DROP DATABASE IF EXISTS aula;
CREATE DATABASE aula;

USE aula;

CREATE TABLE estado(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL UNIQUE,
    sigla CHAR(2) NOT NULL UNIQUE,
    ativo CHAR(1) NOT NULL DEFAULT 'S',
    data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- CHECK (ativo IN ('S', 'N')),
    CONSTRAINT pk_estado PRIMARY KEY (id),
    CONSTRAINT coluna_ativo_deve_ser_S_ou_N CHECK (ativo IN ('S', 'N'))
);

INSERT INTO estado(nome, sigla, data_cadastro) VALUES('PARANÁ', 'PR', '2022-07-10');
INSERT INTO estado(nome, sigla, data_cadastro) VALUES('SÃO PAULO', 'SP', '2022-07-10');

SELECT id, nome, sigla, ativo, data_cadastro FROM estado;