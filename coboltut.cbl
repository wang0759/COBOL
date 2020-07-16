       >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  coboltut.
       AUTHOR. QUANYI WANG.
       DATE-WRITTEN. JULY 15 2020
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           CLASS PassingScore IS "A" THRU "C","D".
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Age PIC 99 VALUE 0.
       01 Grade PIC 99 VALUE 0.
       01 SCORE PIC X(1) VALUE "B".
       01 CanVoteFlage PIC 9 VALUE 0.
           88 CanVote VALUE 1.
           88 CantVote VALUE 0.
       01 TestNumber PIC X.
           88 IsPrime VALUE "1","3","5","7".
           88 IsOdd VALUE "1","3","5","7","9".
           88 IsEven VALUE "0","2","4","6","8".
           88 ANumber VALUE "0" THRU "9".
       01  LessThan5 PIC 9 value 0.

  
       PROCEDURE DIVISION.
       DISPLAY "ENTER AGE: " WITH NO ADVANCING
       ACCEPT Age.
       IF Age > 18
           display "You can vote."
       ELSE
           DISPLAY "You can't vote."
       END-IF
       IF AGE LESS THAN 5 THEN
           DISPLAY "STAY HOME"
       END-IF

       IF AGE > 5 AND AGE <18
           COMPUTE GRADE=AGE - 5
           DISPLAY "GO TO GRADE:" GRADE
        END-IF

        IF AGE GREATER THAN OR EQUAL TO 18
           DISPLAY "GO TO COLLEGE"
        END-IF

        IF AGE>18
           SET CantVote TO TRUE
        ELSE
           SET CantVote TO TRUE
        END-IF
        DISPLAY "VOTE STATUS:" CanVoteFlage

        DISPLAY "ENTER SINGLE NUMBER OR X TO EXIT: "
        ACCEPT TestNumber
        IF TestNumber < 5
        DISPLAY LessThan5
        END-IF

       *> You can verify values fit a classification
       IF Score IS PassingScore THEN
           DISPLAY "You Passed"
       ELSE
           DISPLAY "You Failed"
       END-IF
       PERFORM UNTIL NOT ANumber
           EVALUATE TRUE
               WHEN IsPrime DISPLAY "PRIME"
               WHEN IsOdd DISPLAY "ODD"
               WHEN IsEven DISPLAY "EVEN"
               when other display "Default Action"
           END-EVALUATE
           accept TestNumber   
        END-PERFORM

        STOP RUN.

