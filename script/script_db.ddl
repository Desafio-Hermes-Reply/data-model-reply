-- Gerado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   em:        2025-07-25 16:23:31 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE empresas_cliente 
    ( 
     id_empresa    INTEGER  NOT NULL , 
     nome_empresa  VARCHAR2 (255) , 
     cnpj          CHAR (14) , 
     endereco      VARCHAR2 (500) , 
     email         VARCHAR2 (255) , 
     data_contrato DATE , 
     empresa_ativa CHAR (1)  NOT NULL 
    ) 
    LOGGING 
;

ALTER TABLE empresas_cliente 
    ADD CONSTRAINT PK_empresas_cliente PRIMARY KEY ( id_empresa ) ;

CREATE TABLE leitura_sensores 
    ( 
     id_leitura         INTEGER  NOT NULL , 
     sensores_id_sensor INTEGER  NOT NULL , 
     valor              INTEGER , 
     tipo_valor         VARCHAR2 (50) , 
     data_hora          DATE 
    ) 
    LOGGING 
;

ALTER TABLE leitura_sensores 
    ADD CONSTRAINT PK_leitura_sensores PRIMARY KEY ( id_leitura ) ;

CREATE TABLE maquinas 
    ( 
     id_maquina         INTEGER  NOT NULL , 
     nome               VARCHAR2 (255) , 
     numero_serie       VARCHAR2 (100) , 
     modelo             VARCHAR2 (100) , 
     fabricante         VARCHAR2 (100) , 
     localizacao        VARCHAR2 (100) , 
     data_instalacao    DATE , 
     status             VARCHAR2 (50) , 
     ultima_manutencao  DATE , 
     proxima_manutencao DATE 
    ) 
    LOGGING 
;

ALTER TABLE maquinas 
    ADD CONSTRAINT PK_maquinas PRIMARY KEY ( id_maquina ) ;

CREATE TABLE perfis 
    ( 
     id_perfil   INTEGER  NOT NULL , 
     nome_perfil VARCHAR2 (100) , 
     descricao   VARCHAR2 (500) 
    ) 
    LOGGING 
;

ALTER TABLE perfis 
    ADD CONSTRAINT PK_perfis PRIMARY KEY ( id_perfil ) ;

CREATE TABLE permissoes_maquina_usuario 
    ( 
     id_permissao        INTEGER  NOT NULL , 
     usuarios_id_usuario INTEGER  NOT NULL , 
     maquinas_id_maquina INTEGER  NOT NULL , 
     data_concessao      TIMESTAMP (8) WITH TIME ZONE , 
     permissao_ativa     CHAR (1)  NOT NULL 
    ) 
    LOGGING 
;

ALTER TABLE permissoes_maquina_usuario 
    ADD CONSTRAINT PK_permissoes_maquina_usuario PRIMARY KEY ( id_permissao, usuarios_id_usuario, maquinas_id_maquina ) ;

CREATE TABLE sensores 
    ( 
     id_sensor           INTEGER  NOT NULL , 
     maquinas_id_maquina INTEGER  NOT NULL , 
     nome                VARCHAR2 (200) , 
     modelo              VARCHAR2 (50) , 
     tipo_sensor         VARCHAR2 (20) , 
     sensor_ativo        CHAR (1)  NOT NULL 
    ) 
    LOGGING 
;

ALTER TABLE sensores 
    ADD CONSTRAINT PK_sensores PRIMARY KEY ( id_sensor ) ;

CREATE TABLE usuarios 
    ( 
     id_usuario                  INTEGER  NOT NULL , 
     perfis_id_perfil            INTEGER  NOT NULL , 
     empresas_cliente_id_empresa INTEGER  NOT NULL , 
     nome                        VARCHAR2 (50) , 
     sobrenome                   VARCHAR2 (100) , 
     senha_hash                  VARCHAR2 (255) , 
     email                       VARCHAR2 (100) , 
     nivel_acesso                VARCHAR2 (50) , 
     data_cadastro               DATE , 
     ultimo_login                TIMESTAMP (8) WITH TIME ZONE , 
     usuario_ativo               CHAR (1)  NOT NULL 
    ) 
    LOGGING 
;
CREATE UNIQUE INDEX usuarios__IDX ON usuarios 
    ( 
     perfis_id_perfil ASC 
    ) 
;

ALTER TABLE usuarios 
    ADD CONSTRAINT PK_usuarios PRIMARY KEY ( id_usuario ) ;

ALTER TABLE leitura_sensores 
    ADD CONSTRAINT FK_leitura_sensores_sensores FOREIGN KEY 
    ( 
     sensores_id_sensor
    ) 
    REFERENCES sensores 
    ( 
     id_sensor
    ) 
    NOT DEFERRABLE 
;

ALTER TABLE permissoes_maquina_usuario 
    ADD CONSTRAINT FK_permissoes_usuario_maquinas FOREIGN KEY 
    ( 
     maquinas_id_maquina
    ) 
    REFERENCES maquinas 
    ( 
     id_maquina
    ) 
    NOT DEFERRABLE 
;

ALTER TABLE permissoes_maquina_usuario 
    ADD CONSTRAINT FK_permissoes_usuario_usuarios FOREIGN KEY 
    ( 
     usuarios_id_usuario
    ) 
    REFERENCES usuarios 
    ( 
     id_usuario
    ) 
    NOT DEFERRABLE 
;

ALTER TABLE sensores 
    ADD CONSTRAINT FK_sensores_maquinas FOREIGN KEY 
    ( 
     maquinas_id_maquina
    ) 
    REFERENCES maquinas 
    ( 
     id_maquina
    ) 
    NOT DEFERRABLE 
;

ALTER TABLE usuarios 
    ADD CONSTRAINT FK_usuarios_empresas_cliente FOREIGN KEY 
    ( 
     empresas_cliente_id_empresa
    ) 
    REFERENCES empresas_cliente 
    ( 
     id_empresa
    ) 
    NOT DEFERRABLE 
;

ALTER TABLE usuarios 
    ADD CONSTRAINT FK_usuarios_perfis FOREIGN KEY 
    ( 
     perfis_id_perfil
    ) 
    REFERENCES perfis 
    ( 
     id_perfil
    ) 
    NOT DEFERRABLE 
;



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             1
-- ALTER TABLE                             13
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
