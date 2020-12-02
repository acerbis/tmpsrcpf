/***************************************************************/
/* CREAZIONE MESSAGGIO                                         */
/*                      A RESPONSABILI UFFICIO COMMERCIALE     */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&COMME) TYPE(*CHAR) LEN(50)
             DCL        VAR(&SUB) TYPE(*CHAR) LEN(50)
             DCL        VAR(&NOTE) TYPE(*CHAR) LEN(80)
             CHGVAR     VAR(&COMME) VALUE(%SST(&KPJBA 247 50))
             CHGVAR     VAR(&SUB) VALUE(' - Errori in fase di importa+
                        zione ordini clienti ')
             CHGVAR     VAR(&NOTE) VALUE(%SST(&KPJBA 300 80))
             SNDSMTPEMM RCP((&COMME)) SUBJECT(&SUB) +
                          NOTE(&NOTE)
             MONMSG     MSGID(CPF0000)

/* §§ */
             ENDPGM
