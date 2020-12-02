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
                          TOSTMF('/HOME/ODBC/EXPORT.CSV/BAR.TXT') +
                          MBROPT(*REPLACE) STMFCCSID(*PCASCII) +
                          RCDDLM(*CRLF) STRDLM(*NONE) +
                          RMVBLANK(*BOTH) FLDDLM(';') +
                          DECPNT(*COMMA) ADDCOLNAM(*SQL)
             CHGAUT     OBJ('/HOME/ODBC/EXPORT.CSV/BAR.TXT') +
                          USER(*PUBLIC) +
                          DTAAUT(*RWX) OBJAUT(*ALL)
/* §§ */
             SNDM       FROM('mauro.n@acerbis.it') +
                          TO(('mauro.n@acerbis.it' *N *TO)) +
                          FILE(XEXCEL/MAILVUOTO) SUBJECT(ACERBIS) +
                          ATTACHMENT('/HOME/ODBC/EXPORT.CSV/BAR.TXT') +
                          SMTPHOST(MAIL.ACERBIS.IT)
             RMVLIBLE   LIB(SMTP)
             MONMSG     MSGID(CPF0000)
             CLRPFM     FILE(HDAT/§BARTOLINI)
/* §§ */
             ENDPGM
