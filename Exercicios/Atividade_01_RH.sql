CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_informacoes (
	id bigint auto_increment,
    nome varchar(255),
    data_admissao date,
    cargo varchar(255),
    salario decimal(10,2),
    tipo_contrato varchar(255),
    status_emprego varchar(255),
    
    primary key (id)
);

INSERT INTO tb_informacoes (nome, data_admissao, cargo, salario, tipo_contrato, status_emprego)
	VALUES	("João Banano", "2022-01-15", "Chefe de Alegria", 4500.00, "CLT", "Ativo"), 
			("Maria Pinguina", "2021-07-10", "Gerente de Sorvetes", 6200.00, "CLT", "Ativo"), 
			("Carlos Abacaxi", "2020-03-25", "Analista de Frutas", 5100.00, "PJ", "Ativo"),
			("Bia Melancia", "2019-11-05", "Assistente de Sucos", 3500.00, "Estagiário", "Ativo"), 
			("Diego Maracujá", "2023-06-20", "Diretor de Vitaminas", 9500.00, "CLT", "Ativo"), 
			("Elaine Goiaba", "2018-09-12", "Coordenadora de Polpas", 7000.00, "CLT", "Licença"), 
			("Pedro Manga", "2021-10-30", "Especialista em Smoothies", 5300.00, "PJ", "Ativo"), 
			("Luiza Kiwi", "2020-05-15", "Técnica de Saladas", 4800.00, "CLT", "Ativo"), 
			("Fernando Uva", "2017-12-18", "Supervisor de Vinhos", 8700.00, "CLT", "Ativo"), 
			("Paula Caju", "2019-08-23", "Chefe de Snacks", 6900.00, "CLT", "Desligado");
            
SELECT * FROM tb_informacoes;

UPDATE tb_informacoes SET salario=1500.00 WHERE id = 4;
UPDATE tb_informacoes SET salario=1150.00, cargo="Asistente de Vinhos", tipo_contrato= "Jovem Aprendiz" WHERE id = 9;

SELECT * FROM tb_informacoes WHERE salario < 2000;
SELECT * FROM tb_informacoes WHERE salario > 2000;