        *>   >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       
       PROGRAM-ID.  coboltut.
       AUTHOR. QUANYI WANG.
       DATE-WRITTEN. JULY 15 2020

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 SampleData PIC X(10) VALUE "Stuff".
       01 JustLetters PIC AAA VALUE "ABC".
       01 JustNums PIC 9(4) VALUE 1234.
       01 SignedInt PIC S9(4) VALUE -1234.
       *> V99: 2 DECIMAL PLACES   
       01 PayCheck PIC 9(4)V99 VALUE ZEROS.
       01 Customer.
           02 Ident PIC 9(3).
           02 CustName PIC X(12).
           02 DateOfBirth.
               03 MOB PIC 99.
               03 DOB PIC 99.
               03 YOB PIC 9(4).
       01 Num1 PIC 9 VALUE 5.
       01 Num2 PIC 9 VALUE 4.
       01 Num3 PIC 9 VALUE 3.
       01 Ans PIC S99V99 VALUE 0.
        *>    SIGNED 2 DIGITS WITH 2 DECIMALS
       01 Rem PIC 9V99.

       PROCEDURE DIVISION.
       MOVE "MORE STUFF" TO SampleData
       MOVE "123" TO SampleData
       MOVE 123 TO SampleData
       DISPLAY SampleData
       DISPLAY PayCheck
       MOVE "123Wang Quanyi 12251990" to Customer
       DISPLAY CustName
       DISPLAY MOB "/" DOB "/" YOB

       STOP RUN.

