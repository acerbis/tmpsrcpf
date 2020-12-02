/***************************************************************/
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&FINE) TYPE(*CHAR) LEN(10)
/* §§ */
             ADDLIBLE   LIB(DHLCLIT_AC)
             MONMSG     MSGID(CPF0000)
             OVRDBF     FILE(ACEDHL) TOFILE(HDAT/ACEDHL) +
                          SHARE(*YES)
             CLRPFM     FILE(HDAT/ACEDHL)
             CALL       PGM(§AWBDHL) PARM(&KPJBA)
             DLTOVR     FILE(ACEDHL)
             CHGVAR     VAR(&FINE) VALUE(%SST(&KPJBA 247 1))
             IF         COND(&FINE *NE ('§')) THEN(GOTO +
                         CMDLBL(NOCOPY))
             CPYF       FROMFILE(HDAT/ACEDHL) +
                          TOFILE(DHLCLIT_AC/ACEDHL) MBROPT(*REPLACE)
NOCOPY:
             RMVLIBLE   LIB(DHLCLIT_AC)
             ENDPGM
