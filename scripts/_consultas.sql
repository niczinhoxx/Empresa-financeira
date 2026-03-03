-- busca todas as transações de uma conta específica
-- filtra pela chave estrangeira id_conta_origem
select *
from transacoes
where id_conta_origem = 5;




-- busca cliente pelo cpf
-- 
select *
from clientes
where cpf = '11111111111';


--lista nome do cliente, número da conta e saldo atual
select cl.nome_completo,c.numero_conta,c.saldo_atual
from clientes cl
join contas c on cl.id_cliente = c.fk_cliente;


--  lista nome do cliente, tipo de transação, valor e data
select cl.nome_completo,t.tipo_transacao,t.valor_transacao,t.data_transacao
from clientes cl
join contas c on cl.id_cliente = c.fk_cliente
join transacoes t on c.id_conta = t.id_conta_origem;


-- busca todas as transações acima de 100
-- ordena por data decrescente
select valor_transacao,data_transacao
from transacoes
where valor_transacao > 100
order by data_transacao desc;



--  mostrar o nome do cliente e o total movimentado por ele
-- usamos group by para agrupar por cliente
-- 

select cl.nome_completo,sum(t.valor_transacao) as valor_total_movimentado
from clientes cl
join contas c on cl.id_cliente = c.fk_cliente
join transacoes t on c.id_conta = t.id_conta_origem
group by cl.nome_completo;


--  listar todas transações com status 'falha'
select id_transacao,status_transacao
from transacoes
where status_transacao = 'Falha';


-- encontra clientes que fizeram mais de 2 transações
-- usamos having para filtrar após o group by
select cl.nome_completo,count(t.id_transacao) as total_transacoes
from clientes cl
join contas c on cl.id_cliente = c.fk_cliente
join transacoes t on c.id_conta = t.id_conta_origem
group by cl.nome_completo
having count(t.id_transacao) > 2;
