/*Atividade 2

Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 

Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.

Popule esta tabela com até 8 dados;

Faça um select que retorne os produtos com o valor maior do que 500.

Faça um select que retorne os produtos com o valor menor do que 500.

Ao término atualize um dado desta tabela através de uma query de atualização.

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

#Cria DB
CREATE DATABASE db_produtos;
USE db_produtos;

#Cria Tabela
CREATE TABLE db_prod(
	id_prod BIGINT PRIMARY KEY UNIQUE AUTO_INCREMENT NOT NULL,
    nome_prod VARCHAR(255) NOT NULL,
    preco_prod FLOAT NOT NULL,
    qtde_prod BIGINT DEFAULT 0 NOT NULL,
    val_prod DATE)
