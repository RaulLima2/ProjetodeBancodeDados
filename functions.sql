create function get_id_medico (nome varchar(30))
returns varchar(30) DETERMINISTIC
return (
    select M.id_medico from tbl_medico M where M.nome = nome
);

create function get_id_consulta_by_date(data date)
returns int DETERMINISTIC
return (
    select C.codigo_consulta from tbl_consulta C where C.data = data
);

create function get_id_admin(nome varchar(30))
return int DETERMINISTIC
return (
    select A.id_admin from tbl_admin A where A.nome = nome
);

# CRUD Consulta
create function create_consulta(valor numeric(65), tipo_pagamento varchar(30))
returns INT DETERMINISTIC
return  (
    insert into tbl_consulta value (valor, tipo_pagamento)
);

create function update_consulta_by_id(id_c int, novo_data date, novo_valor float, novo_tipo_pagamento int)
returns INT DETERMINISTIC
return  (
    update tbl_consulta c
    set c.data = novo_data, c.valor = novo_valor, c.tipo_pagamento = novo_tipo_pagamento
    where c.codigo_consulta = id_c
);

create function remove_consulta_by_id(id_c int)
returns int deterministic
return (
    delete from tbl_consulta where codigo_consulta = id_c
);

# CRUD Table Paciente
create function add_paciente(cpf varchar(30), nome varchar(30), data_nascimento date, telefone varchar(30), email varchar(30)) as
returns INT DETERMINISTIC
return (
    insert into tbl_paciente value (cpf, nome, data_nascimento, telefone, email)
);

create function update_paciente(id_p int, cpf varchar(30), nome varchar(30), data_nascimento date, telefone varchar(30), email varchar(30)) as
returns INT DETERMINISTIC
return (
    update tbl_paciente p
    set p.cpf = new_cpf, p.nome = novo_nome, p.data_nascimento = novo_data_nascimento, p.telefone = novo_telefone, p.email = novo_email 
    where p.id_paciente = id_p
);

create function remove_paciente(id_p int) as
return INT DETERMINISTIC
returns (
    delete from tbl_paciente p where p.id_paciente = id_p
);


# CRUD Admin
create function add_admin(nome varchar(30), telefone varchar(30), cpf varchar(30)) as
returns INT DETERMINISTIC
return (
    insert into tbl_admin value (nome, telefone, cpf)
);

create function update_admin(id_a int, nome varchar(30), telefone varhcar(30), cpf varchar(30)) as
returns INT DETERMINISTIC
return (
    update tbl_admin a 
    set a.nome = novo_nome, a.telefone = novo_telefone, a.cpf = novo_cpf
    where a.id_admin = id_a
);

create function remove_admin(id_a int) as
returns INT DETERMINISTIC
return (
    delete from tbl_admin A where A.id_admin = id_a
);

# CRUD Medico
create function add_medico(crm varchar(30), nome varchar(30), telefone varchar(30), cpf varchar(30)) as
returns INT DETERMINISTIC
return (
    insert into tbl_medico value (crm, nome, telefone, cpf)
);

create function update_medico(novo_crm varchar(30), novo_nome varchar(30), novo_telefone varchar(30), novo_cpf varchar(30)) as
returns INT DETERMINISTIC
return (
    update tbl_medico m
    set m.crm = novo_crm, m.nome = novo_nome, m.telefone = novo_telefone, m.cpf = novo_cpf
    where m.id_medico = id_medico
);

create function remove_medico(id_m int) as
returns INT DETERMINISTIC
return (
    delete from tbl_medico m where m.id_medico = id_m 
);

# CRUD Convenio
create function add_convenio(numero numeric(65), nome varchar(30)) as
returns INT DETERMINISTIC
return (
    insert into tbl_convenio value (numero, nome)
);

create function update_convenio(id_c int, novo_numero numeric(65), novo_nome varchar(30)) as
returns INT DETERMINISTIC
return (
    update tbl_convenio c
    set c.numero = novo_numero, c.nome = novo_nome 
    where c.id_convenio = id_c
);

create function remove_convenio_by_name(nome varchar(30)) as
returns INT DETERMINISTIC
return (
    delete from tbl_convenio c where c.nome = nome
);