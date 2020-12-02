/***************************************************************/
/* CREAZIONE MEMBRO SCHENAR                                    */
/*                      DEL FILE PREV01                        */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
/* §§ */
             CPYF       FROMFILE(XEXCEL/PREV01) +
                          TOFILE(XEXCEL/PREV01) FROMMBR(PREV01) +
                          TOMBR(SCHENAR) MBROPT(*ADD)
             MONMSG     MSGID(CPF0000)
/* §§ */
             ENDPGM
