       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONSTANTS.
      *********************************************************************************
      *  This program demonstrates the use of constant variables in a COBOL program   *
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
	    01 WS-ON-TAX	    PIC 9V99 VALUE 0.13.
          
		01   WS-ITEM-COST           PIC 999V99 VALUE ZEROES.
		01   WS-ITEM-TOTAL          PIC 9999V99 VALUE ZEROES.
		01   WS-TOTAL-COST	        PIC 99999V99 .
		01   WS-DISPLAY-TOTAL	    PIC $$$$$9.99.
	    01   WS-DONE                PIC X VALUE 'N'.
          

	   PROCEDURE DIVISION.
		

		DISPLAY "Enter cost of your item: ".
		ACCEPT WS-ITEM-COST.
		MULTIPLY WS-ON-TAX BY WS-ITEM-COST  GIVING WS-ITEM-TOTAL.
	    ADD WS-ITEM-TOTAL TO WS-ITEM-COST GIVING WS-TOTAL-COST.		  
		DISPLAY "Do you want to enter another item? y/n".
		ACCEPT WS-DONE.    	
        MOVE WS-TOTAL-COST TO WS-DISPLAY-TOTAL
	    DISPLAY "Total: ", WS-DISPLAY-TOTAL.
        PERFORM DisplayGreetings 5 TIMES
        

		STOP RUN.
	    DisplayGreetings.
           DISPLAY "Greetings from Quanyi".
            
           
        END PROGRAM CONSTANTS.
