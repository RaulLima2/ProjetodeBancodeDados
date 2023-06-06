create table tbl_atender_consulta (
    idAtenderConsulta integer autoincrement primary key,
    idMedico integer,
    codigoConsulta integer,
    constraint fk_idMedico foreing key (idMedico) references tbl_medico(id) on delete on update,
    constraint fk_codigoConsulta foreing key (codigoConsulta) references tbl_consulta(codigo) on delete on update 
);

create table tbl_marcar_consulta (
    idMarcarConsulta integer autoincrement primary key,
    idAdmin integer,
    codigoConsulta integer,
    constraint fk_idAdmin foreing key (idAdmin) references tbl_admin(id) on delete on update,
    constraint fk_codigoConsulta foreing key (codigoConsulta) references tbl_consulta(codigo) on delete on update 
);

create table tbl_solicitar_consulta (
    idSolicitarConsulta integer autoincrement primary key,
    codigo integer,
    cpf varchar(10),
    constraint fk_codigo_consulta foreing key (codigo) references tbl_consulta(codigo) on delete cascade on update cascade
    constraint fk_cpf_paciente foreing key (cpf) references tbl_paciente(cpf) on delete on update
);

create table tbl_possuir_convenio (
    idPossuirConvenio integer autoincrement primary key,
    cpf varchar(30) ,
    numero varchar(30),
    constraint fk_numero_convenio foreing key (numero) references tbl_convenio(numero) on delete cascade on update cascade
    constraint fk_cpf_paciente foreing key (cpf) references tbl_paciente(cpf) on delete on update
);