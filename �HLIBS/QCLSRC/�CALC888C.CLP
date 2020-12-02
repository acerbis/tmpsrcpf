/***************************************************************/
/* STAMPA SEGNALAZIONE STATO CRITICO EVADIBILITÀ ARTICOLO      */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
/* §§ */
             CHGVAR     VAR(%SST(&KPJBA 259 2)) VALUE('73')
             CHGVAR     VAR(%SST(&KPJBA 265 3)) VALUE('005')
             CHGVAR     VAR(%SST(&KPJBA 274 6)) VALUE('999100')
             CHGVAR     VAR(%SST(&KPJBA 310 9)) VALUE('ACE  0000')
             CALL       §VSP64 PARM(&KPJBA)
/* §§ */
             CALL       §CALC888 PARM(&KPJBA)
             ENDPGM
