create table tbl_admin (
    id int autoincrement primary key not null,
    nome varchar(30) not null,
    telefone varchar(30) not null,
    cpf varchar(30) not null
);

create table tbl_medico(
    id int autoincrement primary key not null,
    crm varchar(30) not null,
    nome varchar(30) not null,
    telefone varchar(30) not null,
    cpf varchar(30) not null
);

create table tbl_consulta(
    codigo int autoincrement primary key not null,
    valor float not null,
    tipoPagamento int,
    contraint chk_valor check (valor > 0)
);

create table tbl_paciente(
    cpf numeric(30) primary key not null,
    nome varchar(30)
    data_nascimento date,
    telefone varchar(30)
    email varchar(30)
);

create table tbl_convenio (
    numero numeric(100) primary key not null,
    nome varchar(30) not null
);