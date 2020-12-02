/***************************************************************/
/*  GESTIONE FILE SPECIFICHE TECNICHE ETICHETTATURA PRODOTTI   */
/*                X FORNITORI......                            */
/***************************************************************/
/* §§ */
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
/* §§ */
             CALL       §BAT20 PARM(&KPJBA)
/* §§ */
             ENDPGM
