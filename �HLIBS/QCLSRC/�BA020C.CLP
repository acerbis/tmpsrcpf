/***************************************************************/
/* MODIFICHE DI MASSA ANAGRAFICO ARTICOLI ..........           */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&JOB) TYPE(*CHAR) LEN(10)
             DCL        VAR(&USER) TYPE(*CHAR) LEN(10)
             DCL        VAR(&FIL1) TYPE(*CHAR) LEN(8)
/* §§ */
             RTVJOBA    JOB(&JOB) USER(&USER)
             CHGVAR     VAR(&FIL1) VALUE(&USER)
/*===================================================================*/
/*  Controllo che il membro esista già                               */
/*  altrimenti viene creato                                          */
/*===================================================================*/
             CHKOBJ     OBJ(HDAT/§BA009) OBJTYPE(*FILE) MBR(&FIL1)
             MONMSG     MSGID(CPF9815) EXEC(DO)
             ADDPFM     FILE(HDAT/§BA009) MBR(&FIL1) TEXT(&USER)
             MONMSG     MSGID(CPF0000)
             ENDDO
/* §§ */
             CLRPFM     FILE(HDAT/§BA009) MBR(&FIL1)
             MONMSG     MSGID(CPF0000)
             OVRDBF     FILE(§BA009) TOFILE(HDAT/§BA009) +
                          MBR(&FIL1) SHARE(*YES)
/* §§ */
             CALL       §BA020 PARM(&KPJBA)
/* §§ */
             ENDPGM
