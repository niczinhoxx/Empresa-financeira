-- ============================================================
-- criação das roles (usuários com login)
-- ============================================================

-- role com perfil de administrador do banco
-- terá controle total sobre a database
create role dba_admin 
with login 
password 'admin123';

-- role com perfil de analista
-- poderá consultar dados e inserir transações
create role analista 
with login 
password 'analista123';

-- role apenas para consulta
-- terá acesso somente leitura via views
create role usuario_consulta 
with login 
password 'usuario123';



-- ============================================================
-- permissões na database
-- ============================================================

-- permite que o dba_admin conecte e administre a database
grant all privileges 
on database empresa_financeira 
to dba_admin;

-- permite que o analista conecte na database
grant connect 
on database empresa_financeira 
to analista;

-- permite que o usuario_consulta conecte na database
grant connect 
on database empresa_financeira 
to usuario_consulta;



-- ============================================================
-- permissões no schema public
-- ============================================================

-- permite que o dba_admin crie objetos no schema
grant all privileges 
on schema public 
to dba_admin;

-- permite que o analista utilize o schema
grant usage 
on schema public 
to analista;

-- permite que o usuario_consulta utilize o schema
grant usage 
on schema public 
to usuario_consulta;



-- ============================================================
-- permissões nas tabelas existentes
-- ============================================================

-- administrador pode tudo nas tabelas
grant all privileges 
on all tables in schema public 
to dba_admin;

-- analista pode consultar e inserir dados nas tabelas
grant select, insert 
on all tables in schema public 
to analista;

-- usuario_consulta pode apenas consultar
grant select 
on all tables in schema public 
to usuario_consulta;



-- ============================================================
-- permissões nas sequências (importante para serial)
-- ============================================================

-- permite que o dba_admin controle sequences
grant all privileges 
on all sequences in schema public 
to dba_admin;

-- permite que o analista utilize sequences
-- necessário para insert em tabelas com serial
grant usage, select 
on all sequences in schema public 
to analista;



-- ============================================================
-- default privileges (para futuras tabelas)
-- isso evita ter que dar grant manual depois
-- ============================================================

-- futuras tabelas criadas no schema
alter default privileges in schema public
grant select, insert on tables to analista;

alter default privileges in schema public
grant select on tables to usuario_consulta;
