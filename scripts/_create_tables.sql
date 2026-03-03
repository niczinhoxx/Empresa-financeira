create table clientes (
id_cliente serial primary key,
nome_completo varchar(60) not null,
cpf char(11) unique,
email varchar(70) unique,
telefone varchar(22),
data_nasc date,
status_cliente text not null check (status_cliente in ('ativo','inativo')) default 'ativo',
data_criacao  TIMESTAMP
); 

create table contas (
id_conta serial primary key,
fk_cliente int references clientes (id_cliente),
numero_conta int unique,
tipo_conta text check (tipo_conta in ('corrente', 'poupança')) default 'corrente',
saldo_atual numeric(20,2) not null default 0,
limite_credito numeric(20,2),
data_abertura timestamp,
status_conta text check (status_conta in ('liberada','bloqueada')) default 'liberada'
);

create table transacoes (
id_transacao serial primary key,
id_conta_origem int references contas (id_conta),
id_conta_destino int references contas (id_conta),
tipo_transacao text check (tipo_transacao in ('deposito', 'saque', 'transferencia')),
tipo_movimentacao text not null  check (tipo_movimentacao IN ('debito','credito')),
valor_transacao NUMERIC(20,2) check (valor_transacao > 0),   
data_transacao TIMESTAMP,
status_transacao text check (status_transacao IN ('Confirmada','Falha')), 
    check (
        (tipo_transacao = 'saque' AND id_conta_destino IS NULL)
        OR
        (tipo_transacao <> 'saque' AND id_conta_destino IS NOT NULL)
    )
);


create table auditoria_transacoes (
id_auditoria serial primary key,
fk_transacao int references transacoes (id_transacao),
valor_antigo numeric(20,2),
valor_novo numeric(20,2),
usuario_banco int references contas (id_conta),
data_evento timestamp    
);