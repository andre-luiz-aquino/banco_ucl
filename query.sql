CREATE TABLE IF NOT EXISTS agenda (
    id SERIAL PRIMARY KEY,
    disciplina TEXT,
    dia TEXT,
    hora_inicio TIMESTAMP,
    hora_fim TIMESTAMP,
    id_sala INTEGER
);

CREATE TABLE IF NOT EXISTS comandos (
    id SERIAL PRIMARY KEY,
    comando TEXT,
    descricao TEXT,
    id_protocolo INTEGER,
    tag TEXT
);

CREATE TABLE IF NOT EXISTS equipamento (
    id SERIAL PRIMARY KEY,
    modelo TEXT,
    descricao TEXT,
    marca TEXT,
    id_protocolo INTEGER UNIQUE
);

CREATE TABLE IF NOT EXISTS logs (
    id SERIAL PRIMARY KEY,
    data TIMESTAMP,
    hora TIMESTAMP,
    id_usuario TEXT,
    acao TEXT,
    id_relacao INTEGER
);

CREATE TABLE IF NOT EXISTS permissoes (
    id SERIAL PRIMARY KEY,
    descricao TEXT,
    acesso TEXT
);

CREATE TABLE IF NOT EXISTS protocolo(
    id SERIAL PRIMARY KEY,
    descricao TEXT
);

CREATE TABLE IF NOT EXISTS relacao (
    id SERIAL PRIMARY KEY,
    id_sala INTEGER,
    id_equipamento INTEGER
);

CREATE TABLE IF NOT EXISTS salas (
    id SERIAL PRIMARY KEY,
    descricao TEXT,
    andar TEXT,
    bloco TEXT,
    ip TEXT,
    temperatura FLOAT,
    umidade FLOAT
);

CREATE TABLE IF NOT EXISTS usuario (
    id SERIAL PRIMARY KEY,
    nome TEXT,
    email TEXT,
    senha TEXT,
    id_permissoes INTEGER
);
