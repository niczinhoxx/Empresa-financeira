INSERT INTO clientes (nome_completo, cpf, email, telefone, data_nasc, data_criacao) VALUES
('Carlos Mendes', '11111111111', 'carlos@email.com', '21999990001', '1990-05-10', CURRENT_TIMESTAMP),
('Ana Souza', '22222222222', 'ana@email.com', '21999990002', '1992-08-15', CURRENT_TIMESTAMP),
('Bruno Lima', '33333333333', 'bruno@email.com', '21999990003', '1988-03-22', CURRENT_TIMESTAMP),
('Fernanda Rocha', '44444444444', 'fernanda@email.com', '21999990004', '1995-11-30', CURRENT_TIMESTAMP),
('Lucas Pereira', '55555555555', 'lucas@email.com', '21999990005', '1993-01-17', CURRENT_TIMESTAMP),
('Mariana Alves', '66666666666', 'mariana@email.com', '21999990006', '1991-07-19', CURRENT_TIMESTAMP),
('Ricardo Gomes', '77777777777', 'ricardo@email.com', '21999990007', '1987-04-09', CURRENT_TIMESTAMP),
('Juliana Martins', '88888888888', 'juliana@email.com', '21999990008', '1996-09-21', CURRENT_TIMESTAMP),
('Eduardo Silva', '99999999999', 'edu@email.com', '21999990009', '1989-12-12', CURRENT_TIMESTAMP),
('Patricia Costa', '10101010101', 'patricia@email.com', '21999990010', '1994-02-14', CURRENT_TIMESTAMP),
('Rafael Oliveira', '12121212121', 'rafael@email.com', '21999990011', '1990-06-06', CURRENT_TIMESTAMP),
('Camila Santos', '13131313131', 'camila@email.com', '21999990012', '1998-10-05', CURRENT_TIMESTAMP),
('Thiago Nunes', '14141414141', 'thiago@email.com', '21999990013', '1986-07-28', CURRENT_TIMESTAMP),
('Beatriz Freitas', '15151515151', 'bia@email.com', '21999990014', '1997-03-03', CURRENT_TIMESTAMP),
('Gustavo Carvalho', '16161616161', 'gustavo@email.com', '21999990015', '1992-12-01', CURRENT_TIMESTAMP);



INSERT INTO contas (fk_cliente, numero_conta, tipo_conta, saldo_atual, limite_credito, data_abertura)
VALUES
(1, 1001, 'corrente', 5000.00, 2000.00, CURRENT_TIMESTAMP),
(2, 1002, 'poupança', 1200.00, NULL, CURRENT_TIMESTAMP),
(3, 1003, 'corrente', 800.00, 1000.00, CURRENT_TIMESTAMP),
(4, 1004, 'corrente', 2500.00, 1500.00, CURRENT_TIMESTAMP),
(5, 1005, 'poupança', 3000.00, NULL, CURRENT_TIMESTAMP),
(6, 1006, 'corrente', 950.00, 500.00, CURRENT_TIMESTAMP),
(7, 1007, 'corrente', 7000.00, 3000.00, CURRENT_TIMESTAMP),
(8, 1008, 'poupança', 150.00, NULL, CURRENT_TIMESTAMP),
(9, 1009, 'corrente', 4200.00, 2000.00, CURRENT_TIMESTAMP),
(10, 1010, 'corrente', 1100.00, 800.00, CURRENT_TIMESTAMP),
(11, 1011, 'poupança', 200.00, NULL, CURRENT_TIMESTAMP),
(12, 1012, 'corrente', 6200.00, 2500.00, CURRENT_TIMESTAMP),
(13, 1013, 'corrente', 3300.00, 1000.00, CURRENT_TIMESTAMP),
(14, 1014, 'poupança', 890.00, NULL, CURRENT_TIMESTAMP),
(15, 1015, 'corrente', 4700.00, 1800.00, CURRENT_TIMESTAMP);





INSERT INTO transacoes 
(id_conta_origem, id_conta_destino, tipo_transacao, tipo_movimentacao, valor_transacao, data_transacao, status_transacao)
VALUES
(1, 2, 'transferencia', 'debito', 500.00, CURRENT_TIMESTAMP, 'Confirmada'),
(2, NULL, 'saque', 'debito', 200.00, CURRENT_TIMESTAMP, 'Confirmada'),
(3, 4, 'transferencia', 'debito', 150.00, CURRENT_TIMESTAMP, 'Confirmada'),
(5, NULL, 'saque', 'debito', 100.00, CURRENT_TIMESTAMP, 'Confirmada'),
(6, 7, 'transferencia', 'debito', 250.00, CURRENT_TIMESTAMP, 'Confirmada'),
(8, 9, 'deposito', 'credito', 300.00, CURRENT_TIMESTAMP, 'Confirmada'),
(9, 10, 'transferencia', 'debito', 400.00, CURRENT_TIMESTAMP, 'Confirmada'),
(10, NULL, 'saque', 'debito', 50.00, CURRENT_TIMESTAMP, 'Confirmada'),
(11, 12, 'deposito', 'credito', 1000.00, CURRENT_TIMESTAMP, 'Confirmada'),
(12, 13, 'transferencia', 'debito', 600.00, CURRENT_TIMESTAMP, 'Confirmada'),
(13, NULL, 'saque', 'debito', 120.00, CURRENT_TIMESTAMP, 'Confirmada'),
(14, 15, 'deposito', 'credito', 800.00, CURRENT_TIMESTAMP, 'Confirmada'),
(15, 1, 'transferencia', 'debito', 350.00, CURRENT_TIMESTAMP, 'Confirmada'),
(4, 3, 'transferencia', 'debito', 75.00, CURRENT_TIMESTAMP, 'Confirmada'),
(7, NULL, 'saque', 'debito', 500.00, CURRENT_TIMESTAMP, 'Falha');



INSERT INTO auditoria_transacoes 
(fk_transacao, valor_antigo, valor_novo, usuario_banco, data_evento)
VALUES
(1, 5000.00, 4500.00, 1, CURRENT_TIMESTAMP),
(2, 1200.00, 1000.00, 2, CURRENT_TIMESTAMP),
(3, 800.00, 650.00, 3, CURRENT_TIMESTAMP),
(4, 3000.00, 2900.00, 5, CURRENT_TIMESTAMP),
(5, 950.00, 700.00, 6, CURRENT_TIMESTAMP),
(6, 150.00, 450.00, 8, CURRENT_TIMESTAMP),
(7, 4200.00, 3800.00, 9, CURRENT_TIMESTAMP),
(8, 1100.00, 1050.00, 10, CURRENT_TIMESTAMP),
(9, 200.00, 1200.00, 11, CURRENT_TIMESTAMP),
(10, 6200.00, 5600.00, 12, CURRENT_TIMESTAMP),
(11, 3300.00, 3180.00, 13, CURRENT_TIMESTAMP),
(12, 890.00, 1690.00, 14, CURRENT_TIMESTAMP),
(13, 4700.00, 4350.00, 15, CURRENT_TIMESTAMP),
(14, 2500.00, 2425.00, 4, CURRENT_TIMESTAMP),
(15, 7000.00, 6500.00, 7, CURRENT_TIMESTAMP);
