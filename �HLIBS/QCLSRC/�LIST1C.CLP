/*********************************************************************/
/* CREAZIONE FILE LISTINO                                            */
/*********************************************************************/
/* §§ */
             PGM        PARM(&SOC &LIS &VAL &KSC)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&LIB) TYPE(*CHAR) LEN(10)
             DCL        VAR(&SOC) TYPE(*CHAR) LEN(3)
             DCL        VAR(&LIS) TYPE(*CHAR) LEN(2)
             DCL        VAR(&VAL) TYPE(*CHAR) LEN(4)
             DCL        VAR(&KSC) TYPE(*CHAR) LEN(8)
             CHGVAR     VAR(&LIB) VALUE('HDAT      ')
             DLTF       FILE(QTEMP/§LIST00F)
             MONMSG     MSGID(CPF0000)
             ADDLIBLE   LIB(HOBJ)
             MONMSG     MSGID(CPF0000)
             ADDLIBLE   LIB(HDAT)
             MONMSG     MSGID(CPF0000)
             ADDLIBLE   LIB(PAXI1O3)
             MONMSG     MSGID(CPF0000)
             ADDLIBLE   LIB(PJGI1O3)
             MONMSG     MSGID(CPF0000)
             ADDLIBLE   LIB(PJCI1O3)
             MONMSG     MSGID(CPF0000)
             ADDLIBLE   LIB(PJAI1O3)
             MONMSG     MSGID(CPF0000)
             ADDLIBLE   LIB(PJDDVI1O3)
             MONMSG     MSGID(CPF0000)
             ADDLIBLE   LIB(PJDDVI1D3)
             MONMSG     MSGID(CPF0000)
             ADDLIBLE   LIB(PJXI1O8ACE)
             MONMSG     MSGID(CPF0000)
             ADDLIBLE   LIB(PJXI1D3ACE)
             MONMSG     MSGID(CPF0000)
             ADDLIBLE   LIB(QTEMP)
             MONMSG     MSGID(CPF0000)
/*           RTVMBRD    FILE(§LIST00F) RTNLIB(&LIB)    */
             CRTDUPOBJ  OBJ(§LIST00F) FROMLIB(&LIB) OBJTYPE(*FILE) +
                          TOLIB(QTEMP) DATA(*NO)
             MONMSG     MSGID(CPF0000)
             CALL       PGM(§LIST1) PARM(&KPJBA &SOC &LIS &VAL &KSC)
             MONMSG     MSGID(CPF0000)
/* §§ */
             ENDPGM
