/***************************************************************/
/* RICHIAMO PGM STAMPA ETICHETTE ------------------------------*/
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&USER) TYPE(*CHAR) LEN(10)
             IF         COND(%SST(&KPJBA 500 1) *EQ ('4')) +
                        THEN(OVRPRTF FILE(QSYSLAB1) TOFILE(QSYSLAB4))
             IF         COND(%SST(&KPJBA 500 1) *EQ ('1')) +
                        THEN(OVRPRTF FILE(QSYSLAB1) TOFILE(QSYSLAB1))
/* §§ */
                        OVRPRTF FILE(QSYSLAB1) OUTQ(INT06)
/* §§ */
             RTVJOBA    USER(&USER)
             IF         COND(&USER  *EQ ('TSEREPLAST')) +
                        THEN(OVRPRTF FILE(QSYSLAB1) TOFILE(ETICHETTE))
             IF         COND(&USER  *EQ ('TSEREPLAST')) +
                        THEN(OVRPRTF FILE(QSYSLAB4) TOFILE(ETICHETTE))
/* §§ */
             IF         COND(&USER *EQ ('TTECNOPLAS')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(PRTTECNOPL))
             IF         COND(&USER *EQ ('TTECNOPLAS')) THEN(OVRPRTF +
                          FILE(QSYSLAB4) OUTQ(PRTTECNOPL))
/* §§ */
             IF         COND(&USER  *EQ ('TASSEMBLYL')) +
                        THEN(OVRPRTF FILE(QSYSLAB1) TOFILE(ETICHETTA))
             IF         COND(&USER  *EQ ('TASSEMBLYL')) +
                        THEN(OVRPRTF FILE(QSYSLAB4) TOFILE(ETICHETTA))
/* §§ */
             IF         COND(&USER  *EQ ('TPLASTITA ')) +
                        THEN(OVRPRTF FILE(QSYSLAB1) TOFILE(PRTPLASTIT))
             IF         COND(&USER  *EQ ('TPLASTITA ')) +
                        THEN(OVRPRTF FILE(QSYSLAB4) TOFILE(PRTPLASTIT))
/* §§ */
             IF         COND(&USER *EQ ('CUNIG     ')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(INT03) HOLD(*YES))
             IF         COND(&USER *EQ ('CUNIG     ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) OUTQ(INT03) HOLD(*YES))
             IF         COND(&USER *EQ ('CUNIG     ')) THEN(OVRPRTF +
                          FILE(QSYSLAB4) OUTQ(INT03) HOLD(*YES))
/* §§ */
             IF         COND(&USER *EQ ('SALVIG    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(INT03) HOLD(*YES))
             IF         COND(&USER *EQ ('SALVIG    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) OUTQ(INT03) HOLD(*YES))
             IF         COND(&USER *EQ ('SALVIG    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB4) OUTQ(INT03) HOLD(*YES))
/* §§ */
             IF         COND(&USER *EQ ('AZZOLAG   ')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(INT03) HOLD(*YES))
             IF         COND(&USER *EQ ('AZZOLAG   ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) OUTQ(INT03) HOLD(*YES))
             IF         COND(&USER *EQ ('AZZOLAG   ')) THEN(OVRPRTF +
                          FILE(QSYSLAB4) OUTQ(INT03) HOLD(*YES))
/* §§ */
             IF         COND(&USER *EQ ('NEGRONIM  ')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(INT05) HOLD(*YES))
             IF         COND(&USER *EQ ('NEGRONIM  ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) OUTQ(INT05) HOLD(*YES))
             IF         COND(&USER *EQ ('NEGRONIM  ')) THEN(OVRPRTF +
                          FILE(QSYSLAB4) OUTQ(INT05) HOLD(*YES))
/* §§ */
             IF         COND(&USER *EQ ('BELOTTIB  ')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(INT02))
             IF         COND(&USER *EQ ('BELOTTIB  ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) OUTQ(INT02))
             IF         COND(&USER *EQ ('BELOTTIB  ')) THEN(OVRPRTF +
                          FILE(QSYSLAB4) OUTQ(INT02))
/* §§ */
             IF         COND(&USER *EQ ('GAMBAF    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(INT05) HOLD(*YES))
             IF         COND(&USER *EQ ('GAMBAF    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) OUTQ(INT05) HOLD(*YES))
             IF         COND(&USER *EQ ('GAMBAF    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB4) OUTQ(INT05) HOLD(*YES))
/* §§ */
             IF         COND(&USER *EQ ('CORTINOVIM')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(INT06    ) HOLD(*YES))
             IF         COND(&USER *EQ ('CORTINOVIM')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) OUTQ(INT06    ) HOLD(*YES))
             IF         COND(&USER *EQ ('CORTINOVIM')) THEN(OVRPRTF +
                          FILE(QSYSLAB4) OUTQ(INT06    ) HOLD(*YES))
/* §§ */
             IF         COND(&USER *EQ ('GALLIE    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(INT05) HOLD(*YES))
             IF         COND(&USER *EQ ('GALLIE    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) OUTQ(INT05) HOLD(*YES))
             IF         COND(&USER *EQ ('GALLIE    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB4) OUTQ(INT05) HOLD(*YES))
/* §§ */
             IF         COND(&USER *EQ ('TSTIRERIA ')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(INTSTIRERI) HOLD(*YES))
             IF         COND(&USER *EQ ('TSTIRERIA ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) OUTQ(INTSTIRERI) HOLD(*YES))
             IF         COND(&USER *EQ ('TSTIRERIA ')) THEN(OVRPRTF +
                          FILE(QSYSLAB4) OUTQ(INTSTIRERI) HOLD(*YES))
/* §§ */
             IF         COND(&USER *EQ ('ASSEMBLY1 ')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(INT05) HOLD(*YES))
             IF         COND(&USER *EQ ('ASSEMBLY1 ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) OUTQ(INT05) HOLD(*YES))
             IF         COND(&USER *EQ ('ASSEMBLY1 ')) THEN(OVRPRTF +
                          FILE(QSYSLAB4) OUTQ(INT05) HOLD(*YES))
/* §§ */
             IF         COND(&USER *EQ ('GHILARDIC ')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(INT04) HOLD(*YES))
             IF         COND(&USER *EQ ('GHILARDIC ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) OUTQ(INT04) HOLD(*YES))
             IF         COND(&USER *EQ ('GHILARDIC ')) THEN(OVRPRTF +
                          FILE(QSYSLAB4) OUTQ(INT04) HOLD(*YES))
/* §§ */
             IF         COND(&USER *EQ ('PARIETTIS ')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(INT06  ) HOLD(*NO))
             IF         COND(&USER *EQ ('PARIETTIS ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) OUTQ(INT06  ) HOLD(*NO))
             IF         COND(&USER *EQ ('PARIETTIS ')) THEN(OVRPRTF +
                          FILE(QSYSLAB4) OUTQ(INT06  ) HOLD(*NO))
/* §§ */
             IF         COND(&USER *EQ ('GRASSID   ')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(INTCALC73) HOLD(*NO))
             IF         COND(&USER *EQ ('GRASSID   ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) OUTQ(INTCALC73) HOLD(*NO))
             IF         COND(&USER *EQ ('GRASSID   ')) THEN(OVRPRTF +
                          FILE(QSYSLAB4) OUTQ(INTCALC73) HOLD(*NO))
/* §§ */
             IF         COND(&USER *EQ ('ROSSIP    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB1) OUTQ(INTUSA   ) HOLD(*NO))
             IF         COND(&USER *EQ ('ROSSIP    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) OUTQ(INTUSA   ) HOLD(*NO))
             IF         COND(&USER *EQ ('ROSSIP    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB4) OUTQ(INTUSA   ) HOLD(*NO))
 /**/
             CALL       §BETDX PARM(&KPJBA)
/* §§ */
             ENDPGM
