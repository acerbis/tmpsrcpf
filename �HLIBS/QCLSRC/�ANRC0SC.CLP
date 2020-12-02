/***************************************************************/
/* CREAZIONE MESSAGGIO DA RESPONSABILE CONTROLLO               */
/*                      A RESPONSABILE UFFICIO COMMERCIALE     */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&COMME) TYPE(*CHAR) LEN(40)
             DCL        VAR(&AMMIN) TYPE(*CHAR) LEN(40)
             DCL        VAR(&SOC) TYPE(*CHAR) LEN(3)
             DCL        VAR(&SUB) TYPE(*CHAR) LEN(62)
             DCL        VAR(&SUB1) TYPE(*CHAR) LEN(62)
             DCL        VAR(&JOB) TYPE(*CHAR) LEN(10)
/* §§ */
             ADDLIBLE   LIB(SMTP)
             MONMSG     MSGID(CPF0000)
/* §§ */
             CHGVAR     VAR(&AMMIN) VALUE(%SST(&KPJBA 247 40))
             CHGVAR     VAR(&COMME) VALUE(%SST(&KPJBA 287 40))
             CHGVAR     VAR(&SOC) VALUE(%SST(&KPJBA 327 3))
             CHGVAR     VAR(&SUB) VALUE(%SST(&KPJBA 330 62))
/*           CHGVAR     VAR(&SUB) VALUE(' - Clienti bloccati +      */
/*                        dalla procedura notturna di controllo ')  */
             CHGVAR     VAR(&SUB1) VALUE(&SOC *CAT &SUB)
/* §§ */
             SNDM       FROM(&AMMIN) TO((&COMME *N *TO)) +
                          FILE(XEXCEL/PREV01) +
                          SUBJECT(&SUB1) SMTPHOST(MAIL.ACERBIS.IT)
             MONMSG     MSGID(CPF0000)
/* §§ */
             CLRPFM     FILE(PREV01)
             RMVLIBLE   LIB(SMTP)
             MONMSG     MSGID(CPF0000)
/* §§ */
             ENDPGM
