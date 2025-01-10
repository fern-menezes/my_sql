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
('Guerreiro', 'Especialista em combate corpo a corpo.'),
('Mago', 'Usuário de magia e feitiços poderosos.'),
('Arqueiro', 'Perito em ataques à distância com arco e flecha.'),
('Assassino', 'Mestre das sombras e ataques furtivos.'),
('Cavaleiro', 'Defensor com alta resistência e armadura pesada.');

-- 5. Inserção de registros na tabela tb_personagens
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
('Arthas', 2500, 1500, 10, 1),
('Merlin', 3000, 1200, 12, 2),
('Legolas', 2200, 1400, 11, 3),
('Ezio', 2800, 1300, 13, 4),
('Lancelot', 2400, 1600, 10, 5),
('Conan', 2600, 1400, 9, 1),
('Gandalf', 3100, 1300, 14, 2),
('Hawkeye', 2300, 1500, 12, 3);

-- 6. SELECT para retornar personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- 7. SELECT para retornar personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- 8. SELECT com operador LIKE para personagens com a letra 'C' no nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- 9. SELECT com INNER JOIN unindo tb_personagens e tb_classes
SELECT p.*, c.nome AS classe_nome 
FROM tb_personagens p 
INNER JOIN tb_classes c ON p.classe_id = c.id;

-- 10. SELECT com INNER JOIN para personagens de uma classe específica (exemplo: Arqueiros)
SELECT p.*, c.nome AS classe_nome 
FROM tb_personagens p 
INNER JOIN tb_classes c ON p.classe_id = c.id 
WHERE c.nome = 'Arqueiro';
