/* Atividade 1

Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa. 

Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.

Popule esta tabela com até 5 dados;

Faça um select que retorne os funcionaries com o salário maior do que 2000.

Faça um select que retorne os funcionaries com o salário menor do que 2000.

Ao término atualize um dado desta tabela através de uma query de atualização.

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

INSERT INTO db_func(nome_func,end_func,cont_func,sal_func) VALUES 
	("Gabriel","Rua da Praia, 87","2020-01-01",5000.00),
    ("Thais","Rua do Bosque","2021-01-01",100.00),
    ("Paladino","Av. Medieval, 1000","1752-05-01",800.00),
    ("Piriquito","Alameda 01, 7","2020-04-01",15000.00),
    ("Prof Pasquale","Rua Dicionário, 12","2009-10-10",2000.0);
	
SELECT id_func,nome_func,sal_func FROM db_func WHERE sal_func>2000;

SELECT id_func,nome_func,sal_func FROM db_func WHERE sal_func<2000;

UPDATE db_func SET sal_func=10000.00 WHERE id_func=2;

