        *>   >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       
       PROGRAM-ID.  coboltut.
       AUTHOR. QUANYI WANG.
       DATE-WRITTEN. JULY 15 2020

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 UserName PIC X(30) VALUE "YOU".
       01 Num1 PIC 9 VALUE ZEROS.
       01 Num2 PIC 9 VALUE ZEROS.
       01 Total PIC 99 VALUE 0.
       01 SSNum.
           02 SSArea PIC 999.
           02 SSGroup PIC 99.
           02 SSSerial PIC 9999.
        01 PIValue CONSTANT AS 3.14.

        *> ZERO, ZEROES
        *> SPACE SPACES    figurative constances examples
        *> HIGH-VALUES
        *> LOW-VALUES

       PROCEDURE DIVISION.
       DISPLAY "What is your name? " WITH NO ADVANCING
       ACCEPT userName
       DISPLAY "HELLO " userName

       MOVE ZERO TO UserName
       DISPLAY UserName

       DISPLAY "PLEASE ENTER 2 NUMBERS FOR TOTAL"
       ACCEPT Num1
       ACCEPT Num2
       COMPUTE Total = Num1 + Num2
       DISPLAY Num1 "+" Num2 "=" Total

       DISPLAY "ENTER YOUR SSN, PLZ"
       ACCEPT SSNum
       DISPLAY "AREA " SSArea
       display "group " SSGroup
       DISPLAY "SERIAL " SSSerial

       STOP RUN.

