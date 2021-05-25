/*Atividade 6

Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra J.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria Java).

Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/


INSERT INTO tb_categoria(name_cat,desc_cat,duracao_cat) VALUES
	("Bacharelado","Curso de 5 anos, graduação superior",5),
    ("Tecnologo","Curso de 2 anos, graduação superior",2),
    ("Licenciatura","Curso de 3 anos, graduação superior",3),
    ("Tecnico","Curso de nível médio",2),
    ("Profissionalizante","Curso de curta duração, nível médio",1);

INSERT INTO tb_curso(name_curso,preco_curso,alunos_curso,cat_curso) VALUES
	("Jornalismo",1000,120,1),
    ("Engenharia Elétrica",2000,150,1),
    ("Fotografia",250,25,5),
    ("Informática",200,30,4),
    ("Digitação",50,5,5),
    ("Letras",1300,80,3),
    ("Matemática",1400,100,3),
    ("Mecanica",100,40,4);

SELECT * FROM tb_curso WHERE preco_curso>50;

SELECT * FROM tb_curso WHERE preco_curso>=3 AND preco_curso<=60;

SELECT * FROM tb_curso WHERE name_curso LIKE "J%";

SELECT * FROM tb_curso
	INNER JOIN tb_categoria ON tb_curso.cat_curso = tb_categoria.id_cat;
    
SELECT * FROM tb_curso
	INNER JOIN tb_categoria ON tb_curso.cat_curso = tb_categoria.id_cat
	WHERE tb_categoria.id_cat = 5;