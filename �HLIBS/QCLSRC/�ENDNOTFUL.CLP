             PGM

             STRSBS     SBSD(QINTER)
             MONMSG     MSGID(CPF0000)

             STRSBS     SBSD(QSERVER)
             MONMSG     MSGID(CPF0000)

             STRSBS     SBSD(QUSRWRK)
             MONMSG     MSGID(CPF0000)

             STRSBS     SBSD(PROBAS/ACESBS)
             MONMSG     MSGID(CPF0000)

             STRHOSTSVR SERVER(*ALL)
             MONMSG     MSGID(CPF0000)

             STRTCPSVR  SERVER(*AUTOSTART)
             MONMSG     MSGID(CPF0000)

             HLDJOBQ    JOBQ(PROBAS/KSNOTTE)
             MONMSG     MSGID(CPF0000)

 EXIT:       ENDPGM
