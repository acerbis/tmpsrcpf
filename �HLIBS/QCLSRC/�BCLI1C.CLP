/***************************************************************/
/* AGGIORNAMENTO BATCH FILE §BCLI00F X B2B..........           */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             MONMSG     MSGID(CPF0000)
/* §§ */
             CALL       §BCLI1 PARM(&KPJBA)
             MONMSG     MSGID(CPF0000)
/* §§ */
             ENDPGM
