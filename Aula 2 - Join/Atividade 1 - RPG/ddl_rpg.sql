/*Atividade 1

Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.

siga exatamente esse passo a passo:

Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.

Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).

Popule esta tabela classe com até 5 dados.

Popule esta tabela personagem com até 8 dados.

Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.

Faça um select utilizando LIKE buscando os personagens com a letra C.

Faça um um select com Inner join entre tabela classe e personagem.

Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).
salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id_classe BIGINT PRIMARY KEY UNIQUE AUTO_INCREMENT NOT NULL,
	nome_classe VARCHAR(255) NOT NULL,
    wpn_classe VARCHAR(255),
    enm_classe VARCHAR(255)
);

CREATE TABLE tb_personagem(
	id_personagem BIGINT PRIMARY KEY UNIQUE AUTO_INCREMENT NOT NULL,
    nome_personagem VARCHAR(255) NOT NULL,
    classe_personagem BIGINT NOT NULL,
    nvl_personagem BIGINT DEFAULT 0,
    exp_personagem BIGINT DEFAULT 0,
    atk_personagem BIGINT,
    def_personagem BIGINT,
    FOREIGN KEY (classe_personagem) REFERENCES tb_classe(id_classe)
);
