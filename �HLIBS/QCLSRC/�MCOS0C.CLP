/***************************************************************/
/* GENERAZIONE NOTTURNA DATI DI PRODUZIONE E SCARTO            */
/***************************************************************/
             PGM        PARM(&KPJBA)
/* §§ */
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             CHGVAR     VAR(%SST(&KPJBA 247 3)) VALUE('ACE')
/* §§ */
/*           CALCOLO MENSILE QTA PRODOTTA                      */
             CALL       PGM(§MCOSA) PARM(&KPJBA)
/*           CALCOLO MENSILE  SCARTI PRODUZIONE                */
             CHGVAR     VAR(%SST(&KPJBA 247 3)) VALUE('ACE')
             CALL       PGM(§MCOSB) PARM(&KPJBA)
/* §§ */
             CHGVAR     VAR(%SST(&KPJBA 247 3)) VALUE('ACR')
/* §§ */
/*           CALCOLO MENSILE QTA PRODOTTA                      */
             CALL       PGM(§MCOSA) PARM(&KPJBA)
/*           CALCOLO MENSILE  SCARTI PRODUZIONE                */
             CHGVAR     VAR(%SST(&KPJBA 247 3)) VALUE('ACR')
             CALL       PGM(§MCOSB) PARM(&KPJBA)
/* §§ */
             ENDPGM
