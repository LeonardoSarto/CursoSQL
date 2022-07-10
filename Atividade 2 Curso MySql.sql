/*
INSERT -Lista Exercício 
Caso queira fazer na prática, execute o script do link: https://github.com/heliokamakawa/curso_bd/blob/master/05a-SELECT%20-%20script%20aula.sql
*/

-- 1) Escreva o comando para inserir um registro da tabela estado com todas as colunas. 
INSERT INTO estado VALUES (NULL,'ACRE','AC','S','2021-05-01'); 
/* 
Como id é um campo com auto incremento, definimos NULL no comando.
Como estamos inserindo todas as colunas não precisamos informar a descrição das colunas. 
Porém, devemos informar os dados na sequência correta 
**/ 

-- 2) Escreva o comando para inserir um registro da tabela estado, definindo todos os dados, exceto a  chave primária que é auto incremento.  
INSERT INTO estado (nome,sigla,ativo,data_cadastro) 
VALUES ('ALAGOAS','AL','S','2021-05-02'); 
-- Como não estamos informando todos os dados, é necessário especificar de quais colunas são 

-- 3) Escreva o comando para inserir um registro da tabela estado, definindo somente os dados  necessários.  
INSERT INTO estado (nome,sigla) VALUES ('AMAPÁ','AP'); 
/** 
id → não precisa informar porque é auto incremento  
ativo e data_cadastro → não precisa informar porque possui o valor padrão  
**/ 

-- 4) Escreva o comando para inserir registros da tabela cidade das 3 formas apresentadas nos exercícios  anteriores.  
-- O registro de uma cidade requer a referência do estado (cidade é dependente  do estado). Assim, é necessário, primeiro, fazer a inserção dos estados. 
INSERT INTO cidade (id,nome,estado_id,ativo,data_cadastro) VALUES (NULL, 'ACRELANDIA',1,'S','2021-04-28'); 
INSERT INTO cidade (nome,estado_id,ativo,data_cadastro) VALUES ('ASSIS  BRASIL',1,'S','2021-03-14'); 
INSERT INTO cidade (nome,estado_id) VALUES ('BRASILEIA',1);

/*
AGORA É A SUA VEZ!!!! Para que você aprenda, é muito importante que não copie e cole,  digite os comandos e mentalize o que está fazendo na medida que digita cada comando. Uma dica  importante é que você digite primeiro no bloco de notas, com intuito de testar se realmente  consegue digitar os comandos sem a ajuda do IDE – depois teste os comandos. 
5. Escreva o comando para inserir 3 registros da tabela estado com todas as colunas.
	INSERT INTO estado(id, nome, sigla, ativo, data_cadastro) VALUES (1, 'PARANÁ', 'PR', 'N', DEFAULT);
    INSERT INTO estado(id, nome, sigla, ativo, data_cadastro) VALUES (5, 'SÃO PAULO', 'SP', 'S', DEFAULT);
    INSERT INTO estado(id, nome, sigla, ativo, data_cadastro) VALUES (3, 'RIO DE JANEIRO', 'RJ', 'S', DEFAULT);
6. Escreva o comando para inserir 2 registros da tabela estado, definindo todos os dados, exceto a chave  primária que é auto incremento. 
	INSERT INTO estado(nome, sigla, ativo, data_cadastro) VALUES (2, 'SANTA CATARINA', 'SC', 'S', DEFAULT);
    INSERT INTO estado(nome, sigla, ativo, data_cadastro) VALUES (6, 'RIO GRANDE DO SUL CATARINA', 'RS', 'N', DEFAULT);
7. Escreva o comando para inserir 2 registros da tabela estado, definindo somente os dados necessários.
	INSERT INTO estado(nome, sigla) VALUES ('MATO GROSSO', 'MT'); 
8. Escreva o comando para inserir registros da tabela cidade das 3 formas apresentadas nos exercícios  anteriores.  
	INSERT INTO cidade(id, nome, ativo, data_cadastro, estado_id) VALUES (1, 'PARANAVAÍ', 'N', DEFAULT, 1);
    INSERT INTO estado(nome, ativo, data_cadastro, estado_id) VALUES ('SÃO PAULO', DEFAULT, 5);
    INSERT INTO estado(nome, estado_id) VALUES ('MARINGÁ', 1);
9. Faça a inserção de 2 registros de cliente.
	INSERT INTO cliente (nome, cidade_id) VALUES ('LEONARDO', 1);
    INSERT INTO cliente (nome, cidade_id, ativo) VALUES ('FÁBIO', 1, 'S');
10. DESAFIO!!! Tente fazer todas as inserções necessárias para que se tenha um item de caixa. Na medida  que esteja digitando o código, tente associar os dados inseridos com o contexto real.
	INSERT INTO produto (nome, preco) VALUES ('ABACAXI', 23);
*/