create table tbl_atender_consulta (
    id_atender_consulta int auto_increment primary key,
    id_medico int not null,
    codigo_consulta int not null
);

create table tbl_marcar_consulta (
    id_marcar_consulta int auto_increment primary key,
    id_admin int not null,
    codigo_consulta int not null
);

create table tbl_solicitar_consulta (
    id_solicitar_consulta int auto_increment primary key,
    codigo_consulta int not null,
    id_paciente int not null
);

create table tbl_possuir_convenio (
    id_possuir_convenio int auto_increment primary key,
    id_paciente int not null,
    id_convenio int not null
);