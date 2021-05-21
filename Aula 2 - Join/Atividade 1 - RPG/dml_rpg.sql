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

USE tb_classe;

INSERT INTO tb_classe(nome_classe,wpn_classe,enm_classe) VALUES 
	("Guerreiro","Espada","Orcs"),
	("Arqueiro","Arco","Pombo"),
    ("Bárbaro","Maça","Humanos"),
    ("Mago","Cedro","Etereos"),
    ("Ladino","Adaga","Ratos"),
    ("Feiticeiro","Varinha","Espíritos");
    
USE tb_personagem;
    
INSERT INTO tb_personagem(nome_personagem,classe_personagem,atk_personagem,def_personagem) VALUES
	("Legolas",2,100,2000),
    ("Loise",1,1000,4000),
    ("Conan",3,5000,3000),
    ("Jack Bauer",5,3000,3000),
    ("Harry Potter",6,6000,1000),
    ("Gandalf",4,10000,2000),
    ("Biscoito",5,6000,1000),
    ("Angus Young",1,1000,4000);
    
SELECT * FROM tb_personagem WHERE atk_personagem>2000;

SELECT * FROM tb_personagem WHERE def_personagem>=1000 AND def_personagem<=2000;

SELECT * FROM tb_personagem WHERE nome_personagem LIKE "C%";

SELECT * FROM tb_personagem
	INNER JOIN tb_classe ON tb_personagem.classe_personagem = tb_classe.id_classe;
    
SELECT * FROM tb_personagem
	INNER JOIN tb_classe ON tb_personagem.classe_personagem = tb_classe.id_classe
	WHERE tb_classe.id_classe = 2;