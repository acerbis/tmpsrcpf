/*********************************************************************/
/* INVIO ORDINE AD AGENTE E/O CLIENTE E RESPONSABILI COMMERCIALI     */
/*********************************************************************/
/* §§ */
             PGM        PARM(&KPJBA &EMAIL &NUMORD &OCO168)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&EMAIL) TYPE(*CHAR) LEN(150)
             DCL        VAR(&NUMORD) TYPE(*CHAR) LEN(10)
             DCL        VAR(&OCO168) TYPE(*CHAR) LEN(64)
             OVRPRTF    FILE(OCO168PDUP) OUTQ(PDFFAT) HOLD(*NO) +
                          SAVE(*NO) USRDTA(&NUMORD) +
                          USRDFNDTA(&EMAIL) OVRSCOPE(*JOB)
/* §§ */
             STRPRTWTR  DEV(PDFFAT )
             MONMSG     MSGID(CPF0000)
/* §§ */
             CHGVAR     VAR(%SST(&KPJBA 247 64)) VALUE(&OCO168)
             CALL       OCO168RDUP PARM(&KPJBA)
/* §§ */
             DLTOVR     FILE(*ALL) LVL(*JOB)
/* §§ */
             ENDPGM
