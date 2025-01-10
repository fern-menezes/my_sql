-- 1. Criação do banco de dados
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- 2. Criação da tabela tb_classes
CREATE TABLE tb_classes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

-- 3. Criação da tabela tb_personagens
CREATE TABLE tb_personagens (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT,
    poder_defesa INT,
    nivel INT,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- 4. Inserção de registros na tabela tb_classes
INSERT INTO tb_classes (nome, descricao) VALUES 
('Detetive', 'Especialista em resolver mistérios e enigmas.'),
('Aventureiro', 'Explorador de áreas desconhecidas e perigosas.'),
('Inventor', 'Criador de dispositivos engenhosos e ferramentas.'),
('Guia Espiritual', 'Conector com o místico e o paranormal.'),
('Guardião', 'Protetor com habilidades defensivas e resistentes.');

-- 5. Inserção de registros na tabela tb_personagens
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
('Dipper', 2300, 1500, 10, 1),
('Mabel', 2000, 1600, 12, 2),
('Soos', 1800, 1400, 11, 3),
('Grenda', 1900, 1300, 13, 4),
('Stan', 2100, 1600, 10, 5),
('Wendy', 2000, 1400, 9, 2),
('McGucket', 1700, 1300, 14, 3),
('Pacifica', 2200, 1500, 12, 1);

-- 6. SELECT para retornar personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- 7. SELECT para retornar personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- 8. SELECT com operador LIKE para personagens com a letra 'C' no nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- 9. SELECT com INNER JOIN unindo tb_personagens e tb_classes
SELECT tb_personagens.*, tb_classes.nome AS classe_nome 
FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

-- 10. SELECT com INNER JOIN para personagens de uma classe específica (exemplo: Detetives)
SELECT tb_personagens.*, tb_classes.nome AS classe_nome 
FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id 
WHERE tb_classes.nome = 'Detetive';

-- 11. SELECT para retornar personagens com nível maior que 10
SELECT * FROM tb_personagens WHERE nivel > 10;

-- 12. SELECT para retornar personagens com poder de ataque entre 2000 e 3000
SELECT * FROM tb_personagens WHERE poder_ataque BETWEEN 2000 AND 3000;

-- 13. SELECT com INNER JOIN para personagens de uma classe específica e nível maior que 10 (exemplo: Magos)
SELECT tb_personagens.*, tb_classes.nome AS classe_nome 
FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id 
WHERE tb_classes.nome = 'Guia Espiritual' AND tb_personagens.nivel > 10;

-- 14. SELECT para retornar personagens com poder de defesa menor que 1300
SELECT * FROM tb_personagens WHERE poder_defesa < 1300;

-- 15. SELECT para retornar personagens ordenados por poder de ataque em ordem decrescente
SELECT * FROM tb_personagens ORDER BY poder_ataque DESC;

SELECT * FROM tb_personagens;