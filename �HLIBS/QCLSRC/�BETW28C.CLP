/***************************************************************/
/* RICHIAMO STAMPA ETICHETTA LIBERA CON BARCODE                */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&KPJBU) TYPE(*CHAR) LEN(256)
             DCL        VAR(&USER) TYPE(*CHAR) LEN(10)
             DCL        VAR(&TIPO) TYPE(*CHAR) LEN(10)
             DCL        VAR(&CODA) TYPE(*CHAR) LEN(10)
             DCL        VAR(&HOLD) TYPE(*CHAR) LEN(4)
             DCL        VAR(&SOC) TYPE(*CHAR) LEN(3)
             CHGVAR     VAR(&KPJBU) VALUE(%SST(&KPJBA 247 256))
             CHGVAR     VAR(&TIPO) VALUE('ETIPIAQRC ')
             CHGVAR     VAR(&SOC) VALUE('ACE')
             OVRPRTF    FILE(ETIDUCQRC) OUTQ(INT16) HOLD(*YES)
 /*_________________________________________________________________*/
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
             OVRPRTF    FILE(ETIPIAQRC) OUTQ(&CODA) HOLD(&HOLD) +
                          SAVE(*NO)
 /**/
NOSELE:
             CHGVAR     VAR(%SST(&KPJBA 247 256)) VALUE(&KPJBU)
 /*_________________________________________________________________*/
             CALL       §BETW28B PARM(&KPJBA)
 /*_________________________________________________________________*/
/* §§ */
             ENDPGM
