/***************************************************************/
/* STAMPA MAGAZZINO NON MOSSO NEW                              */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             CLRPFM     FILE(NOMOVINGXX)
             CALL       §MCH30XXN PARM(&KPJBA)
/* §§ */
             ENDPGM
