/***************************************************************/
/* CREAZIONE FILE VALORI GIORNALIERI DI MAGAZZINO              */
/***************************************************************/
             PGM        PARM(&KPJBA)
/* §§ */
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
/* §§ */
             CHGVAR     VAR(%SST(&KPJBA 247 3)) VALUE('ACE')
             CALL       PGM(§MCI10) PARM(&KPJBA)
/* §§ */
             ENDPGM
