/***************************************************************/
/* RICHIAMO PGM STAMPA ETICHETTE CLIENTE ACERBIS USA           */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&USER) TYPE(*CHAR) LEN(10)
             RTVJOBA    USER(&USER)
             OVRPRTF    FILE(QSYSLABC) OUTQ(INT06  )
 /**/
             CALL       §BETCL PARM(&KPJBA)
/* §§ */
             ENDPGM
