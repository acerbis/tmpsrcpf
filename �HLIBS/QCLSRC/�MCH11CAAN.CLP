/***************************************************************/
/* STAMPA MAGAZZINO LENTA ROTAZIONE  NEW                       */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
/* §§ */
             CLRPFM     FILE(SLMOVINGAA)
             MONMSG     MSGID(CPF0000)
             CALL       §MCH11AAN PARM(&KPJBA)
/* §§ */
             ENDPGM
