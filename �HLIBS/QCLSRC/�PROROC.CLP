/***************************************************************/
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
/* §§ */
             OVRDBF     FILE(PRORO00F) TOFILE(MAURO1/PRORO00F1) +
                          SHARE(*YES)
             OVRDBF     FILE(PRORO01L) TOFILE(PJXI1D3ACE/PRORO01L) +
                          SHARE(*YES)
             CALL       PGM(£PRORO) PARM(&KPJBA)
             ENDPGM
