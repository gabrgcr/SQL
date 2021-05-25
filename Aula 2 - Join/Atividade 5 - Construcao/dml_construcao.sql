/*Atividade 5

Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

Siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.

Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não
esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria hidráulica).

Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

INSERT INTO tb_categoria(nome_cat,entrega_cat) VALUES
	("Material de Construção",TRUE),
    ("Louças",TRUE),
    ("Iluminação",FALSE),
    ("Decoração",TRUE),
    ("Elétrica",FALSE);

INSERT INTO tb_prod(nome_prod,cat_prod,preco_prod) VALUES
	("Cimento",1,20),
    ("Azulejo",2,35),
    ("Piso",2,25),
    ("Vaso Sanitário",2,15),
    ("Interruptor",5,5),
    ("Luminária",3,20),
    ("Papel de Parede",4,100),
    ("Pedra",1,100);

SELECT * FROM tb_prod WHERE preco_prod>50;

SELECT * FROM tb_prod WHERE preco_prod>=3 AND preco_prod<=60;

SELECT * FROM tb_prod WHERE nome_prod LIKE "C%";

SELECT * FROM tb_prod
	INNER JOIN tb_categoria ON tb_prod.cat_prod = tb_categoria.id_cat;
    
SELECT * FROM tb_prod
	INNER JOIN tb_categoria ON tb_prod.cat_prod = tb_categoria.id_cat
	WHERE tb_categoria.id_cat = 5;