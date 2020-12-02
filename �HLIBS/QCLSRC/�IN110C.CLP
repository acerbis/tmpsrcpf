             PGM        PARM(&KPJBA)
             DCL        VAR(&KPJBA) TYPE(*CHAR) LEN(502)
             CPYF       FROMFILE(HDAT/§TINV00F) +
                          TOFILE(HDAT/§TRET00F) +
                          MBROPT(*REPLACE)
             CALL       §IN110 PARM(&KPJBA)
             ENDPGM
