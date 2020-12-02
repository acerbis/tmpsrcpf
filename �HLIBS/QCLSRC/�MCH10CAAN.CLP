/***************************************************************/
/* STAMPA MAGAZZINO NON MOSSO NEW                              */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
/* §§ */
             CLRPFM     FILE(NOMOVINGAA)
             MONMSG     MSGID(CPF0000)
             CALL       §MCH10AAN PARM(&KPJBA)
/* §§ */
             ENDPGM
