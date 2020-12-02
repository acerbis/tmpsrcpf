/***************************************************************/
/* RICHIAMO PGM STAMPA ETICHETTE ------------------------------*/
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&USER) TYPE(*CHAR) LEN(10)
             IF         COND(%SST(&KPJBA 500 1) *EQ ('4')) +
                        THEN(OVRPRTF FILE(QSYSLAB2) TOFILE(QSYSLAB5))
             IF         COND(%SST(&KPJBA 500 1) *EQ ('1')) +
                        THEN(OVRPRTF FILE(QSYSLAB2) TOFILE(QSYSLAB2))
             RTVJOBA    USER(&USER)
             IF         COND(&USER  *EQ ('TSEREPLAST')) +
                        THEN(OVRPRTF FILE(QSYSLAB2) TOFILE(ETICHETTE))
             IF         COND(&USER  *EQ ('TSEREPLAST')) +
                        THEN(OVRPRTF FILE(QSYSLAB5) TOFILE(ETICHETTE))
/* §§ */
             IF         COND(&USER *EQ ('TTECNOPLAS')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) DEV(PRTTECNOPL))
             IF         COND(&USER *EQ ('TTECNOPLAS')) THEN(OVRPRTF +
                          FILE(QSYSLAB5) DEV(PRTTECNOPL))
/* §§ */
             IF         COND(&USER  *EQ ('TASSEMBLYL')) +
                        THEN(OVRPRTF FILE(QSYSLAB2) TOFILE(ETICHETTA))
             IF         COND(&USER  *EQ ('TASSEMBLYL')) +
                        THEN(OVRPRTF FILE(QSYSLAB5) TOFILE(ETICHETTA))
             IF         COND(&USER  *EQ ('TPLASTITA ')) +
                        THEN(OVRPRTF FILE(QSYSLAB2) TOFILE(PRTPLASTIT))
             IF         COND(&USER  *EQ ('TPLASTITA ')) +
                        THEN(OVRPRTF FILE(QSYSLAB5) TOFILE(PRTPLASTIT))
             IF         COND(&USER *EQ ('CUNIG     ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) DEV(INT03))
             IF         COND(&USER *EQ ('CUNIG     ')) THEN(OVRPRTF +
                          FILE(QSYSLAB5) DEV(INT03))
             IF         COND(&USER *EQ ('GAMBAF    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) DEV(INT05))
             IF         COND(&USER *EQ ('GAMBAF    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB5) DEV(INT05))
             IF         COND(&USER *EQ ('PARIETTIS ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) DEV(INT06  ))
             IF         COND(&USER *EQ ('PARIETTIS ')) THEN(OVRPRTF +
                          FILE(QSYSLAB5) DEV(INT06  ))
             IF         COND(&USER *EQ ('CORTINOVIM')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) DEV(INT06    ))
             IF         COND(&USER *EQ ('CORTINOVIM')) THEN(OVRPRTF +
                          FILE(QSYSLAB5) DEV(INT06    ))
             IF         COND(&USER *EQ ('GALLIE    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) DEV(INT05))
             IF         COND(&USER *EQ ('GALLIE    ')) THEN(OVRPRTF +
                          FILE(QSYSLAB5) DEV(INT05))
             IF         COND(&USER *EQ ('TSTIRERIA ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) DEV(INTSTIRERI))
             IF         COND(&USER *EQ ('TSTIRERIA ')) THEN(OVRPRTF +
                          FILE(QSYSLAB5) DEV(INTSTIRERI))
             IF         COND(&USER *EQ ('ASSEMBLY1 ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) DEV(INT05))
             IF         COND(&USER *EQ ('ASSEMBLY1 ')) THEN(OVRPRTF +
                          FILE(QSYSLAB5) DEV(INT05))
             IF         COND(&USER *EQ ('GHILARDIC ')) THEN(OVRPRTF +
                          FILE(QSYSLAB2) DEV(INT04))
             IF         COND(&USER *EQ ('GHILARDIC ')) THEN(OVRPRTF +
                          FILE(QSYSLAB5) DEV(INT04))
 /**/
             CALL       §BETDX PARM(&KPJBA)
/* §§ */
             ENDPGM
