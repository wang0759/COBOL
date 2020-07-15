000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. SAMPLE as "SAMPLE".
000003 AUTHOR. 	PEGGY FISHER.
      ******************************************************************************
      *            This program asks the user for their name and says hello        *
      ******************************************************************************
000004 ENVIRONMENT DIVISION.
000005 CONFIGURATION SECTION.
000006 SOURCE-COMPUTER. 
000007 OBJECT-COMPUTER.
	   
000008 INPUT-OUTPUT SECTION.
              
               
000009 DATA DIVISION.
000010 FILE SECTION.
   
000011 WORKING-STORAGE SECTION.
000012 01  WS-NAME	PIC X(10).
   

000013 PROCEDURE DIVISION.
000014 0001-HELLO-WORLD.
	   
000015	   DISPLAY "Enter your first name".
000016	   ACCEPT WS-NAME. 
000017	   DISPLAY "Hello ", WS-NAME.
           			
000018     STOP RUN.
           
000019     END PROGRAM SAMPLE.
