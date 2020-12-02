/***************************************************************/
/* RICHIAMO STAMPA ETICHETTA KTM    CON BARCODE                */
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
             CHGVAR     VAR(&TIPO) VALUE('INTERMEC  ')
             CHGVAR     VAR(&SOC) VALUE(%SST(&KPJBA 295 3))
             OVRPRTF    FILE(QSYSLABC) OUTQ(INT16) HOLD(*YES)
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
 /*          IF         COND(&CODA *EQ ('          ')) THEN(GOTO +  */
 /*                      CMDLBL(NOSELE))                            */
 /*          OVRPRTF    FILE(QSYSLABC) OUTQ(&CODA) HOLD(&HOLD) +    */
 /*                       SAVE(*NO)                                 */
 /**/
             OVRPRTF    FILE(QSYSLABC) OUTQ(INT16)
 /**/
             IF         COND(&SOC *EQ ('ACE')) THEN(GOTO +
                         CMDLBL(ACE))
             IF         COND(&SOC *EQ ('ACR')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT05) HOLD(*NO))
             IF         COND(&USER *EQ ('CZFIN01'))    THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT09) HOLD(*NO))
 /*                                           ?????                 */
 /*                                           =====                 */
ACE:
             IF         COND(&USER *EQ ('FINITURA  ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT16  ))
             IF         COND(&USER *EQ ('BELOTTI   ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT17))
             IF         COND(&USER *EQ ('NEGRONIM  ')) THEN(OVRPRTF +
                          FILE(QSYSLABC) OUTQ(INT30) HOLD(*YES))
NOSELE:
             CHGVAR     VAR(%SST(&KPJBA 247 256)) VALUE(&KPJBU)
 /*_________________________________________________________________*/
             CALL       §BETW19 PARM(&KPJBA)
 /*_________________________________________________________________*/
/* §§ */
             ENDPGM
