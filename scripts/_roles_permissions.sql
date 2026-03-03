-- Criação do log do DBA Administrador e concedendo a ele o total 
--acesso 
create user dba_admin with password 'admin123'; 
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO dba_admin;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO dba_admin;
ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT ALL ON TABLES TO dba_admin;



-- Criação do log do analista com as permissões de select e insert
-- na tabela de transacões
create user analista with password 'analista123';
grant select, insert  on transacoes to analista;





-- Criação do log do usuario_consulta, com apenas a permissão de constultar 
-- as viewa
create user usuario_consulta with password 'usuario123';
GRANT SELECT ON ALL TABLES IN SCHEMA public TO usuario_consulta;
