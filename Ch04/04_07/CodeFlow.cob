       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. FLOW.

ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.

PROCEDURE DIVISION.

*> This demonstrates the flow
SubOne.
       DISPLAY "In Paragraph 1"
       PERFORM SubTwo
       DISPLAY "Returned to Paragraph 1"
       *> Execute code multiple times
       PERFORM 2 TIMES
           DISPLAY "Repeat"
       END-PERFORM
       STOP RUN.
 
SubThree.
       DISPLAY "In Paragraph 3".
       
SubTwo.
       DISPLAY "In Paragraph 2"
       PERFORM SubThree
       DISPLAY "Returned to Paragraph 2".
 