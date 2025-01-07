CREATE DATABASE db_quitanda;
USE db_quitanda;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    data_validade DATE,
    preco DECIMAL,
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES  ("Tomate", 100, "2024-01-20", 10.00),
		("Cenoura", 150, "2024-02-15", 8.50),
		("Alface", 80, "2024-01-25", 3.00),
		("Pimentão", 120, "2024-04-05", 7.75),
		("Banana", 180, "2024-02-20", 6.25);

SELECT * FROM tb_produtos;

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt-BR')) AS Preço FROM tb_produtos;

UPDATE tb_produtos SET preco = 9.50 WHERE id = 1;

ALTER TABLE tb_produtos MODIFY preco decimal(6,2);
ALTER TABLE tb_produtos ADD descricao varchar(255);

DELETE FROM tb_produtos WHERE id = 6;
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES  ("Brócolis", 50, "2025-02-20", 12.00);

SELECT * FROM tb_produtos;
 



