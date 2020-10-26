       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. tut2.
AUTHOR. QUANYI WANG.
DATE-written. October,25,2020.


ENVIRONMENT DIVISION.



DATA DIVISION.
FILE SECTION.

*> dot are required for each variable
WORKING-STORAGE SECTION.
01 sampleData pic x(10) value "stuff".
01 justLetters pic AAA value "abc".
01 justNum pic 9(4) value 1234.
01 signedInt pic s9(4) value -1234.
01 payCheck pic 9(4)v99 value zeros.

01 customer.
       02 idCustomer pic 9(3).
       02 custName pic x(20).
       02 dataBirth.
           03 mob pic 99.
           03 dob pic 99.
           03 yob pic 9(4).

01 Num1 PIC 9 VALUE 5.
01 Num2 PIC 9 VALUE 4.
01 Num3 PIC 9 VALUE 3.
01 Ans PIC S99V99 VALUE 0.
01 Rem PIC 9V99.

PROCEDURE DIVISION.
move "more stuff" to sampleData
display sampleData
move 123 to sampleData
display sampleData
display payCheck

move "123Yiaaaaaaaaaaaaaaaaaa12212012" to customer
display custName
display mob "/" dob "/" yob "/"

display " "
move zero to sampleData
display sampleData
move space to sampleData
display sampleData
move high-value to sampleData
display sampleData
move low-value to sampleData
display sampleData
move quote to sampleData
display sampleData
move all "2" to sampleData
display sampleData

*> Math
add Num1 to Num2 giving Ans
display ans
subtract Num1 from Num2 giving Ans
display ans
divide Num2 by num1 giving Ans
display ans
divide Num2 into Num1 giving Ans
display ans 
multiply num1 by num2 giving Ans
display ans 
divide num3 into num1 giving Ans remainder rem 
display ans, rem
*> get whatever is left according to data type. 0.02
display "Remainder " rem 

add Num1,num2 to num3 giving Ans
display ans 
add Num1 , num2 , num3 giving Ans
display ans 

*> use compute to get the same effect

*> to round output
compute ans rounded = 3.21 + 2.333
display ans 


STOP RUN.
