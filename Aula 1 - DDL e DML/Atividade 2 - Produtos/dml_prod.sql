/*Atividade 2

Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 

Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.

Popule esta tabela com até 8 dados;

Faça um select que retorne os produtos com o valor maior do que 500.

Faça um select que retorne os produtos com o valor menor do que 500.

Ao término atualize um dado desta tabela através de uma query de atualização.

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

INSERT INTO db_prod(nome_prod,preco_prod,qtde_prod,val_prod) VALUES
	("Bala",0.20,5000,"2025-05-06"),
    ("Chicle",0.50,1000,"2099-06-06"),
    ("Barra de Ouro",10000.00,100,"2999-01-01"),
    ("Telesena",9.99,1,"2001-02-03"),
    ("Água Mineral",3.99,100,"2022-03-03"),
    ("Desodorante",12.99,19,"2033-01-02"),
    ("Arroz",5.99,20,"2023-02-05"),
    ("Acucar",7.89,100,"2024-05-06");
    
SELECT id_prod,nome_prod,preco_prod FROM db_prod WHERE preco_prod>500;

SELECT id_prod,nome_prod,preco_prod FROM db_prod WHERE preco_prod<500;

UPDATE db_prod SET nome_prod="Sal" WHERE id_prod=8;