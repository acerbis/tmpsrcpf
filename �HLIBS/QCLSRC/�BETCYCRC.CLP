/***************************************************************/
/* RICHIAMO PGM STAMPA ETICHETTE CYCRA  CON APPLICATION        */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&USER) TYPE(*CHAR) LEN(10)
             OVRPRTF    FILE(QSYSLABC) OUTQ(INT01) HOLD(*YES)
             RTVJOBA    USER(&USER)
 /*__*/
             CALL       §BETCYCR  PARM(&KPJBA)
 /*__*/
/* §§ */
             ENDPGM
