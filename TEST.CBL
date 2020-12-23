       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. TEST.
AUTHOR. QUANYI WANG.
DATE-written. December,22,2020.


ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
special-names.
       class HEXNUMBER IS "0" THRU "9", "A" THRU "F"
       class REALNAME IS "A" THRU "Z", "a" thru "z", ",", SPACE.

                              

DATA DIVISION.
FILE SECTION.

WORKING-STORAGE SECTION.

01 CityCode PIC 9 value 0.
       88 CityIsDublin VALUE 1.
		 88 CityIsLimerick VALUE 2.
		 88 CityIsCork VALUE 3.
	

procedure division.

display "PLEASE ENTER YOUR CITY CODE: " WITH no advancing
accept CityCode
if CityIsLimerick
display "Hey, I am here"
	end-if
if CityIsCork
display "where is herer?"
	end-if
STOP RUN.
