       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. MAINSUM.
DATA DIVISION.
WORKING-STORAGE SECTION.
       01 NUM1 PIC 9 VALUE 6.
       01 NUM2 PIC 9 VALUE 5.
       01 SUM1 PIC 99 .
PROCEDURE DIVISION.
*> call function and pass values 6, 5 
CALL 'GETSUM' USING NUM1, NUM2, SUM1.
DISPLAY NUM1 " + " NUM2 " = " SUM1.

STOP RUN.

