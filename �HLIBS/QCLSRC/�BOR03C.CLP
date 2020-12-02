/***************************************************************/
/* PULIZIA FILE §BORE0                                         */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
/* §§ */
             CLRPFM     FILE(XEXCEL/§BORE0)
             MONMSG     MSGID(CPF0000)
             CALL       §BOR03 PARM(&KPJBA)
/* §§ */
             ENDPGM
