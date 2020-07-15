       IDENTIFICATION DIVISION.
       PROGRAM-ID. CIRCLES.
	   AUTHOR. 	PEGGY FISHER.
      *********************************************************************************
      *  This program asks the user for the radius of a circle and calculates the     *
      *     circumference and area. 
      *********************************************************************************

       ENVIRONMENT DIVISION.
	   CONFIGURATION SECTION.
	   SOURCE-COMPUTER. 
	   OBJECT-COMPUTER.
	   
       INPUT-OUTPUT SECTION.
	   FILE-CONTROL.
			             
               
       DATA DIVISION.
       FILE SECTION.
	  
	   WORKING-STORAGE SECTION.
		01   WS-CONSTANTS.
		     05  WS-PI              PIC 9V99999 VALUE 3.14159.
		01   WS-CIRCLE.
             05 WS-AREA             PIC 999V99 VALUE ZEROES.
             05 WS-RADIUS           PIC 9999V99 VALUE ZEROES.
             05 WS-CIRCUMFERENCE    PIC 99999V99 VALUE ZEROES.
        01   WS-DISPLAY-VALUES.
             05 WS-DISPLAY-AREA          PIC ZZ99.99.
             05 WS-DISPLAY-CIRCUMFERENCE PIC ZZ99.99.			 
        
          

	   PROCEDURE DIVISION.
		
				   
		0100-PROCESS-RECORDS.
		
		   DISPLAY "Enter radius: ".
           ACCEPT WS-RADIUS.
           COMPUTE WS-CIRCUMFERENCE = 2 * WS-PI *WS-RADIUS.
           MOVE WS-CIRCUMFERENCE TO WS-DISPLAY-CIRCUMFERENCE.  
           DISPLAY "Circle Circumference is: ", WS-DISPLAY-CIRCUMFERENCE.
	
		   
		   STOP RUN.
                    
	        
		   END PROGRAM CIRCLES.	
        
