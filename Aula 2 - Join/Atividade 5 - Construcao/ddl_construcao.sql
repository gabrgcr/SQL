/*Atividade 5

Crie um banco de dados para um serviço de uma loja de prods de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos prods desta empresa.

O sistema trabalhará com 2 tabelas tb_prod e tb_categoria.

Siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.

Crie uma tabela de tb_prod e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_prod para se trabalhar com o serviço de uma loja de prods (não
esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela prod com até 8 dados.

Faça um select que retorne os prods com o valor maior do que 50 reais.

Faça um select trazendo os prods com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os prods com a letra C.

Faça um um select com Inner join entre tabela categoria e prod.

Faça um select onde traga todos os prods de uma categoria específica (exemplo todos
os prods que são da categoria hidráulica).

Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id_cat INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    nome_cat VARCHAR(255) NOT NULL,
	entrega_cat BOOLEAN DEFAULT TRUE
);

CREATE TABLE tb_prod(
	id_prod INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    nome_prod VARCHAR(255) NOT NULL,
    preco_prod FLOAT NOT NULL,
    qtde_prod INT,
    val_prod INT,
    desc_prod VARCHAR(255),
    cat_prod INT,
    
    FOREIGN KEY(cat_prod) REFERENCES tb_categoria(id_cat)
);