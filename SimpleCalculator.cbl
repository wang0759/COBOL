       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. SimpleCalculator.
AUTHOR. QUANYI WANG.
DATE-written. December,22,2020.


ENVIRONMENT DIVISION.
CONFIGURATION SECTION.



DATA DIVISION.
FILE SECTION.

WORKING-STORAGE SECTION.
01  Num1         PIC 9  VALUE 7.
      *>  88 ValidNumber PIC 9  VALUE 0 THRU 9.
01  Num2         PIC 9  VALUE 3.
01  Result       PIC --9(5).99 VALUE 0.
01  Operator     PIC X  VALUE "-".
    88 ValidOperator   VALUES "*", "+", "-", "/", "s".
    88 EndOfCalculate  VALUES "s".

PROCEDURE DIVISION.
BEGIN.
       PERFORM  GetValidOperator UNTIL ValidOperator
       PERFORM UNTIL EndOfCalculate OR NOT  ValidOperator
           PERFORM GetTwoNumbers
    
           EVALUATE Operator
           WHEN "+"   ADD Num2 TO Num1 GIVING Result
           WHEN "-"   SUBTRACT Num2 FROM Num1 GIVING Result
           WHEN "*"   MULTIPLY Num2 BY Num1 GIVING Result
           WHEN "/"   DIVIDE Num1 BY Num2 GIVING Result ROUNDED
           WHEN OTHER DISPLAY "Invalid operator entered"
           END-EVALUATE
    
           DISPLAY "Result = ", Result
           MOVE SPACE TO Operator
           PERFORM  GetValidOperator UNTIL ValidOperator
           END-PERFORM
       DISPLAY "END OF CALCULATIONS"
    


STOP RUN.

GetValidOperator.
       DISPLAY "Enter the operator to be applied (+ - * /) (s to end) : " WITH NO ADVANCING
       ACCEPT Operator.

GetTwoNumbers.
       DISPLAY "Enter a single digit number : " WITH NO ADVANCING
    ACCEPT Num1
    DISPLAY "Enter a single digit number : " WITH NO ADVANCING
    ACCEPT Num2.
    
       


