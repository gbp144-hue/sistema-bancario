USE sistema_bancario;

SELECT 
    c.nome AS cliente,
    c.cpf_cliente,
    co.numero_conta,
    co.tipo AS tipo_conta,
    co.saldo,
    b.nome AS banco
FROM CONTA co
JOIN CLIENTE c ON co.id_cliente = c.id_cliente
JOIN BANCO b ON co.id_banco = b.id_banco;

SELECT 
    t.id_transacao,
    co.numero_conta,
    c.nome AS titular,
    t.tipo_transacao,
    t.valor,
    t.data_hora
FROM TRANSACAO t
JOIN CONTA co ON t.id_conta = co.id_conta
JOIN CLIENTE c ON co.id_cliente = c.id_cliente;

SELECT 
    tipo,
    COUNT(*) AS total_contas,
    SUM(saldo) AS saldo_total
FROM CONTA
GROUP BY tipo;

SELECT 
    c.nome AS cliente,
    cart.numero_cartao,
    co.numero_conta,
    cart.validade
FROM CARTAO cart
JOIN CLIENTE c ON cart.id_cliente = c.id_cliente
JOIN CONTA co ON cart.id_conta = co.id_conta;
