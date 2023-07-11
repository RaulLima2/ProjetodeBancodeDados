create function get_id_medico (nome varchar(30))
returns varchar(30) DETERMINISTIC
return (
    select M.id from tbl_medico where M.nome = nome
);

create function get_id_consulta_by_date(data date)
returns int DETERMINISTIC
return (
    select C.id from tbl_consulta  C where C.data = data
);


create function get_id_admin(nome varchar(30))
return int DETERMINISTIC
return (
    select A.id from tbl_admin A where A.nome = nome
);

# CRUD Atender Consulta
create function add_atender_consulta(id_medico, codigo_consulta)
returns INT DETERMINISTIC
return (
    insert into tbl_atender_consulta value (id_medico, codigo_consulta);
);

create function update_atender_consulta(id_medico, codigo_consulta)
returns INT DETERMINISTIC
return (
    update tbl_atender_consulta value (id_medico, codigo_consulta);
);

create function remove_atender_consulta(id_medico, codigo_consulta)
returns INT DETERMINISTIC
return (
    delete from tbl_atender_consulta where id_medico = id_medico;
);

# CRUD Consulta
create function create_consulta(valor as float, tipoPagamento,) as
returns INT DETERMINISTIC
return  (
    insert into tbl_marcar_consulta value (idAdmin, codigoConsulta);
);

create function add_solicitar_consulta(codigo, cpf)
returns INT DETERMINISTIC
return  (
    insert into tbl_marcar_consulta value (idAdmin, codigoConsulta);
);

# CRUD Table Paciente
create function add_paciente(cpf, nome, data_nascimento, telefone, email) as
return INT DETERMINISTIC
returns (
    insert into tbl_paciente value ();
);

create function update_paciente(cpf, nome, data_nascimento, telefone, email) as
return INT DETERMINISTIC
returns (
    insert into tbl_paciente value ();
);

create function remove_paciente(cpf, nome, data_nascimento, telefone, email) as
return INT DETERMINISTIC
returns (
    insert into tbl_paciente value ();
);


# CRUD Admin
create function add_admin(nome, telefone, cpf) as
returns INT DETERMINISTIC
return (
    insert into tbl_admin value (nome, telefone, cpf);
);

create function update_admin(nome, telefone, cpf) as
returns INT DETERMINISTIC
return (
    update tbl_admin value (nome, telefone, cpf);
);

create function remove_admin(nome, telefone, cpf) as
returns INT DETERMINISTIC
return (
    delete from tbl_admin where nome = nome;
);

# CRUD Medico
create function add_medico(crm, nome, telefone, cpf) as
returns INT DETERMINISTIC
return (
    insert into tbl_medico value (crm, nome, telefone, cpf);
);

create function update_medico(crm, nome, telefone, cpf) as
returns INT DETERMINISTIC
return (
    update tbl_medico value (crm, nome, telefone, cpf);
);

create function remove_medico(crm, nome, telefone, cpf) as
returns INT DETERMINISTIC
return (
    insert into tbl_medico value (crm, nome, telefone, cpf);
);

# CRUD Convenio
create function add_convenio(numero, nome) as
returns INT DETERMINISTIC
return (
    insert into tbl_convenio value (numero, nome);
);

create function update_convenio(numero, nome) as
returns INT DETERMINISTIC
return (
    update tbl_convenio value (numero, nome);
);

create function remove_convenio(numero, nome) as
returns INT DETERMINISTIC
return (
    delete from tbl_convenio where numero = numero;
)