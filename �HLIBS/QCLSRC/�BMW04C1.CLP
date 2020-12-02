/***************************************************************/
/* SPEDIZ. FILE CSV BOLLE VENDITA BMW A MAGAZZINIERE           */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             ADDLIBLE   LIB(SMTP)
             MONMSG     MSGID(CPF0000)
/*                        TO(('davide.b@acerbis.it')) +         */
/* §§ */
             SNDM       FROM('notify@acerbis.it') +
                          TO(('mauro.n@acerbis.it')) +
                          FILE(XEXCEL/MAILVUOTO) SUBJECT('DdT x +
                          Supplyon - BMW') +
                          ATTACHMENT('/QDLS/SMEVAR/SUPPLYON.CSV') +
                          REPLYTO('mauro.n@acerbis.it') +
                          SMTPHOST(MAIL.ACERBIS.IT)
FINE:
             RMVLIBLE   LIB(SMTP)
             MONMSG     MSGID(CPF0000)
             ENDPGM
