/***************************************************************/
/* GENERAZIONE NOTTURNA DISTINTE DI MAGAZZINO                  */
/***************************************************************/
             PGM        PARM(&KPJBA)
/* §§ */
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             RUNSQL     SQL('DELETE FROM MFLEG00F') COMMIT(*NONE) /* +
                          pulisci file */
             MONMSG     MSGID(CPF0000)
/* §§ */
             CHGVAR     VAR(%SST(&KPJBA 247 3)) VALUE('ACE')
             CALL       PGM(§MDIB0) PARM(&KPJBA)
             CHGVAR     VAR(%SST(&KPJBA 247 3)) VALUE('ACR')
             CALL       PGM(§MDIB0) PARM(&KPJBA)
/* §§ */
             ENDPGM
