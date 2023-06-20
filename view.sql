create view consultas_agendadas as
select p.nome, m.nome, m.crm, c.valor, c.data_consulta from
tbl_consulta c inner join tbl_solicitar_consulta sc on sc.codigo = c.codigo
inner join tbl_paciente p on p.cpf = sc.cpf 
inner join tbl_atender_consulta ac on ac.codigoConsulta = c.codigo
inner join tbl_medico m on ac.idMedico = m.id;


create view paciente_convenio as
select p.cpf, p.nome, ps.numero from
tbl_possuir_convenio pc inner join tbl_paciente p on p.cpf = ps.cpf;
order by asc;