SELECT 
    c.nome AS cliente,
    co.numero_conta,
    co.tipo AS tipo_conta,
    co.saldo,
    b.nome AS banco
FROM CONTA co
JOIN CLIENTE c ON co.id_cliente = c.id_cliente
JOIN BANCO b ON co.id_banco = b.id_banco;
