/***************************************************************/
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
/* §§ */
             OVRDBF     FILE(OCLIV02L) TOFILE(PJXI1D3TST/OCLIV02L) +
                          SHARE(*YES)
             OVRDBF     FILE(OCLIV01L) TOFILE(PJXI1D3ACE/OCLIV01L) +
                          SHARE(*YES)
             CALL       PGM(£OCLI3) PARM(&KPJBA)
             ENDPGM
