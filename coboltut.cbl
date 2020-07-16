        *> >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  coboltut.
       AUTHOR. QUANYI WANG.
       DATE-WRITTEN. JULY 15 2020
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.


  
       PROCEDURE DIVISION.
       SubOne.
       DISPLAY "In Paragraph 1"
       PERFORM SubTwo
       
       DISPLAY "Returned to Paragraph 1"
       PERFORM 1 TIMES
       DISPLAY "Repeat"
       END-PERFORM
       STOP RUN.
 
       SubThree.
       DISPLAY "In Paragraph 3".
       
       SubTwo.
       DISPLAY "In Paragraph 2"
       PERFORM SubThree
       DISPLAY "Returned to Paragraph 2".

       STOP RUN.

