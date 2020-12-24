       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. TEST.
AUTHOR. QUANYI WANG.
DATE-written. December,22,2020.


ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
special-names.
       class HEXNUMBER IS "0" THRU "9", "A" THRU "F"
       class REALNAME IS "A" THRU "Z", "a" thru "z", ",", SPACE.

                              

DATA DIVISION.
FILE SECTION.

WORKING-STORAGE SECTION.

01 RepCount  pic 9(3).
01 prnRepCount pic z,zz9.
01 targetNum  pic 9(3) value 100.

procedure division.
perform varying RepCount from 0 by 10 until RepCount > targetNum
move RepCount to prnRepCount
display "Counting" prnRepCount
end-perform
stop run.
