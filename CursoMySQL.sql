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

INSERT INTO estado(nome, sigla, data_cadastro) VALUES('SÃO PAULO', 'SP', '2022-07-10');

SELECT id, nome, sigla, ativo, data_cadastro FROM estado;

CREATE TABLE cidade(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    ativo CHAR(1) NOT NULL DEFAULT 'S',
    data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    estado_id INT NOT NULL,
    CONSTRAINT pk_cidade PRIMARY KEY (id),
    CONSTRAINT fk_cidade_estado FOREIGN KEY (estado_id) REFERENCES estado (id),
    CONSTRAINT cidade_ativo_deve_ser_S_ou_N CHECK (ativo IN ('S', 'N')),
    CONSTRAINT cidade_unica UNIQUE(nome, estado_id)
);

INSERT INTO cidade (nome, estado_id) VALUES('CURITIBA', 3);

DELETE FROM cidade where estado_id = 3;

SELECT * FROM cidade;

/*
5. Escreva o comando para inserir 3 registros da tabela estado com todas as colunas. 
	INSERT INTO estado(id, nome, sigla, data_cadastro) VALUES(1, 'PARANÁ', 'S', 'PR', '2022-07-10');
    INSERT INTO estado(id, nome, sigla, data_cadastro) VALUES(2, 'SÃO PAULO', 'N', 'SP', '2022-07-10');
    INSERT INTO estado(id, nome, sigla, data_cadastro) VALUES(3, 'RIO DE JANEIRO', 'S', 'RJ', '2022-07-10');
6. Escreva o comando para inserir 2 registros da tabela estado, definindo todos os dados, exceto a chave  primária que é auto incremento. 
	INSERT INTO estado(nome, sigla, data_cadastro) VALUES('RIO GRANDE DO SUL', 'S', 'RS', '2022-07-10');
    INSERT INTO estado(nome, sigla, data_cadastro) VALUES(3, 'MATO GROSSO', 'N', 'MT', '2022-07-10');
9.	Escreva o comando para alterar o valor de uma coluna de um único registro de uma tabela utilizando como filtro, o Primary Key.
	UPDATE estado SET ativo = 'S' WHERE ID = 3;
10.	Refaça o exercício anterior alterando os dados de mais que uma coluna de um único registro sem utilizar como filtro a chave primária. A escolha da coluna do filtro é muito importante – TOME CUIDADO.
	UPDATE cidade SET ativo = 'S', data_cadastro = '2022-07-10', WHERE ativo = 'N';
6.	Escreva o comando para seleccionar todos os registros da tabela cidade com todas as colunas.
	SELECT * FROM cidade;
7.	Escreva o comando para seleccionar o nome de todos os registros da tabela cidade.
	SELECT cidade_nome FROM cidade;
*/
