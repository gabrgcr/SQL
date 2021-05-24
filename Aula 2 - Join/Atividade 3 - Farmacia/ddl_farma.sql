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

CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id_cat INT PRIMARY KEY,
    nome_cat VARCHAR(255),
    prat_cat INT(2),
    vence_cat BOOLEAN DEFAULT TRUE,
    uso_cat VARCHAR(255)
    );

CREATE TABLE tb_prod(
	id_prod INT UNIQUE PRIMARY KEY,
    nome_prod VARCHAR(255) NOT NULL,
    cat_prod INT NOT NULL,
    desc_prod VARCHAR(255),
    rest_prod BOOLEAN DEFAULT FALSE,
    valor_prod FLOAT,
    pop_prod BOOLEAN DEFAULT FALSE,
    vendas_prod INT,
    
    FOREIGN KEY(cat_prod) REFERENCES tb_categoria(id_cat)
    )
    