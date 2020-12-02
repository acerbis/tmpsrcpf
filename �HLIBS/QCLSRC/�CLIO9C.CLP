/***********************************************************/
/* INVIO MESSAGGIO ERRORE                                  */
/*                  A RESPONSABILI UFFICIO COMMERCIALE     */
/***********************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&COMME) TYPE(*CHAR) LEN(50)
             DCL        VAR(&SOC) TYPE(*CHAR) LEN(3)
             DCL        VAR(&SUB) TYPE(*CHAR) LEN(50)
             DCL        VAR(&SUB1) TYPE(*CHAR) LEN(55)
             DCL        VAR(&NOTE) TYPE(*CHAR) LEN(80)
/* §§ */
/*           CHGVAR     VAR(&COMME) VALUE('mauro.n@acerbis.it     ') */
             CHGVAR     VAR(&COMME) VALUE(%SST(&KPJBA 247 50))
/*           CHGVAR     VAR(&SOC) VALUE('ACE')                       */
             CHGVAR     VAR(&SOC) VALUE(%SST(&KPJBA 297 3))
             CHGVAR     VAR(&SUB) VALUE(' - Errori in fase di importa+
                        zione ordini clienti ')
/*           CHGVAR     VAR(&NOTE) VALUE('Ordine bloccato x cliente 0+  */
/*                      0000000...lanciare proc. OT02 x controllo....') */
             CHGVAR     VAR(&NOTE) VALUE(%SST(&KPJBA 300 80))
             CHGVAR     VAR(&SUB1) VALUE(&SOC *CAT &SUB)
/* §§ */
/*           SNDM       FROM(&AMMIN) TO((&COMME *N *TO)) +          */
/*                        FILE(XEXCEL/PREV01) +                     */
/*                        SUBJECT(&SUB1) SMTPHOST(MAIL.ACERBIS.IT)  */
             SNDSMTPEMM RCP((&COMME)) SUBJECT(&SUB1) +
                          NOTE(&NOTE)
             MONMSG     MSGID(CPF0000)
/* §§ */
             ENDPGM
