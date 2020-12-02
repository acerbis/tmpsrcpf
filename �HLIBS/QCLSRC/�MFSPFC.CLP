/***************************************************************/
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
/* §§ */
             OVRDBF     FILE(MFSPF00F) TOFILE(MAURO/MFSPF00F) +
                          SHARE(*YES)
             OVRDBF     FILE(MFSPF01L) TOFILE(PJXI1D3ACE/MFSPF01L) +
                          SHARE(*YES)
             CALL       PGM(£MFSPF) PARM(&KPJBA)
             ENDPGM
