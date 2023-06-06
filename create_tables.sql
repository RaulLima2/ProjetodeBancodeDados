create table tbl_admin (
    id integer autoincrement primary key,
    nome varchar(30),
    telefone varchar(30),
    cpf varchar(10)
);

create table tbl_medico(
    id int autoincrement primary key,
    crm varchar(30),
    nome varchar(30),
    telefone varchar(30),
    cpf varchar(10)
);

create table tbl_consulta(
    codigo int autoincrement primary key,
    valor float,
    tipoPagamento int,
    check (valor > 0)
);

create table tbl_paciente(
    cpf numeric(10) primary key not null,
    nome varchar(30)
    data_nascimento date,
    telefone varchar(30)
    email varchar(30)
);

create table tbl_convenio (
    numero numeric(100) primary key not null,
    nome varchar(30)
);