             PGM
             ENDSBS     SBS(QUSRWRK) OPTION(*IMMED)
             MONMSG     MSGID(CPF0000)
             ENDSBS     SBS(QINTER) OPTION(*IMMED)
             MONMSG     MSGID(CPF0000)
             ENDSBS     SBS(QSERVER) OPTION(*IMMED) /* Chiusura +
                          server/odbc job per notturno */
             MONMSG     MSGID(CPF0000)
             ENDSBS     SBS(ACESBS) OPTION(*IMMED) DELAY(1)
             MONMSG     MSGID(CPF0000)
             ENDPGM
