-- 1. Criação do banco de dados
CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

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
('Ferramentas', 'Equipamentos para construção e reparo.'),
('Tintas', 'Produtos para pintura e acabamento.'),
('Materiais de Construção', 'Blocos, cimento, areia, etc.'),
('Elétrica', 'Produtos para instalações elétricas.'),
('Hidráulica', 'Produtos para instalações hidráulicas.');

-- 5. Inserção de registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, valor, quantidade, data_validade, categoria_id) VALUES
('Martelo', 120.00, 30, '2025-12-31', 1),
('Lata de Tinta', 80.00, 20, '2024-08-15', 2),
('Bloco de Concreto', 150.00, 50, '2023-06-30', 3),
('Cabo Elétrico', 60.00, 100, '2023-05-20', 4),
('Torneira', 110.00, 25, '2030-12-31', 5),
('Chave de Fenda', 45.00, 60, '2025-07-01', 1),
('Tinta Spray', 90.00, 40, '2024-12-01', 2),
('Tubo PVC', 85.00, 50, '2024-09-15', 5);

-- 6. SELECT para retornar produtos com valor maior que R$ 100,00
SELECT * FROM tb_produtos WHERE valor > 100.00;

-- 7. SELECT para retornar produtos com valor entre R$ 70,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 150.00;

-- 8. SELECT com operador LIKE para produtos com a letra 'C' no nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- 9. SELECT com INNER JOIN unindo tb_produtos e tb_categorias
SELECT tb_produtos.*, tb_categorias.nome AS categoria_nome 
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

-- 10. SELECT com INNER JOIN para produtos de uma categoria específica (exemplo: Hidráulica)
SELECT tb_produtos.*, tb_categorias.nome AS categoria_nome 
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id 
WHERE tb_categorias.nome = 'Hidráulica';
