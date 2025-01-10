-- 1. Criação do banco de dados
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- 2. Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

-- 3. Criação da tabela tb_produtos
CREATE TABLE tb_produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10, 2),
    quantidade INT,
    data_validade DATE,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- 4. Inserção de registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES 
('Medicamentos', 'Produtos farmacêuticos para tratamento de doenças.'),
('Cosméticos', 'Produtos para cuidados pessoais e beleza.'),
('Suplementos', 'Produtos para suplementação alimentar.'),
('Higiene', 'Produtos de higiene pessoal.'),
('Acessórios', 'Acessórios diversos para cuidados e saúde.');

-- 5. Inserção de registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, valor, quantidade, data_validade, categoria_id) VALUES
('Aspirina', 20.00, 50, '2025-12-31', 1),
('Creme Hidratante', 45.00, 30, '2023-08-15', 2),
('Vitamina C', 60.00, 25, '2024-06-30', 3),
('Shampoo', 25.00, 40, '2023-05-20', 4),
('Termômetro', 75.00, 15, '2030-12-31', 5),
('Paracetamol', 15.00, 60, '2025-07-01', 1),
('Protetor Solar', 85.00, 20, '2024-12-01', 2),
('Ômega 3', 55.00, 10, '2024-09-15', 3);

-- 6. SELECT para retornar produtos com valor maior que R$ 50,00
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- 7. SELECT para retornar produtos com valor entre R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

-- 8. SELECT com operador LIKE para produtos com a letra 'C' no nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- 9. SELECT com INNER JOIN unindo tb_produtos e tb_categorias
SELECT tb_produtos.*, tb_categorias.nome AS categoria_nome 
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

-- 10. SELECT com INNER JOIN para produtos de uma categoria específica (exemplo: Cosméticos)
SELECT tb_produtos.*, tb_categorias.nome AS categoria_nome 
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id 
WHERE tb_categorias.nome = 'Cosméticos';
