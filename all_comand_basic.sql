--CRIANDO A TABELA-- 
CREATE TABLE T_TESTE_DDL(
    CD_TESTE    NUMBER(3) NOT NULL,
    NM_TESTE    VARCHAR2(30) NOT NULL,
    DS_TESTE    VARCHAR2(60) NULL,
    DT_TESTE    DATE NULL
    );
    
--ADICIONANDO CONSTRAINTS--
    ALTER TABLE T_TESTE_DDL
ADD CONSTRAINT PK_TESTE_DDL
    PRIMARY KEY (CD_TESTE);
    ALTER TABLE T_TESTE_DDL
ADD CONSTRAINT UN_TESTE_DDL_NOME
    UNIQUE (NM_TESTE);
    ALTER TABLE T_TESTE_DDL
ADD CONSTRAINT UN_TESTE_DDL_DESC
    UNIQUE (DS_TESTE);
    
--ADICIONANDO UMA COLUNA A UMA TABELA EXISTENTE--
    ALTER TABLE T_TESTE_DDL
        ADD DS_EMAIL VARCHAR(80) NULL;
        
--ADICIONANDO DUAS OU MAIS COLUNAS PARA UMA TABELA EXISTENTE--
    ALTER TABLE T_TESTE_DDL
        ADD (DS_OBS1 VARCHAR2(50) NOT NULL, DS_OBS2 VARCHAR2(50));
        
--AUMENTANDO O TAMANHO DE UMA COLUNA EM UMA TABELA EXISTENTE--
    ALTER TABLE T_TESTE_DDL
        MODIFY DS_OBS1 VARCHAR2(80);
        
--MODIFICANDO O TIPO DE DADO QUE A COLUNA ARMAZENA--
    ALTER TABLE T_TESTE_DDL
        MODIFY NM_TESTE CHAR(30);
        
--MODIFICANDO UMA COLUNA NOT NULL(OBRIGATÓRIA)PARA NULL(OPCIONAL)--
    ALTER TABLE T_TESTE_DDL
        MODIFY DS_OBS1 NULL;

--MODIFICANDO UMA COLUNA NULL(OPCIONAL)PARA NOT NULL(OBRIGATÓRIA)--
    ALTER TABLE T_TESTE_DDL
        MODIFY DS_TESTE NOT NULL;

--MODIFICANDO O TIPO DE DADO, TAMANHO E OBRIGATORIEDADE DE UMA COLUNA--
    ALTER TABLE T_TESTE_DDL
        MODIFY NM_TESTE VARCHAR2(40) NULL;
        
--ULTILIZANDO O COMANDO "SYSDATE" QUE É UM COMANDO ESPECIFICO O ORACLE QUE PERMITE RETORNAR A HORA/DATA DO SERVIDOR DO BD--
    ALTER TABLE T_TESTE_DDL
        MODIFY DT_TESTE DEFAULT SYSDATE;
        
--REMOVENDO UMA COLUNA DE UMA TABELA EXISTENTE--
    ALTER TABLE T_TESTE_DDL
        DROP COLUMN DS_OBS2;

--REMOVENDO VÁRIAS COLUNAS DE UMA TABELA EXISTENTE--
    ALTER TABLE T_TESTE_DDL
        DROP (DS_TESTE, DS_OBS1);
        
--REMOVENDO CONSTRAINT CHAVE PRIMARIA--
    ALTER TABLE T_TESTE_DDL
        DROP CONSTRAINT PK_TESTE_DDL;
        
--REMOVENDO CONSTRAINT CHAVE ESTRANGEIRA--
    ALTER TABLE T_TESTE_DDL
        DROP CONSTRAINT FK_NOME_CONSTRAINT_FOREIGN_KEY;

--REMOVENDO CONSTRAINT UNIQUE--
    ALTER TABLE T_TESTE_DDL
        DROP CONSTRAINT UN_TESTE_DDL_NOME;

--REMOVENDO UMA CONSTRAINT CHECK--
    ALTER TABLE T_TESTE_DDL
        DROP CONSTRAINT CK_NOME_CONSTRAINT_CHECK;
        
--COMO ELIMINAR UMA CONSTRAINT DEFAULT--
    ALTER TABLE T_TESTE_DDL
        MODIFY DT_TESTE DEFAULT NULL;
        
--RENOMEANDO UMA TABELA EXISTENTE--
    ALTER TABLE T_TESTE_DDL RENAME TO T_TESTE_DDL_NOVO;
    
--RENOMEANDO UMA COLUNA EXISTENTE--
    ALTER TABLE T_TESTE_DDL_NOVO 
        RENAME COLUMN DS_EMAIL TO DS_EMAIL_NOVO;
        
--RENOMEANDO UMA CONSTRAINT EXISTENTE--
    ALTER TABLE T_TESTE_DDL_NOVO
        RENAME CONSTRAINT UN_TESTE_DDL_NOME TO UN_TESTE_DDL_NOME_NOVO;
        
--QUANDO CRIAMOS UMA CONSTRAINT, ELA "NASCE" HABILITADA, OU SEJA,
--PRONTA PARA SER ULTILIZADA DURANTE O CRUD
--PODEMOS "DESLIGAR" UMA CONSTRAINT
--ULTILIZAMOS A OPÇÃO:DISABLE
    ALTER TABLE T_TESTE_DDL_NOVO
        DISABLE CONSTRAINT UN_TESTE_DDL_NOME_NOVO;
        
--PARA HABLITAR USA:--
    ALTER TABLE T_TESTE_DDL_NOVO
        ENABLE CONSTRAINT UN_TESTE_DDL_NOME_NOVO;