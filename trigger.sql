delimiter //
create trigger promocao_tbl_consulta before insert on
tbl_consulta
begin
    for each row
        update tbl_consulta set valor = valor*0.5 where diffdate('0000-00-00', now()) <= 30;
end
delimiter //


# create trigger after delete on tbl_consulta
delimiter //
create trigger after_delete_tbl_consulta after delete on tbl_consulta
begin
    for each row
        delete from tbl_atender_consulta where codigo_consulta = old.codigo_consulta;
        delete from tbl_marcar_consulta where codigo_consulta = old.codigo_consulta;
        delete from tbl_solicitar_consulta where codigo_consulta = old.codigo_consulta;
end

# create trigger after delete on tbl_medico
delimiter //
create trigger after_delete_tbl_medico after delete on tbl_medico
begin
    for each row
        delete from tbl_atender_consulta where id_medico = old.id_medico;
end

# create trigger after delete on tbl_paciente
delimiter //
create trigger after_delete_tbl_paciente after delete on tbl_paciente
begin
    for each row
        delete from tbl_solicitar_consulta where id_paciente = old.id_paciente;
        delete from tbl_possuir_convenio where id_paciente = old.id_paciente;
end

# create trigger after delete on tbl_convenio
delimiter //
create trigger after_delete_tbl_convenio after delete on tbl_convenio
begin
    for each row
        delete from tbl_possuir_convenio where id_convenio = old.id_convenio;
end

# create trigger after update on tbl_consulta
delimiter //
create trigger after_update_tbl_consulta after update on tbl_consulta
begin
    for each row
        update tbl_atender_consulta set codigo_consulta = new.codigo_consulta where codigo_consulta = old.codigo_consulta;
        update tbl_marcar_consulta set codigo_consulta = new.codigo_consulta where codigo_consulta = old.codigo_consulta;
        update tbl_solicitar_consulta set codigo_consulta = new.codigo_consulta where codigo_consulta = old.codigo_consulta;
end


# create trigger after update on tbl_medico
delimiter //
create trigger after_update_tbl_medico after update on tbl_medico
begin
    for each row
        update tbl_atender_consulta set id_medico = new.id_medico where id_medico = old.id_medico;
end

# create trigger after update on tbl_paciente
delimiter //
create trigger after_update_tbl_paciente after update on tbl_paciente
begin
    for each row
        update tbl_solicitar_consulta set id_paciente = new.id_paciente where id_paciente = old.id_paciente;
        update tbl_possuir_convenio set id_paciente = new.id_paciente where id_paciente = old.id_paciente;
end

# create trigger after update on tbl_convenio
delimiter //
create trigger after_update_tbl_convenio after update on tbl_convenio
begin
    for each row
        update tbl_possuir_convenio set id_convenio = new.id_convenio where id_convenio = old.id_convenio;
end

