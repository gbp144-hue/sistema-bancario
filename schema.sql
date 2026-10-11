CREATE TABLE BANCO (
    id_banco INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cod_banco INT UNIQUE NOT NULL,
    cnpj VARCHAR(18) UNIQUE NOT NULL
);

CREATE TABLE CLIENTE (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    cpf_cliente VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE CONTA (
    id_conta INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_banco INT NOT NULL,
    numero_conta VARCHAR(20) NOT NULL,
    tipo VARCHAR(30) NOT NULL,
    data_abertura DATE NOT NULL,
    saldo DECIMAL(15, 2) DEFAULT 0.00,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),
    FOREIGN KEY (id_banco) REFERENCES BANCO(id_banco)
);

CREATE TABLE CARTAO (
    id_cartao INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_conta INT NOT NULL,
    numero_cartao VARCHAR(16) NOT NULL,
    codigo_seguranca_hash VARCHAR(255) NOT NULL,
    validade DATE NOT NULL,
    senha_hash VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),
    FOREIGN KEY (id_conta) REFERENCES CONTA(id_conta)
);

CREATE TABLE CAIXA_ELETRONICO (
    id_caixa INT PRIMARY KEY AUTO_INCREMENT,
    numero_caixa VARCHAR(20) NOT NULL,
    localizacao VARCHAR(200) NOT NULL,
    status VARCHAR(20) NOT NULL
);

CREATE TABLE TRANSACAO (
    id_transacao INT PRIMARY KEY AUTO_INCREMENT,
    id_conta INT NOT NULL,
    id_caixa INT,
    data_hora DATETIME NOT NULL,
    tipo_transacao VARCHAR(50) NOT NULL,
    valor DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (id_conta) REFERENCES CONTA(id_conta),
    FOREIGN KEY (id_caixa) REFERENCES CAIXA_ELETRONICO(id_caixa)
);
