        *>   >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       
       PROGRAM-ID.  coboltut.
       AUTHOR. QUANYI WANG.
       DATE-WRITTEN. JULY 15 2020

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 SampleData PIC X(15) VALUE "Stuff".
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
       MOVE "123MORE STUFF" TO SampleData
       DISPLAY SampleData
       DISPLAY JustLetters
       DISPLAY JustNums
       DISPLAY SignedInt
       DISPLAY PayCheck
       MOVE "123Wang Quanyi 12251990" to Customer
       DISPLAY CustName
       DISPLAY MOB "/" DOB "/" YOB
       DISPLAY Ans

       MOVE ZERO TO SampleData
       DISPLAY SampleData
       MOVE SPACE TO SampleData
       DISPLAY SampleData
       MOVE HIGH-VALUE TO SampleData
       DISPLAY SampleData
       MOVE LOW-VALUE TO SampleData
       DISPLAY SampleData
       MOVE QUOTE TO SampleData
       DISPLAY SampleData
       MOVE ALL "2" TO SampleData
       DISPLAY SampleData
       MOVE all "*" TO SampleData
       DISPLAY SampleData
       MOVE 2 TO SampleData
       DISPLAY SampleData

       ADD Num1 to Num2 GIVING Ans
       display Ans 
       SUBTRACT Num1 FROM Num2 GIVING Ans
       display Ans 
       MULTIPLY Num1 by Num2 GIVING Ans
       display Ans
       divide Num1 into Num2 GIVING Ans
       DISPLAY Ans 
       divide Num3 into Num1 giving Ans REMAINDER Rem 
       display "Remainder" Rem 
       divide 3 into 5 giving Ans REMAINDER Rem 
       display "Remainder" Rem 

       Add Num1,Num2, Num3 giving Ans
       display Ans

       COMPUTE Ans = Num1 + Num2
       display Ans

       COMPUTE Ans = Num1 * Num2
       display Ans

       COMPUTE Ans = Num1 / Num2
       display Ans
       COMPUTE Ans = Num1 ** Num2
       display Ans
        *>  5**4?=25

       COMPUTE Ans = 5**4
       display Ans
        *> ???
        
       COMPUTE Ans = Num1 ** 2
       display Ans
       COMPUTE Ans ROUNDED = Num1 + 2.005
       display Ans



       STOP RUN.

