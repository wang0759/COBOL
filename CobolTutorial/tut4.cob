       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. tut4.
AUTHOR. QUANYI WANG.
DATE-written. October,28,2020.


ENVIRONMENT DIVISION.
CONFIGURATION SECTION.



DATA DIVISION.
FILE SECTION.

WORKING-STORAGE SECTION.


PROCEDURE DIVISION.
*> every paragraph should end with .  
subOne.
       display "in para1"
       perform subTwo 
       display "returned to para1"
       perform subFour.
      
       

subThree.
       display "in para 3".
subTwo.
       display "in para2"
       perform subThree
       display "returned to para 2".
subFour.
       display "repeat".
       
STOP RUN.
