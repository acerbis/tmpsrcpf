/* PULIZIA E AGGIORNAMENTO FILI ACEDHL IN DHLCLIT_AC           */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&FINE) TYPE(*CHAR) LEN(10)
/* §§ */
             ADDLIBLE   LIB(DHLCLIT_AC)
             MONMSG     MSGID(CPF0000)
             OVRDBF     FILE(ACEDHL) TOFILE(DHLCLIT_AC/ACEDHL) +
                          SHARE(*YES)
             CLRPFM     FILE(DHLCLIT_AC/ACEDHL)
             CALL       PGM(§AWBDHL1) PARM(&KPJBA)
             DLTOVR     FILE(ACEDHL)
NOCOPY:
             ENDPGM
