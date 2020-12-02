/*===================================================================*/
/*  CREA FILE X TRAVASO DATI FERIE IN BASIS                          */
/*===================================================================*/
             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             DCL        VAR(&FIL1) TYPE(*CHAR) LEN(10)
             CHGVAR     VAR(&FIL1) VALUE('/LAGUNA/' *CAT +
                          ('FERIE.TXT'))
/* §§ */
             CPYTOIMPF  FROMFILE(HDAT/FERIE00) TOSTMF(&FIL1) +
                          MBROPT(*ADD) STMFCODPAG(*PCASCII) +
                          RCDDLM(*CRLF) DTAFMT(*FIXED)
             CHGAUT     OBJ(&FIL1) USER(*PUBLIC) DTAAUT(*RWX) +
                          OBJAUT(*ALL)
             ENDPGM
