/***************************************************************/
/* GESTIONE PACKING X PALLET BMW CREAZ. MEMBRO X ACR           */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&JOB) TYPE(*CHAR) LEN(10)
             DCL        VAR(&USER) TYPE(*CHAR) LEN(10)
             DCL        VAR(&FIL1) TYPE(*CHAR) LEN(8)
/*           CALL       PGM(§SOC00) PARM(&KPJBA)                 */
             CHGVAR     VAR(&FIL1) VALUE(%SST(&KPJBA 247 10))
             IF         COND(%SST(&KPJBA 247 3) *EQ ('ACE')) +
                        THEN(GOTO CMDLBL(NOSELE))
                        GOTO CMDLBL(NOSELE)
 /**/
/* §§ */
             RTVJOBA    JOB(&JOB) USER(&USER)
             CHGVAR     VAR(&FIL1) VALUE(&USER)
/*===================================================================*/
/*  Controllo che il membro esista già                               */
/*  altrimenti viene creato                                          */
/*===================================================================*/
             CHKOBJ     OBJ(§PBMW00F) OBJTYPE(*FILE) MBR(&FIL1)
             MONMSG     MSGID(CPF9815) EXEC(DO)
             ADDPFM     FILE(§PBMW00F) MBR(&FIL1) TEXT(&USER)
             MONMSG     MSGID(CPF0000)
             ENDDO
/* §§ */
             OVRDBF     FILE(§PBMW00F) TOFILE(§PBMW00F) MBR(&FIL1) +
                          SHARE(*YES)
/* §§ */
NOSELE:
             CALL       PGM(§BMW07) PARM(&KPJBA)
             ENDPGM
