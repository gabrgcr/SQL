/*Atividade 3

Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra B.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

INSERT INTO tb_categoria(nome_cat,prat_cat) VALUES
	("Remédio",1),
    ("Cosméticos",3),
    ("Descartáveis",12),
    ("Primeiros Socorros",5),
    ("Comida",4);

INSERT INTO tb_prod(nome_prod,cat_prod,valor_prod,desc_prod) VALUES
	("Doril",1,1.99,"Para dores"),
    ("Xarope",1,7.00,"Para tosse"),
    ("Fralda",3,29.00,"Fralda descartável"),
    ("Gaze",4,32.00,"Para ferimentos"),
    ("Pastel de Pizza",5,20.00,"Pastel de Pizza"),
    ("Merthiolate",4,8.00,"Joga no ferimento e reza"),
    ("Xampu",2,32.00,"Cuida dos cabelos"),
    ("Bala",5,0.10,"Bala superfaturada de farmácia");

SELECT * FROM tb_prod WHERE valor_prod>50;

SELECT * FROM tb_prod WHERE valor_prod>=3 AND valor_prod<=60;

SELECT * FROM tb_prod WHERE nome_prod LIKE "B%";

SELECT * FROM tb_prod
	INNER JOIN tb_categoria ON tb_prod.cat_prod = tb_categoria.id_cat;
    
SELECT * FROM tb_prod
	INNER JOIN tb_categoria ON tb_prod.cat_prod = tb_categoria.id_cat
	WHERE tb_categoria.id_cat = 2;