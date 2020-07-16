        >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Ind PIC 9(1) VALUE 0.

       PROCEDURE DIVISION.
       *> WHILE LOOP
       PERFORM OutputData WITH TEST AFTER UNTIL Ind >5
            GO TO ForLoop.

       OutputData.
           DISPLAY Ind.
           ADD 1 to Ind.

       *> for loop
       ForLoop.
           PERFORM OutputData2 VARYING Ind FROM 1 BY 1 UNTIL Ind=6
           STOP RUN.

       OutputData2.
           DISPLAY Ind. 
