/***************************************************************/
/* RICHIAMO PGM STAMPA ETICHETTE CONTENUTO                     */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&KPJBU) TYPE(*CHAR) LEN(256)
             DCL        VAR(&USER) TYPE(*CHAR) LEN(10)
             DCL        VAR(&TIPO) TYPE(*CHAR) LEN(10)
             DCL        VAR(&CODA) TYPE(*CHAR) LEN(10)
             DCL        VAR(&HOLD) TYPE(*CHAR) LEN(4)
             CHGVAR     VAR(&KPJBU) VALUE(%SST(&KPJBA 247 256))
             CHGVAR     VAR(&TIPO) VALUE('INTERMEC  ')
             OVRPRTF    FILE(QSYSLABC) OUTQ(INT06) HOLD(*YES)
             RTVJOBA    USER(&USER)
 /*_________________________________________________________________*/
 /*          Reperimento coda stampa x printerfile                  */
             CHGVAR     VAR(%SST(&KPJBA 247 10)) VALUE(&USER)
             CHGVAR     VAR(%SST(&KPJBA 257 10)) VALUE(&TIPO)
             CHGVAR     VAR(%SST(&KPJBA 267 5)) VALUE('     ')
 /**/
             CALL       §BUT98 PARM(&KPJBA)
 /**/
             CHGVAR     VAR(&CODA) VALUE(%SST(&KPJBA 277 10))
             CHGVAR     VAR(&HOLD) VALUE(%SST(&KPJBA 287 4))
 /*_________________________________________________________________*/
             IF         COND(&CODA *EQ ('          ')) THEN(GOTO +
                         CMDLBL(NOSELE))
             OVRPRTF    FILE(QSYSLABC) OUTQ(&CODA) HOLD(&HOLD)
 /**/
NOSELE:
             CHGVAR     VAR(%SST(&KPJBA 247 256)) VALUE(&KPJBU)
 /*_________________________________________________________________*/
             CALL       §BETCON2 PARM(&KPJBA)
 /*_________________________________________________________________*/
/* §§ */
             ENDPGM
