        >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 Num1    PIC 9 VALUE 5.
           01 Num2    PIC 9 VALUE 4.
           01 Sum1     PIC 99.
       PROCEDURE DIVISION.
       *> Call the subroutine in the other file and display the result
       CALL 'GETSUM' USING Num1, Num2, Sum1.
       DISPLAY Num1 " + " Num2 " = " Sum1.
       STOP RUN.