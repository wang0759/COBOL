       >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. GETSUM.
       DATA DIVISION.
       *> These variables will be assigned by the calling program
       LINKAGE SECTION.
           01 LNum1    PIC 9.
           01 LNum2    PIC 9.
           01 LSum     PIC 99.
       *> Place the variables in the same order in which they are passed
       PROCEDURE DIVISION USING LNum1, LNum2, LSum.
       *> We can update the value of sum and when this ends it will update in the calling program
           COMPUTE LSum = LNum1 + LNum2.

       EXIT PROGRAM.
         *>    TO COMPILE WITH: cobc -m GETSUM.cob
