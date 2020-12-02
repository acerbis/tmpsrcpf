/***************************************************************/
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
/* §§ */
             OVRDBF     FILE(ISANI00F) TOFILE(PJXI1D3TST/ISANI00F) +
                          SHARE(*YES)
             OVRDBF     FILE(ISANI01L) TOFILE(PJXI1D3ACE/ISANI01L) +
                          SHARE(*YES)
             CALL       PGM(£ISANI) PARM(&KPJBA)
             ENDPGM
