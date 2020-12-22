       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. TEST.
AUTHOR. QUANYI WANG.
DATE-written. December,22,2020.


ENVIRONMENT DIVISION.
CONFIGURATION SECTION.



DATA DIVISION.
FILE SECTION.

WORKING-STORAGE SECTION.
01 DeptCode PIC 9.
20 InvalidCode PIC X(5) value false.

PROCEDURE DIVISION.
DISPLAY "Please enter a number bw 0-9: " with no advancing
ACCEPT DeptCode
*> IF NOT (DeptCode = 1 or 6 or 8) 
*> THEN SET InvalidCode TO TRUE
IF NOT (DeptCode = 1 OR DeptCode = 6 OR DeptCode = 8) THEN
    SET InvalidCode TO true
    *> TEST.cbl: 26: error: invalid SET statement
END-IF.


STOP RUN.
