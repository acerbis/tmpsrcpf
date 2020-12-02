/***************************************************************/
/* STAMPA MAGAZZINO LENTA ROTAZIONE NEW                        */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             CLRPFM     FILE(SLMOVINGXX)
             CALL       §MCH31XXN PARM(&KPJBA)
/* §§ */
             ENDPGM
