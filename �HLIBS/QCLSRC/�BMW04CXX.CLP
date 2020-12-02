/***************************************************************/
/* SPEDIZ. FILE CSV BOLLE VENDITA BMW A MAGAZZINIERE           */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&SOC) TYPE(*CHAR) LEN(3)
             ADDLIBLE   LIB(SMTP)
             MONMSG     MSGID(CPF0000)
/* §§ */
             CALL       §BMW04 PARM(&KPJBA)
/* §§ */
             CHGVAR     VAR(&SOC) VALUE(%SST(&KPJBA 247 3))
             IF         COND(&SOC *EQ ('   ')) THEN(GOTO +
                         CMDLBL(FINE))
             IF         COND(&SOC *EQ ('ACE')) THEN(DO)
             SNDM       FROM('notify@acerbis.it') +
                          TO(('davide.b@acerbis.it')) +
                          FILE(XEXCEL/MAILVUOTO) SUBJECT('DdT x +
                          Supplyon - BMW') +
                          ATTACHMENT('/QDLS/SMEVAR/SUPPLYON.CSV') +
                          REPLYTO('mauro.n@acerbis.it') +
                          SMTPHOST(MAIL.ACERBIS.IT)
                          ENDDO
             IF         COND(&SOC *EQ ('ACR')) THEN(DO)
             SNDM       FROM('notify@acerbis.it') +
                          TO(('anna.p@acerbis.it' *N *CC) +
                          ('jiri.p@acerbis.it' *N *CC) +
                          ('tomas.snizek@acerbis.it')) +
                          FILE(XEXCEL/MAILVUOTO) SUBJECT('DdT x +
                          Supplyon - BMW') +
                          ATTACHMENT('/QDLS/SMEVAR/SUPPLACR.CSV') +
                          SMTPHOST(MAIL.ACERBIS.IT)
                          ENDDO
FINE:
             RMVLIBLE   LIB(SMTP)
             MONMSG     MSGID(CPF0000)
             ENDPGM
