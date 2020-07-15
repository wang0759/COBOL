       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONSTANTS.
	   AUTHOR. 	PEGGY FISHER.
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
		01   WS-TAX.
		     05 WS-STATE-TAX	    PIC 9V99 VALUE 0.06.
          
        01   WS-TOTALS..
		05   WS-ITEM-COST           PIC 999V99 VALUE ZEROES.
		05   WS-ITEM-TOTAL          PIC 9999V99 VALUE ZEROES.
		05   WS-TOTAL-COST	    PIC 99999V99.
		05   WS-DISPLAY-TOTAL	    PIC $$$$$9.99.
	01   WS-DONE                	    PIC X VALUE 'N'.
          

	   PROCEDURE DIVISION.
		
				   
		0100-PROCESS-RECORDS.

		  PERFORM 0200-GET-NEXT-ITEM.
		  MOVE WS-TOTAL-COST TO WS-DISPLAY-TOTAL.
	          DISPLAY “TOTAL: “, WS-DISPLAY-TOTAL.

		  STOP RUN.



		0200—GET-NEXT-ITEM.

		  DISPLAY "Enter cost of your item: ".
		  ACCEPT WS-ITEM-COST.
		  ADD WS-ITEM-TOTAL TO WS-TOTAL-COST.
		  MULTIPLY WS-STATE-TAX BY WS-ITEM-COST GIVING WS-ITEM-TOTAL.
	          ADD WS-ITEM-TOTAL TO WS-TOTAL-COST.		  
		  DISPLAY "Do you want to enter another item? y/n".
		  ACCEPT WS-DONE.
		  
           
         	  END PROGRAM CONSTANTS.
