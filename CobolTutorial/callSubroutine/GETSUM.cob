       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. GETSUM.
DATA DIVISION.
LINKAGE SECTION.
       01 LNum1 PIC 9 .
       *>    value 4 is useless
       01 LNum2 PIC 9 VALUE 4. 
       01 LSum1 PIC 99 .
PROCEDURE DIVISION USING LNum1, LNum2, LSum1.
       COMPUTE LSum1 = LNum1 + LNum2.
EXIT PROGRAM.
