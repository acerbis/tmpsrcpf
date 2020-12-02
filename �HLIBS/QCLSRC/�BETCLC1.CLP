/***************************************************************/
/* RICHIAMO PGM STAMPA ETICHETTE CLIENTI ----------------------*/
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&USER) TYPE(*CHAR) LEN(10)
             RTVJOBA    USER(&USER)
             OVRPRTF    FILE(QSYSLABC) OUTQ(INT30) HOLD(*YES)
             IF         COND(&USER *EQ ('PARIETTIS ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT06  ))
             IF         COND(&USER *EQ ('GALLIE    ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT06))
 /**/
             CALL       §BETCL1 PARM(&KPJBA)
/* §§ */
             ENDPGM
