/*********************************************************************/
/* RICERCA ESISTENZA LISTINO PER UN CODICE PRODOTTO                  */
/*********************************************************************/
/* §§ */
             PGM        PARM(&SOC &PROD &FLAG)
             DCL        VAR(&SOC) TYPE(*CHAR) LEN(3)
             DCL        VAR(&PROD) TYPE(*CHAR) LEN(15)
             DCL        VAR(&FLAG) TYPE(*CHAR) LEN(1)
             CHGVAR     VAR(&SOC) VALUE('ACE')
             CHGVAR     VAR(&PROD) VALUE('0000528.090    ')
             CHGVAR     VAR(&FLAG) VALUE(' ')
             CALL       £LIST0 PARM(&SOC &PROD &FLAG)
/* §§ */
             ENDPGM
