/***************************************************************/
/* RICHIAMO PGM STAMPA ETICHETTE CLIENTI ----------------------*/
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&USER) TYPE(*CHAR) LEN(10)
             RTVJOBA    USER(&USER)
             RTVJOBA    USER(&USER)
             IF         COND(&USER *EQ ('NEGRONIM  ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT30) HOLD(*YES))
             IF         COND(&USER *EQ ('GAMBAF    ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT30) HOLD(*YES))
             IF         COND(&USER *EQ ('GAMBAS    ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT30))
 /*          IF         COND(&USER *EQ ('MANENTID  ')) THEN(OVRPRTF+ */
 /*                       FILE(QSYSLABC) OUTQ(INT30))                */
             IF         COND(&USER *EQ ('TASSIM    ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT30))
             IF         COND(&USER *EQ ('PARIETTIS ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT06  ))
             IF         COND(&USER *EQ ('BONARINIA ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT06))
             IF         COND(&USER *EQ ('GALLIE    ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT30))
             IF         COND(&USER *EQ ('CORTINOVIM')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT30))
             IF         COND(&USER *EQ ('ASSEMBLY1 ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT30))
             IF         COND(&USER *EQ ('MASSERINIP')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT30))
             IF         COND(&USER *EQ ('GRASSID   ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT30))
             IF         COND(&USER *EQ ('TSTIRERIA ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INTSTIRERI))
             IF         COND(&USER *EQ ('POLONIE   ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT06    ))
             IF         COND(&USER *EQ ('BARONCHELL')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT06    ))
             IF         COND(&USER *EQ ('CORTINOVIM')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT06    ))
 /**/
             CALL       §BETCL1 PARM(&KPJBA)
/* §§ */
             ENDPGM
