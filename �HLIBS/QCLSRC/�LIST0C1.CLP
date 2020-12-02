/*********************************************************************/
/* CREAZIONE FILE LISTINO                                            */
/*********************************************************************/
/* §§ */
             PGM
             DCL        VAR(&SOC) TYPE(*CHAR) LEN(3)
             DCL        VAR(&LIS) TYPE(*CHAR) LEN(2)
             DCL        VAR(&VAL) TYPE(*CHAR) LEN(4)
             DCL        VAR(&KSC) TYPE(*CHAR) LEN(8)
             CHGVAR     VAR(&SOC) VALUE('ACE')
             CHGVAR     VAR(&LIS) VALUE('70')
             CHGVAR     VAR(&VAL) VALUE('EUR ')
             CHGVAR     VAR(&KSC) VALUE('00003347')
/*           CALL       PGM(§LIST0C) PARM(&SOC &LIS &VAL &KSC) */
             CALL       PGM(§LIST1C) PARM('ACE' '06' 'EUR ' '00016905')
/* §§ */
             ENDPGM
