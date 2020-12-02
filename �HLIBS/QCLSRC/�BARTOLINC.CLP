/***************************************************************/
/* CREAZIONE FILE SPEDIZIONI X §BARTOLINI                      */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
/* §§ */
             ADDLIBLE   LIB(SMTP)
             MONMSG     MSGID(CPF0000)
             CPYTOIMPF  FROMFILE(HDAT/§BARTOLINI) +
                          TOSTMF('/TMP/BAR.CSV') +
                          MBROPT(*REPLACE) STMFCCSID(*PCASCII) +
                          RCDDLM(*CRLF) STRDLM(*NONE) +
                          RMVBLANK(*BOTH) FLDDLM(';') +
                          DECPNT(*COMMA) ADDCOLNAM(*SQL)
             CHGAUT     OBJ('/TMP/BAR.CSV') +
                          USER(*PUBLIC) +
                          DTAAUT(*RWX) OBJAUT(*ALL)
/* §§ */
             SNDM       FROM('mauro.n@acerbis.it') +
                          TO(('fabio.a@acerbis.it' *N *TO)) +
                          FILE(XEXCEL/MAILVUOTO) SUBJECT(ACERBIS) +
                          ATTACHMENT('/TMP/BAR.CSV') +
                          SMTPHOST(MAIL.ACERBIS.IT)
             RMVLIBLE   LIB(SMTP)
             MONMSG     MSGID(CPF0000)
             CLRPFM     FILE(HDAT/§BARTOLINI)
/* §§ */
             ENDPGM
