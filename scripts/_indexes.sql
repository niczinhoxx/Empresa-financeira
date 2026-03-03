-- Criação do  índice por cpf
create index idx_cpf on clientes(cpf);


-- Criação do  índice pelo nome
create index idx_nome on clientes (nome_completo);



-- Criação do  índice pelo número da conta
create index idx_numero_conta on contas (numero_conta);



-- Criação do  índice pela data de transação
create index idx_data_transacao on transacoes(data_transacao);