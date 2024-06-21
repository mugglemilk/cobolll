       IDENTIFICATION DIVISION.
       PROGRAM-ID.  EXER00.
      ******************************************************
      *                                                    *
      ******************************************************
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *
       01  WS-BEG.
           05 FILLER                    PIC X(32) VALUE
           '** THIS IS BEGIN OF WS EXER00 **'.
       01  WS-CALCULATION.
           05 AMOUNT                    PIC 9(03) VALUE ZERO.
       01  WS-END.
           05 FILLER                    PIC X(32) VALUE
           '** THIS IS END OF WS EXER00 **'.

       PROCEDURE DIVISION.
           DISPLAY 'MONTHLY-PREMIUM'
           MOVE 75 TO AMOUNT
           IF (AMOUNT < 24.99) OR (AMOUNT > 100.00)
                DISPLAY 'PERFORM 7000-ERROR-RTN'
           END-IF.
           DISPLAY 'MONTHLY-PREMIUM'
           MOVE 350 TO AMOUNT
           IF (AMOUNT < 24.99) OR (AMOUNT > 100.00)
                DISPLAY 'PERFORM 7000-ERROR-RTN'
           END-IF.
           GOBACK.
       7000-DISPLAY.
           DISPLAY 'MONTHLY-PREMIUM'.
       7000-EXIT.
           EXIT.
