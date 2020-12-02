/***************************************************************/
/* PULIZIA FILE PRESTI                                         */
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
/* §§ */
             CLRPFM     FILE(PRESTO) MBR(&FIL1)
             MONMSG     MSGID(CPF0000)
/* §§ */
             CALL       £PREST PARM(&KPJBA)
             ENDPGM
