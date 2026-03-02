-- Criação do log do DBA Administrador e concedendo a ele o total 
--acesso 
create user dba_admin with password 'admin123'; 
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO dba_admin;

-- Criação do log do analista com as permissões de select,insert, update
-- e delete em todas as tabelas
create user analista with password 'analista123';
grant select, insert, update, delete on all tables in schema to analista;

-- Criação do log do usuario_consulta, com apenas a permissão de constultar 
-- todas as tabelas
create user usuario_consulta with password 'usuario123';
grant select on all tables in schema to usuario_consulta;