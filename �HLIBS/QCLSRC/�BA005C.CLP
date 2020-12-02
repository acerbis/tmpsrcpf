/***************************************************************/
/* AUTOMATIZZAZIONE BLOCCO ALLE VENDITE                        */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             OVRPRTF    FILE(PRT19815) OUTQ(BLOCVEND) HOLD(*YES)
/* LINEA 001 MARCHIO 10 */
             CHGVAR     VAR(%SST(&KPJBA 247 8)) VALUE(' *100012')
             CALL       PGM(§BA005) PARM(&KPJBA)
/*  "KIT"    LINEA 001 MARCHIO 10 FAMIGLIA 048  */
             CHGVAR     VAR(%SST(&KPJBA 247 11)) VALUE(' *100012048')
             CALL       PGM(§BA025) PARM(&KPJBA)
/* LINEA 001 MARCHIO 30 */
             CHGVAR     VAR(%SST(&KPJBA 247 8)) VALUE(' *300012')
             CALL       PGM(§BA005) PARM(&KPJBA)
/* LINEA 001 MARCHIO 50 */
             CHGVAR     VAR(%SST(&KPJBA 247 8)) VALUE(' *500012')
             CALL       PGM(§BA005) PARM(&KPJBA)
/* LINEA 001 MARCHIO 60 */
             CHGVAR     VAR(%SST(&KPJBA 247 8)) VALUE(' *600012')
             CALL       PGM(§BA005) PARM(&KPJBA)
/* LINEA 005 MARCHIO 10 */
             CHGVAR     VAR(%SST(&KPJBA 247 8)) VALUE(' *100052')
             CALL       PGM(§BA005) PARM(&KPJBA)
/* LINEA 006 MARCHIO 10                                             */
/*           CHGVAR     VAR(%SST(&KPJBA 247 8)) VALUE(' *100062')   */
/*           CALL       PGM(§BA005) PARM(&KPJBA)                    */
/* LINEA 006 MARCHIO 40                                             */
/*           CHGVAR     VAR(%SST(&KPJBA 247 8)) VALUE(' *400062')   */
/*           CALL       PGM(§BA005) PARM(&KPJBA)                    */
/* LINEA 006 MARCHIO 70                                             */
/*           CHGVAR     VAR(%SST(&KPJBA 247 8)) VALUE(' *700062')   */
/*           CALL       PGM(§BA005) PARM(&KPJBA)                    */
/* §§ */
             CALL       PGM(§BOR70) PARM(&KPJBA)
             CALL       PGM(§BOR70CON) PARM(&KPJBA)
             ENDPGM
