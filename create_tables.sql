create table tbl_admin (
    id_admin int auto_increment primary key not null,
    nome varchar(30) not null,
    telefone varchar(30) not null,
    cpf varchar(30) not null
);

create table tbl_medico(
    id_medico int auto_increment primary key not null,
    crm varchar(30) not null,
    nome varchar(30) not null,
    telefone varchar(30) not null,
    cpf varchar(30) not null
);

create table tbl_consulta(
    codigo_consulta int auto_increment primary key not null,
    data date not null,
    valor float not null,
    tipo_pagamento int,
    constraint chk_valor check (valor > 0.0)
);

create table tbl_paciente(
    id_paciente int auto_increment primary key not null,
    cpf varchar(30) not null,
    nome varchar(30) not null,
    data_nascimento date not null,
    telefone varchar(30) not null,
    email varchar(30) not null
);

create table tbl_convenio (
    id_convenio int auto_increment primary key not null,
    numero numeric(65) not null,
    nome varchar(30) not null
);