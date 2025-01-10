CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_escola(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    data_matricula DATE,
    turma VARCHAR(255),
    especialidade VARCHAR(255), -- Tipo de culinária (Italiana, Francesa, Brasileira, etc.)
    projeto_final TEXT, -- Descrição do projeto final (receita entregue)
    media_final DECIMAL(5,2), -- Média final do aluno
    certificado VARCHAR(50), -- Status do certificado (Emitido, Retirado, Pendente)
    PRIMARY KEY(id)
);

INSERT INTO tb_escola (nome, data_matricula, turma, especialidade, projeto_final, media_final, certificado)
VALUES 
("Barbie Roberts", "2023-01-15", "Turma A", "Culinária Italiana", "Risotto alla Milanese", 9.5, "Emitido"),
("Ken Carson", "2023-02-20", "Turma B", "Culinária Francesa", "Coq au Vin", 8.7, "Pendente"),
("Midge Hadley", "2023-03-10", "Turma C", "Culinária Brasileira", "Feijoada Completa", 6.0, "Emitido"),
("Ryan Ryan", "2023-04-25", "Turma D", "Culinária Japonesa", "Sushi e Sashimi", 5.2, "Retirado"),
("Teresa Rivera", "2023-05-05", "Turma E", "Culinária Mexicana", "Tacos de Carne", 8.8, "Pendente"),
("Nicki O'Neill", "2023-06-01", "Turma F", "Culinária Francesa", "Crème Brûlée", 7.3,"Emitido"),
("Raquelle", "2023-07-15", "Turma G", "Culinária Americana", "Apple Pie", 9.0, "Emitido"),
("Summer Gordon", "2023-08-20", "Turma H", "Culinária Mediterrânea", "Greek Salad", 5.1, "Pendente");

SELECT * FROM tb_escola;

ALTER TABLE tb_escola MODIFY media_final decimal(6,1);

SELECT * FROM tb_escola WHERE media_final < 7.0;
SELECT * FROM tb_escola WHERE media_final > 7.0;

UPDATE tb_escola SET nome="Ryan Ross"  WHERE id = 4;
UPDATE tb_escola SET nome="Raquelle Ross", media_final = 7.1  WHERE id = 7;
UPDATE tb_escola SET media_final = 9.3  WHERE id = 2;

SELECT * FROM tb_escola;