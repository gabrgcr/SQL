/* Atividade 1

Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa. 

Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.

Popule esta tabela com até 5 dados;

Faça um select que retorne os funcionaries com o salário maior do que 2000.

Faça um select que retorne os funcionaries com o salário menor do que 2000.

Ao término atualize um dado desta tabela através de uma query de atualização.

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

#Cria DB
CREATE DATABASE db_funcionario;
USE db_funcionario;

#Cria tabela
CREATE TABLE db_func(
	id_func BIGINT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    nome_func VARCHAR(255),
    end_func VARCHAR(255),
    cont_func DATE,
    sal_func FLOAT
    );

