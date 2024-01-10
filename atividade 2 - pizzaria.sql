CREATE database db_pizaria_legal;

CREATE TABLE tb_categorias(
tipo VARCHAR (255),
sabor VARCHAR (255),
categoriaid INT,
PRIMARY KEY (categoriaid)
);
CREATE TABLE tb_pizzas (
tamanho INT,
preco DECIMAL,
borda INT,
qtd INT,
FOREIGN KEY (categoriaid) REFERENCES tb_categorias
);

INSERT INTO tb_categorias(tipo, sabor, categoriaid)
VALUES ("doce", "chocolate", "1"),
 ("doce", "chocolate e chocolate branco", "2"),
 ("salgada", "mozarela", "3"),
("salgada", "lombo e catupiry", "4"),
("salgada", "quatro queijos", "5");
 
INSERT INTO tb_pizzas(tamanho, preco, borda, qtd)
VALUES ("grande", "70.00", "sem borda","1"),
("grande", "75.00", "borda recheada","1"),
("grande", "70.00", "borda padrao","1"),
("média", "50.00", "sem borda","1"),
("média", "55.00", "borda recheada","1"),
("média", "50.00", "borda padrao","1"),
("pequena", "40.00", "sem borda","1"),
("grande", "40.00", "borda padrao","1");

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_categorias
INNER JOIN tb_pizzas;

SELECT tipo FROM tb_categorias
INNER JOIN tb_pizzas WHERE tipo = "doce";