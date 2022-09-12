--Table PAGO
alter table PAGO
    drop constraint PAGO_FACTURA_FK;

--Table RESERVAS
alter table RESERVAS
    drop constraint RESERVAS_CLIENTES_FK;
alter table RESERVAS
    drop constraint RESERVAS_CONTRATOS_FK;

--Table CONTRATOS
alter table CONTRATOS
    drop constraint CONTRATOS_CLIENTES_FK;
alter table CONTRATOS
    drop constraint CONTRATOS_FACTURA_FK;
alter table CONTRATOS
    drop constraint CONTRATOS_SERVICIO_FK;

--Table MOBILIARIO
alter table MOBILIARIO
    drop constraint MOBILIARIO_SERVICIO_FK;
alter table MOBILIARIO
    drop constraint MOBILIARIO_USUARIOS_FK;

--table USUARIOS
alter table USUARIOS
    drop constraint USUARIOS_SISTEMA_FK;
alter table USUARIOS
    drop constraint USUARIOS_USUARIOS_FK;

--table ESPACIO
alter table ESPACIO
    drop constraint ESPACIO_SERVICIO_FK;
alter table ESPACIO
    drop constraint ESPACIO_USUARIO_FK;