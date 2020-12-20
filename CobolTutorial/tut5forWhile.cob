       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. tut5forWhile.
AUTHOR. QUANYI WANG.
DATE-written. October,28,2020.


ENVIRONMENT DIVISION.
CONFIGURATION SECTION.



DATA DIVISION.
FILE SECTION.

*> do not use index(keyword)
WORKING-STORAGE SECTION.
01 ind pic 9(1) value 0.

PROCEDURE DIVISION.
*> while ind<=5
perform outputData with test after until ind> 5
go to forLoop.

outputData.
display ind.
add 1 to ind.

forLoop.
perform outputData2 varying ind from 1 by 1 until ind=5
stop run.

outputData2.
display ind.

