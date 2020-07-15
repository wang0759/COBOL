       IDENTIFICATION DIVISION.
       PROGRAM-ID. CH6UNSTRING.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
	   SELECT WIKI ASSIGN TO "wikipedia.csv"
		 ORGANIZATION IS LINE SEQUENTIAL.
	
       SELECT NEWWIKI ASSIGN TO "wikipedia.dat"
         ORGANIZATION IS LINE SEQUENTIAL.	   
          
               
       DATA DIVISION.
       FILE SECTION.
	   FD WIKI.
	   01 WIKIDETAILS.
			88 ENDOFFILE VALUE HIGH-VALUES.
			02 DETAILS  	   PIC X(275).
		
       FD NEWWIKI.  
       01 WIKI-RECORD.
	       05  NEW-TOPIC       PIC X(50).
           05  NEW-ID          PIC 9(8).
		   05  NEW-COMMENT     PIC X(100).
		  
	   
			
       WORKING-STORAGE SECTION.   
	   01  WS-WORKING-STORAGE.
	       05  FILLER  PIC X(27) VALUE 
		       'WORKING STORAGE STARTS HERE'.
		
           05  WS-TOPIC       PIC X(50).
           05  WS-ID          PIC 9(7).
		   05  WS-COMMENT     PIC X(100).
          
		   
           05  STRINGEND      PIC 99.		   
		   
    

	   
	

       PROCEDURE DIVISION.
       
	   0100-BEGIN.
		    
		   OPEN INPUT WIKI.
		   OPEN OUTPUT NEWWIKI.
	
		   READ WIKI
			AT END SET ENDOFFILE TO TRUE
			END-READ.
		  		   
           PERFORM 0200-PROCESS-RECORDS UNTIL ENDOFFILE.
		 
		   PERFORM 0300-STOP-RUN.
	   
	   0200-PROCESS-RECORDS.
	       
		   PERFORM VARYING STRINGEND FROM 275 BY -1
              UNTIL DETAILS(STRINGEND:1) NOT = SPACE
		   END-PERFORM.
			  
           UNSTRING DETAILS(1:STRINGEND) DELIMITED BY ","
             INTO WS-TOPIC
			      WS-ID
				  WS-COMMENT
           END-UNSTRING.
		   
           MOVE WS-TOPIC TO NEW-TOPIC.
		   MOVE WS-ID TO NEW-ID.
		   MOVE WS-COMMENT TO NEW-COMMENT.
		 
		   WRITE WIKI-RECORD.
		   READ WIKI 
			 AT END SET ENDOFFILE TO TRUE
		   END-READ.
	   
	   0200-END.
	   
	   0300-STOP-RUN.	
		
           CLOSE WIKI, NEWWIKI.		
           STOP RUN.
           
          END PROGRAM CH6UNSTRING.
