       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. OdometerSimulation.
AUTHOR. QUANYI WANG.
DATE-written. December,23,2020.


ENVIRONMENT DIVISION.
CONFIGURATION SECTION.



DATA DIVISION.
FILE SECTION.

WORKING-STORAGE SECTION.
01 Counters.
   02 HundredsCount   PIC 99 VALUE ZEROS.
   02 TensCount       PIC 99 VALUE ZEROS.
   02 UnitsCount      PIC 99 VALUE ZEROS.
 
01 Odometer.
   02 PrnHundreds     PIC 9.
   02 FILLER          PIC X VALUE "-".
   02 PrnTens         PIC 9.
   02 FILLER          PIC X VALUE "-".
   02 PrnUnits        PIC 9.
 
PROCEDURE DIVISION.
Begin.
    DISPLAY "Using an out-of-line Perform".
    PERFORM CountMileage
            VARYING HundredsCount FROM 0 BY 1 UNTIL HundredsCount > 9
            AFTER TensCount FROM 0 BY 1 UNTIL TensCount > 9
            AFTER UnitsCount FROM 0 BY 1 UNTIL UnitsCount > 9
     
    DISPLAY "Now using in-line Perform"
    PERFORM VARYING HundredsCount FROM 0 BY 1 UNTIL HundredsCount > 9
        PERFORM VARYING TensCount FROM 0 BY 1 UNTIL TensCount > 9
            PERFORM VARYING UnitsCount FROM 0 BY 1 UNTIL UnitsCount > 9
                MOVE HundredsCount TO PrnHundreds
                MOVE TensCount TO PrnTens
                MOVE UnitsCount TO PrnUnits
                DISPLAY "In - " Odometer
            END-PERFORM
        END-PERFORM
    END-PERFORM
    DISPLAY "End of odometer simulation."
    STOP RUN.
 
CountMileage.
   MOVE HundredsCount TO PrnHundreds
   MOVE TensCount     TO PrnTens
   MOVE UnitsCount    TO PrnUnits
   DISPLAY "Out - " Odometer.

