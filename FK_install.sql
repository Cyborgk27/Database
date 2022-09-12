--Table PAGO
alter table PAGO
    add constraint PAGO_FACTURA_FK
    foreign key (FACTURA_idFACTURA)
    references FACTURA(idFactura);

--Table RESERVAS
alter table RESERVAS
    add constraint RESERVAS_CLIENTES_FK
    foreign key (CLIENTES_idCliente)
    references CLIENTES (idCliente);
alter table RESERVAS
    add constraint RESERVAS_CONTRATOS_FK
    foreign key (CONTRATOS_numeroContrato)
    references CONTRATOS (numeroContrato);

--Table CONTRATOS
alter table CONTRATOS
    add constraint CONTRATOS_CLIENTES_FK
    foreign key (CLIENTES_idCliente)
    references CLIENTES (idCliente);
alter table CONTRATOS
    add constraint CONTRATOS_FACTURA_FK
    foreign key (FACTURA_idFactura)
    references FACTURA (idFactura);
alter table CONTRATOS
    add constraint CONTRATOS_SERVICIO_FK
    foreign key (SERVICIO_idServicio)
    references SERVICIO (idServicio);

--Table MOBILIARIO
alter table MOBILIARIO
    add constraint MOBILIARIO_SERVICIO_FK
    foreign key (SERVICIO_idServicio)
    references SERVICIO (idServicio);
alter table MOBILIARIO
    add constraint MOBILIARIO_USUARIOS_FK
    foreign key (USUARIOS_idUsuario)
    references USUARIOS (idUsuarios);

--table USUARIOS
alter table USUARIOS
    add constraint USUARIOS_SISTEMA_FK
    foreign key (SISTEMA_SISTEMA_ID)
    references SISTEMA (SISTEMA_ID);
alter table USUARIOS
    add constraint USUARIOS_USUARIOS_FK
    foreign key (USUARIOS_idUsuario)
    references USUARIOS (idUSUARIOS);

--table ESPACIO
alter table ESPACIO
    add constraint ESPACIO_SERVICIO_FK
    foreign key (SERVICIO_idServicio)
    references SERVICIO(idServicio);
alter table ESPACIO
    add constraint ESPACIO_USUARIO_FK
    foreign key (USUARIOS_idUsuario)
    references USUARIOS (idUSUARIOS);