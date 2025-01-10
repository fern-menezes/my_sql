CREATE DATABASE db_estoque;

USE db_estoque;

CREATE TABLE tb_marcas(
	id bigint auto_increment,
    nome varchar(20) not null,
    ativo boolean,
    primary key(id)
);

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(30) not null,
    preco decimal,
    marca_id bigint not null,
    primary key(id),
    
    foreign key (marca_id) references tb_marcas(id) -- cria uma nova tabela que vai conversar com a table principal
);

SELECT * FROM tb_marcas;
SELECT * FROM tb_produtos;

INSERT INTO tb_marcas(nome, ativo) 
	values("Nike", true);

INSERT INTO tb_marcas(nome, ativo) 
	values("Adidas", false);

UPDATE tb_marcas SET ativo = true WHERE id =2;

INSERT INTO tb_marcas(nome, ativo) 
	values("Puma", true),
		  ("Vans", true),
          ("Fila", true);
          
SELECT nome FROM tb_marcas WHERE id = 2;
SELECT nome FROM tb_marcas WHERE id < 3;

DELETE FROM tb_marcas WHERE id = 3;

INSERT INTO tb_marcas(nome, ativo) 
	values("Converse", true); -- insere um novo valor sem que a tabela original seja duplicada
    
ALTER TABLE tb_marcas add descricao varchar(255); -- cria uma nova coluna
ALTER TABLE tb_marcas add estoque int; -- cria uma nova coluna
ALTER TABLE tb_marcas DROP COLUMN estoque; -- exclui uma coluna criada

UPDATE tb_marcas SET descricao= "Just do it" WHERE id = 1; -- adiciona descrição posterior a criação da coluna

INSERT INTO tb_marcas(nome, ativo) 
	values("H&M", true),
		  ("Zara", true),
          ("Louis Vuitton", true),
          ("Uniqlo", true),
          ("Hermès", true),
          ("Rolex", true),
          ("Gucci", true),
          ("Chanel", true),
          ("Polo", true),
          ("Armani", true);

INSERT INTO tb_produtos (nome, preco, marca_id) 
	values	("Camisa", 109.90, 1),
			("Calça", 209.90, 2),
			("Corta Vento", 59.90, 5),
            ("Tênis Esportivo", 609.90, 4);
		  
ALTER TABLE tb_produtos MODIFY COLUMN preco decimal (6, 2); -- modifica item da tabela