--CRIANDO TABELA--
CREATE TABLE t_sip_departamento(
    CD_DEPTO NUMBER(3) NOT NULL,
    NM_DEPTO VARCHAR2(30) NOT NULL,
    SG_DEPTO CHAR(3) NOT NULL
);

--ADICIONANDO CONSTRAINTS NA TABELA--
    ALTER TABLE t_sip_departamento
ADD CONSTRAINT pk_sip_cd_depto
    PRIMARY KEY (CD_DEPTO);
    
    ALTER TABLE t_sip_departamento
ADD CONSTRAINT un_sip_depto_nome
    UNIQUE (NM_DEPTO);
    
    ALTER TABLE t_sip_departamento
ADD CONSTRAINT uni_sip_depto_sigla
    UNIQUE (SG_DEPTO);

--ADICIONANDO DADOS NA TABELA--
INSERT INTO t_sip_departamento(CD_DEPTO, NM_DEPTO, SG_DEPTO)
VALUES(1,'Recursos Humanos', 'RH');
INSERT INTO t_sip_departamento(CD_DEPTO, NM_DEPTO, SG_DEPTO)
VALUES(2,'Service Desk', 'TI');
INSERT INTO t_sip_departamento(CD_DEPTO, NM_DEPTO, SG_DEPTO)
VALUES(3,'Desenvolvedor', 'TI');
