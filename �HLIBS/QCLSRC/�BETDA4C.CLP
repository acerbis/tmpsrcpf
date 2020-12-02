/*===================================================================*/
/*  STAMPA ETICHETTE MODULO A4  SU FILE PDF                          */
/*===================================================================*/
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&EMAIL) TYPE(*CHAR) LEN(40)
             DCL        VAR(&SAV) TYPE(*CHAR) LEN(256)
/* §§ */
             CHGVAR     VAR(&SAV) VALUE(%SST(&KPJBA 247 256))
             CALL       §§EMAIL PARM(&KPJBA)
/* §§ */
             CHGVAR     VAR(&EMAIL) VALUE(%SST(&KPJBA 247 40))
             OVRPRTF    FILE(§BETDA4P) OUTQ(PDFMAIL) HOLD(*NO) +
                          USRDFNDTA(&EMAIL)
             CHGVAR     VAR(%SST(&KPJBA 247 256)) VALUE(&SAV)
             CALL       §BETDA4 PARM(&KPJBA)
             STRPRTWTR  DEV(PDFMAIL)
             MONMSG     MSGID(CPF0000)
/* §§ */
             ENDPGM
