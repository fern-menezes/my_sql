CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    categoria VARCHAR(255),
    safra INT,
    preco DECIMAL(10,2),
    quantidade INT,
    sku VARCHAR(255),
    PRIMARY KEY(id)
);


INSERT INTO tb_produtos (nome, descricao, categoria, safra, preco, quantidade, sku)
VALUES 
("Chianti Clássico", "Vinho tinto encorpado da Toscana, Itália", "Itália", 2015, 120.00, 50, "SKU801"),
("Barolo", "Vinho tinto elegante do Piemonte, Itália", "Itália", 2010, 350.00, 30, "SKU802"),
("Prosecco", "Espumante leve e refrescante da Vêneto, Itália", "Itália", 2020, 60.00, 100, "SKU803"),
("Bordeaux", "Vinho tinto clássico de Bordeaux, França", "França", 2005, 400.00, 20, "SKU804"),
("Champagne", "Espumante de alta qualidade da região de Champagne, França", "França", 2018, 750.00, 15, "SKU805"),
("Chardonnay", "Vinho branco encorpado de Burgundy, França", "França", 2018, 150.00, 40, "SKU806"),
("Château Lafite Rothschild 1959", "Vinho tinto lendário de Bordeaux, França", "Safra 1959", 1959, 12000.00, 1, "SKU807"),
("Barolo Riserva 1959", "Vinho tinto icônico do Piemonte, Itália", "Safra 1959", 1959, 8000.00, 2, "SKU808"),
("Malbec", "Vinho tinto argentino", "Argentina", 2018, 90.00, 60, "SKU809"),
("Carmenère", "Vinho tinto chileno", "Chile", 2017, 110.00, 50, "SKU810");


SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco < 500;
SELECT * FROM tb_produtos WHERE preco > 500;

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt-BR')) AS Preço FROM tb_produtos;

UPDATE tb_produtos SET categoria="França" WHERE id = 7;
UPDATE tb_produtos SET categoria="Itália" WHERE id = 8;






