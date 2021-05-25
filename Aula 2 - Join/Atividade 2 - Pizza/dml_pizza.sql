/*Atividade 2

Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela pizza com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 45 reais.

Faça um select trazendo os Produtos com valor entre 29 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e pizza.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

INSERT INTO tb_categoria(nome_cat,entrega_cat) VALUES
	("Salgada",TRUE),
    ("Doce",TRUE),
    ("Gigante",FALSE),
    ("Especial",FALSE),
    ("Pastel",TRUE);
    
INSERT INTO tb_pizza(nome_pizza,cat_pizza,val_pizza,desc_pizza) VALUES
	("Pepperoni",1,29.99,"Pepperoni e felicidade"),
    ("Muzzarela",1,20.00,"Pizza simples de Mussarela"),
    ("Bacon Doce",2,59.00,"Bacon Doce, você pergunta. Bacon Doce! Te respondo"),
    ("Pizza Mil Grau",4,199.00,"Tudo que você puder imaginar e mais ainda"),
    ("Pastel de Pizza",5,60.00,"Pastel de Pizza"),
    ("Pizzaria Bate-Papo",3,80.00,"Pizza finalizada com pneu de moto na mesa"),
    ("Marguerita",1,32.00,"A mais clássica das pizzas"),
    ("Chocolate",2,65.00,"Chocolate + Pizza");
    
SELECT * FROM tb_pizza WHERE val_pizza>45;

SELECT * FROM tb_pizza WHERE val_pizza>=29 AND val_pizza<=60;

SELECT * FROM tb_pizza WHERE nome_pizza LIKE "C%";

SELECT * FROM tb_pizza
	INNER JOIN tb_categoria ON tb_pizza.cat_pizza = tb_categoria.id_cat;
    
SELECT * FROM tb_pizza
	INNER JOIN tb_categoria ON tb_pizza.cat_pizza = tb_categoria.id_cat
	WHERE tb_categoria.id_cat = 2;