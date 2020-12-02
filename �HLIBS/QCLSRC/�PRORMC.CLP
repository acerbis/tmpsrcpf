/***************************************************************/
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
/* §§ */
             OVRDBF     FILE(PRORM00F) TOFILE(MAURO1/PRORM00F1) +
                          SHARE(*YES)
             OVRDBF     FILE(PRORM01L) TOFILE(PJXI1D3ACE/PRORM01L) +
                          SHARE(*YES)
             CALL       PGM(£PRORM) PARM(&KPJBA)
             ENDPGM
