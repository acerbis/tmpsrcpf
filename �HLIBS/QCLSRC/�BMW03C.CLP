/*===================================================================*/
/*  CREA FILE PDF DA STAMPA RAPPORTO IMBALLI BMW                     */
/*===================================================================*/
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&EMAIL) TYPE(*CHAR) LEN(40)
             DCL        VAR(&SAV) TYPE(*CHAR) LEN(40)
/* §§ */
             CHGVAR     VAR(&SAV) VALUE(%SST(&KPJBA 247 40))
             CALL       §§EMAIL PARM(&KPJBA)
/* §§ */
             CHGVAR     VAR(&EMAIL) VALUE(%SST(&KPJBA 247 40))
             OVRPRTF    FILE(BMWSP6) OUTQ(PDFMAIL) +
                          USRDFNDTA(&EMAIL)
             CHGVAR     VAR(%SST(&KPJBA 247 40)) VALUE(&SAV)
             CALL       §BMW03 PARM(&KPJBA)
             STRPRTWTR  DEV(PDFMAIL)
             MONMSG     MSGID(CPF0000)
/* §§ */
             ENDPGM
