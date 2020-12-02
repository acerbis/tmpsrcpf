/***************************************************************/
/* RICHIAMO PGM STAMPA ETICHETTE ------------------------------*/
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&USER) TYPE(*CHAR) LEN(10)
             IF         COND(%SST(&KPJBA 500 1) *EQ ('4')) +
                        THEN(OVRPRTF FILE(QSYSLAB1) TOFILE(QSYSLAB4))
             IF         COND(%SST(&KPJBA 500 1) *EQ ('1')) +
                        THEN(OVRPRTF FILE(QSYSLAB1) TOFILE(QSYSLAB1))
/* §§ */
                        OVRPRTF FILE(QSYSLAB1) OUTQ(INT06  )
                        OVRPRTF FILE(QSYSLAB4) OUTQ(INT06  )
/* §§ */
             RTVJOBA    USER(&USER)
             IF         COND(&USER *EQ ('NEGRONIM  ')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(INT30) HOLD(*YES))
             IF         COND(&USER *EQ ('NEGRONIM  ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) OUTQ(INT30) HOLD(*YES))
 /**/
             CALL       §BETDX PARM(&KPJBA)
/* §§ */
             ENDPGM
