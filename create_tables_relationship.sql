create table tbl_atender_consulta (
    id_atender_consulta int auto_increment primary key,
    id_medico int not null,
    codigo_consulta int not null,
    constraint fk_id_medico_1 Foreign Key (id_medico) 
    REFERENCES tbl_medico(id_medico)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    constraint fk_codigo_consulta_1 Foreign Key (codigo_consulta) 
    REFERENCES tbl_consulta(codigo_consulta)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

create table tbl_marcar_consulta (
    id_marcar_consulta int auto_increment primary key,
    id_admin int not null,
    codigo_consulta int not null,
    constraint fk_id_admin_1 Foreign Key (id_admin)
    references tbl_admin(id_admin)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    constraint fk_codigo_consulta_2 Foreign Key (codigo_consulta)
    references tbl_consulta(codigo_consulta)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

create table tbl_solicitar_consulta (
    id_solicitar_consulta int auto_increment primary key,
    codigo_consulta int not null,
    id_paciente int not null,
    constraint fk_id_paciente_1 Foreign Key (id_paciente)
    references tbl_paciente(id_paciente)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    constraint fk_codigo_consulta_3 Foreign Key (codigo_consulta)
    references tbl_consulta(codigo_consulta)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

create table tbl_possuir_convenio (
    id_possuir_convenio int auto_increment primary key,
    id_paciente int not null,
    id_convenio int not null,
    constraint fk_id_paciente_2 Foreign Key (id_paciente)
    references tbl_paciente(id_paciente)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    constraint fk_id_convenio_1 Foreign Key (id_convenio)
    references tbl_convenio(id_convenio)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
);