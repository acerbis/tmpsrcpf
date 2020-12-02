/***************************************************************/
/* CREA FILE CLB00F/DHLCLIT_AC X STAMPA ETICHETTE DHL          */
/***************************************************************/
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             ADDLIBLE   LIB(DHLCLIT_AC)
             MONMSG     MSGID(CPF0000)
             CALL       PGM(§DHL00) PARM(&KPJBA)
             ENDPGM
