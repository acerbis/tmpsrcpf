/***************************************************************/
/* RICHIAMO PGM STAMPA ETICHETTE PRODOTTI                      */
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
             IF         COND(%SST(&KPJBA 500 1) *EQ ('4')) +
                        THEN(OVRPRTF FILE(QSYSLAB1) TOFILE(QSYSLAB4))
             IF         COND(%SST(&KPJBA 500 1) *EQ ('1')) +
                        THEN(OVRPRTF FILE(QSYSLAB1) TOFILE(QSYSLAB1))
/* §§ */
             OVRPRTF    FILE(QSYSLAB1) OUTQ(INT06)
             OVRPRTF    FILE(QSYSLAB2) OUTQ(INT06)
             OVRPRTF    FILE(QSYSLAB4) OUTQ(INT06)
/* §§ */
             RTVJOBA    USER(&USER)
 /*_________________________________________________________________*/
 /*          Reperimento coda stampa x printerfile                   */
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
             OVRPRTF      FILE(QSYSLAB1) OUTQ(&CODA) HOLD(&HOLD)
             OVRPRTF      FILE(QSYSLAB2) OUTQ(&CODA) HOLD(&HOLD)
             OVRPRTF      FILE(QSYSLAB4) OUTQ(&CODA) HOLD(&HOLD)
 /*_________________________________________________________________*/
NOSELE:
             CHGVAR     VAR(%SST(&KPJBA 247 256)) VALUE(&KPJBU)
             CALL       §BETDX PARM(&KPJBA)
/* §§ */
             ENDPGM
