/***************************************************************/
/* RICHIAMO PGM STAMPA ETICHETTE CON APPLICATION MOTO          */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&USER) TYPE(*CHAR) LEN(10)
             OVRPRTF    FILE(QSYSLABC) OUTQ(INT20 ) HOLD(*NO)
             RTVJOBA    USER(&USER)
             IF         COND(&USER *EQ ('TSEREPLAST')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(ETICHETTE) HOLD(*NO))
 /*__*/
             CALL       §BETMOTO PARM(&KPJBA)
 /*__*/
/* §§ */
             ENDPGM
