/***************************************************************/
/* RICHIAMO PGM STAMPA ETICHETTE ------------------------------*/
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
                        THEN(OVRPRTF FILE(QSYSLAB2) TOFILE(QSYSLAB5))
             IF         COND(%SST(&KPJBA 500 1) *EQ ('1')) +
                        THEN(OVRPRTF FILE(QSYSLAB2) TOFILE(QSYSLAB2))
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
             OVRPRTF      FILE(QSYSLAB5) OUTQ(&CODA) HOLD(&HOLD)
             OVRPRTF      FILE(QSYSLAB2) OUTQ(&CODA) HOLD(&HOLD)
 /**/
NOSELE:
             CHGVAR     VAR(%SST(&KPJBA 247 256)) VALUE(&KPJBU)
 /*_________________________________________________________________*/
             CALL       §BETDX1 PARM(&KPJBA)
/* §§ */
             ENDPGM
