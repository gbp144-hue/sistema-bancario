USE sistema_bancario;

INSERT INTO BANCO (nome, cod_banco, cnpj) 
VALUES ('Banco do Brasil', 001, '00.000.000/0001-91');

INSERT INTO CLIENTE (nome, cpf_cliente, data_nascimento) 
VALUES ('Gabriel Braga', '123.456.789-00', '2000-05-15');

INSERT INTO CONTA (id_cliente, id_banco, numero_conta, tipo, data_abertura, saldo) 
VALUES (1, 1, '12345-6', 'Poupança', '2026-10-10', 1500.00);

INSERT INTO TRANSACAO (id_conta, data_hora, tipo_transacao, valor) 
VALUES (1, NOW(), 'Depósito', 500.00);