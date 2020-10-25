       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. tut1.
AUTHOR. QUANYI WANG.
DATE-WRITTEN. October,25,2020.


ENVIRONMENT DIVISION.


DATA DIVISION.
FILE SECTION.

WORKING-STORAGE SECTION.
01 UserName PIC X(30).
01 NUM1 PIC 9 VALUE ZEROS.
01 NUM2 PIC 9 VALUE ZEROS.
01 Total pic 999.
01 SSNum.
       02 SSArea PIC 999.
       02 SSGroup PIC 99.
       02 SSSerial PIC 9999.

PROCEDURE DIVISION.
DISPLAY "WHAT IS YOUR NAME? " WITH NO ADVANCING
ACCEPT UserName
DISPLAY "HELLO, " UserName
DISPLAY "Hello, " FUNCTION UPPER-CASE(UserName)
display "hello, " function LOWER-CASE(UserName)
DISPLAY " "  *> an empty line created

MOVE ZERO TO UserName
DISPLAY UserName
DISPLAY " "  *> an empty line created

display "Enter 2 valuses to sum "
    accept Num1
    accept NUM2
    compute Total = Num1 + Num2
    display num1 " + " num2 " = " Total
display "enter 3 values to SSNum"
    accept SSArea
    accept SSGroup
    accept SSSerial
    display "Your social insurance number: " SSArea "-" SSGroup "-" SSSerial
   
STOP RUN.
