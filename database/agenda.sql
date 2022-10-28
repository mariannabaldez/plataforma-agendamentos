-- Database: agenda

-- DROP DATABASE IF EXISTS agenda;

CREATE DATABASE agenda
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'pt_BR.UTF-8'
    LC_CTYPE = 'pt_BR.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";


CREATE TABLE cliente(
	id uuid DEFAULT uuid_generate_v4 (),
	nome VARCHAR(30),
	telefone CHAR(12),
	email VARCHAR(30)
);

SELECT * FROM cliente;

--INSERT INTO cliente (
--	nome,
--	telefone,
--	email
--)
--VALUES (
--	'Marianna',
--	'1299999',
--	'marianna@email.com'
--);


CREATE TABLE agendamento(
	id uuid DEFAULT uuid_generate_v4 (),
	FOREIGN KEY(id)
		REFERENCES cliente(id),
	dia DATE,
	horario TIME,
	observacao VARCHAR(200)
);

SELECT * FROM agendamento;

--INSERT INTO agendamento (
--	dia,
--	horario,
--	observacao
--)
--VALUES (
--	'2023/01/01',
--	'15:00:00',
--	'Chegarei com 5 minutos de antecedencia'
--);
