/***************************************************************/
/***************************************************************/
/*  AGGIUNGERE UNDEL IN LISTA LIBRERIE    */
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&NUM) TYPE(*DEC) LEN(7 0)
             CHGVAR     VAR(&NUM) VALUE(0000000)
LOOP:
/* §§ */
             CHGVAR     VAR(&NUM) VALUE(&NUM + 1)
             UNDEL      FILE(MAURO1/OAMOA00F) RCDNBR(&NUM) +
                          ACTION(*UPD)
             MONMSG     MSGID(TOL0001)
             IF         COND(&NUM *LT (0590000)) THEN(GOTO +
                          CMDLBL(LOOP))
             ENDPGM
