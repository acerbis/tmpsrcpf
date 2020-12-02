             PGM        PARM(&NOME &OK)
             DCL        VAR(&NOME) TYPE(*CHAR) LEN(10)
             DCL        VAR(&OK) TYPE(*CHAR) LEN(1)
             DCL        VAR(&STATUS) TYPE(*CHAR) LEN(10)
             CHGVAR     VAR(&OK) VALUE(' ')
             RTVUSRPRF  USRPRF(&NOME) STATUS(&STATUS)
             IF         COND(&STATUS *EQ ('*DISABLED')) THEN(CHGVAR +
                        VAR(&OK) VALUE('N'))
             ENDPGM
