CREATE database db_generation_game_online;

CREATE TABLE tb_classes(
alcance VARCHAR (255),
panteao VARCHAR (255)
);
CREATE TABLE tb_personagens (
nome VARCHAR(255),
hp INT,
atk INT,
def INT,
intel INT,
vel INT,
PRIMARY KEY (nome),
FOREIGN KEY (panteao) REFERENCES tb_classes
);

INSERT INTO tb_personagens(nome,hp, atk,def, intel, vel)
VALUES ("Hermes", 2000, 3000, 1000, 2000, 4000),
 ("Hades", 3000, 4000, 3000, 1000, 1000),
 ("Athena", 2000, 2000, 2000, 4000, 2000),
 ("Artemis", 1500, 4000, 2000, 2500, 2000),
 ("Vênus", 1500, 1500, 3000, 4500, 1500),
 ("Urano", 2000, 3000, 2000, 3000, 2000),
("Júpiter", 2500, 4000, 1000, 3000, 1500),
 ("Ares", 3000, 4000, 2000, 1000, 2000);
 
UPDATE tb_classes SET alcance = "Melee" WHERE nome = Hermes;
UPDATE tb_classes SET panteao = "Grego" WHERE nome = Hermes;
UPDATE tb_classes SET alcance = "Melee" WHERE nome = Hades;
UPDATE tb_classes SET panteao = "Grego" WHERE nome = Hades;
UPDATE tb_classes SET alcance = "Melee" WHERE nome = Athena;
UPDATE tb_classes SET panteao = "Grego" WHERE nome = Athena;
UPDATE tb_classes SET alcance = "Ranged" WHERE nome = Artemis;
UPDATE tb_classes SET panteao = "Grego" WHERE nome = Artemis;
UPDATE tb_classes SET alcance = "Melee" WHERE nome = Vênus;
UPDATE tb_classes SET panteao = "Romano" WHERE nome = Vênus;
UPDATE tb_classes SET alcance = "Melee" WHERE nome = Urano;
UPDATE tb_classes SET panteao = "Romano" WHERE nome = Urano;
UPDATE tb_classes SET alcance = "Melee" WHERE nome = Júpiter;
UPDATE tb_classes SET panteao = "Romano" WHERE nome = Júpiter;
UPDATE tb_classes SET alcance = "Melee" WHERE nome = Ares;
UPDATE tb_classes SET panteao = "Grego"WHERE nome = Ares;
 
ALTER TABLE tb_personagens ADD descricao VARCHAR(255);
 
UPDATE tb_personagens SET descricao = "DPS melee" WHERE nome = Hermes;
UPDATE tb_personagens SET descricao = "Tank melee" WHERE nome = Hades;
UPDATE tb_personagens SET descricao = "Suporte tático" WHERE nome = Athena;
UPDATE tb_personagens SET descricao = "DPS Ranged" WHERE nome = Artemis;
UPDATE tb_personagens SET descricao = "Suporte de Cura" WHERE nome = Vênus;
UPDATE tb_personagens SET descricao = "Suporte tático" WHERE nome = Urano;
UPDATE tb_personagens SET descricao = "DPS melee" WHERE nome = Júpiter;
UPDATE tb_personagens SET descricao = "Tank melee" WHERE nome = Ares;

SELECT * FROM tb_personagens WHERE atk >2000;
SELECT * FROM tb_personagens WHERE def BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_classes
INNER JOIN tb_personagens WHERE alcance = melee;