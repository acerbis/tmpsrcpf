             PGM

             ADDLIBLE   LIB(HOBJ)
             ADDLIBLE   LIB(PROBAS)

             HOBJ/ENDSBSSYN SBS(QUSRWRK)
             MONMSG     MSGID(CPF0000)

             HOBJ/ENDSBSSYN SBS(QINTER)
             MONMSG     MSGID(CPF0000)

             HOBJ/ENDSBSSYN SBS(QSERVER)
             MONMSG     MSGID(CPF0000)

             HOBJ/ENDSBSSYN SBS(ACESBS)
             MONMSG     MSGID(CPF0000)

             RLSJOBQ    JOBQ(PROBAS/KSNOTTE)
             MONMSG     MSGID(CPF0000)

 EXIT:       ENDPGM
