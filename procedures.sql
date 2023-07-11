delimiter //
create procedure consultas (in data date) 
begin
    select p.nome, m.nome, m.crm, c.valor, c.data_consulta from
    tbl_consulta c inner join tbl_solicitar_consulta sc on sc.codigo = c.codigo
    inner join tbl_paciente p on p.cpf = sc.cpf
    inner join tbl_atender_consulta ac on ac.codigoConsulta = c.codigo
    inner join tbl_medico m on ac.idMedico = m.id
    where c.data_consulta = data;
end
delimiter //