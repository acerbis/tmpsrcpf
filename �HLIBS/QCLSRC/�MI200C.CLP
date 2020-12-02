/***************************************************************/
/* STAMPA DISTINTA COLLO INVENTARIO                            */
/***************************************************************/
             PGM        PARM(&KPJBA)
/* §§ */
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             OVRPRTF    FILE(PRT19815) OUTQ(PRTAPF07) COPIES(1)
/* §§ */
             CALL       PGM(§MI200) PARM(&KPJBA)
/* §§ */
             ENDPGM
