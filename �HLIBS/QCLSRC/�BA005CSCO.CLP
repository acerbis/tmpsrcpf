/***************************************************************/
/* AUTOMATIZZAZIONE BLOCCO ALLE VENDITE                        */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             OVRPRTF    FILE(PRT19815) OUTQ(BLOCVEND) HOLD(*YES)
/* LINEA 002 MARCHIO 10 */
             CHGVAR     VAR(%SST(&KPJBA 247 8)) VALUE(' *100022')
             CALL       PGM(§BA005) PARM(&KPJBA)
/* LINEA 002 MARCHIO 30 */
             CHGVAR     VAR(%SST(&KPJBA 247 8)) VALUE(' *300022')
             CALL       PGM(§BA005) PARM(&KPJBA)
/* LINEA 003 MARCHIO 10 */
             CHGVAR     VAR(%SST(&KPJBA 247 8)) VALUE(' *100032')
             CALL       PGM(§BA005) PARM(&KPJBA)
/* LINEA 003 MARCHIO 30 */
             CHGVAR     VAR(%SST(&KPJBA 247 8)) VALUE(' *300032')
             CALL       PGM(§BA005) PARM(&KPJBA)
/* §§ */
             CALL       PGM(§BOR70) PARM(&KPJBA)
             ENDPGM
