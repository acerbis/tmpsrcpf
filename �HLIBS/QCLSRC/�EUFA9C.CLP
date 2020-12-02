/*********************************************************************/
/* INVIO PROVA DI ESPORTAZIONE A CLIENTE     */
/*********************************************************************/
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&EMAIL) TYPE(*CHAR) LEN(132)
             DCL        VAR(&SAV) TYPE(*CHAR) LEN(40)
/* §§ */
             CHGVAR     VAR(&EMAIL) VALUE(%SST(&KPJBA 287 132))
             OVRPRTF    FILE(PROF_EXP) OUTQ(PDFMAIL) HOLD(*YES) +
                          USRDFNDTA(&EMAIL)
             CALL       §EUFA9 PARM(&KPJBA)
             STRPRTWTR  DEV(PDFMAIL)
             MONMSG     MSGID(CPF0000)
/* §§ */
             ENDPGM
