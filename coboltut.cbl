       >>SOURCE FORMAT FREE       
IDENTIFICATION DIVISION.
PROGRAM-ID. tutorial10.
*> This program has a menu system and allows you to
*> Add, Update, Delete and Display Customer Data
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
*> Select to use a file with keys (Indexed File)
*> We will randomly access data vs. sequential
*> Define the name associated with the key
       SELECT CustomerFile ASSIGN TO "customers.txt"
           ORGANIZATION IS INDEXED
           ACCESS MODE IS RANDOM
           RECORD KEY IS IDNum.
 
DATA DIVISION.
FILE SECTION.
*> Model customer data
FD CustomerFile.
       01 CustomerData.
           02 IDNum PIC 99.
           02 FirstName PIC X(15).
           02 LastName PIC X(15).
 
WORKING-STORAGE SECTION.
       *> Customer menu choice
       01 Choice PIC 9.
       *> Tracks whether to exit
       01 StayOpen PIC X VALUE 'Y'.
       *> Tracks whether the customer exists
       01 CustExists PIC X.
 
PROCEDURE DIVISION.
StartPara.
       *> To access data randomly you must use I-O mode
       OPEN I-O CustomerFile.
       *> Continue execution until StayOpen is N which
       *> happens if the user enters a number not 1 thru 4
       PERFORM UNTIL StayOpen='N'
           DISPLAY " "
           DISPLAY "CUSTOMER RECORDS"
           DISPLAY "1 : Add Customer"
           DISPLAY "2 : Delete Customer"
           DISPLAY "3 : Update Customer"
           DISPLAY "4 : Get Customer"
           DISPLAY "0 : Quit"
           DISPLAY ": " WITH NO ADVANCING
           ACCEPT Choice
           *> Execute different paragraphs based on option
           EVALUATE Choice
               WHEN 1 PERFORM AddCust
               WHEN 2 PERFORM DeleteCust
               WHEN 3 PERFORM UpdateCust
               WHEN 4 PERFORM GetCust
               *> When N we jump out of the loop
               WHEN OTHER move 'N' TO StayOpen
           END-EVALUATE
          
       END-PERFORM.
       *> Close the file and stop execution
       CLOSE CustomerFile
       STOP RUN.
 
AddCust.
       DISPLAY " ".
       DISPLAY "Enter ID : " WITH NO ADVANCING.
       ACCEPT IDNum.
       DISPLAY "Enter First Name : "  WITH NO ADVANCING.
       ACCEPT FirstName.
       DISPLAY "Enter Last Name : " WITH NO ADVANCING.
       ACCEPT LastName.
       DISPLAY " ".
       *> Write customer data or display error if ID taken
       WRITE CustomerData
           INVALID KEY DISPLAY "ID Taken"
       END-WRITE.
 
 
DeleteCust.
       DISPLAY " ".
       DISPLAY "Enter Customer ID to Delete : " WITH NO ADVANCING.
       ACCEPT IDNum.
       *> Delete customer based on ID
       DELETE CustomerFile
       INVALID KEY DISPLAY "Key Doesn't Exist"
       END-DELETE.
 
UpdateCust.
       MOVE 'Y' TO CustExists.
       DISPLAY " ".
       DISPLAY "Enter ID to Update : " WITH NO ADVANCING.
       ACCEPT IDNum.
       *> Read customer or mark N if doesn't exist
       READ CustomerFile
           INVALID KEY MOVE 'N' TO CustExists
       END-READ.
       *> Display error because ID doesn't exist
       IF CustExists='N'
           DISPLAY "Customer Doesn't Exist"
       ELSE
           DISPLAY "Enter the New First Name : " WITH NO ADVANCING
           ACCEPT FirstName
           DISPLAY "Enter the New Last Name : " WITH NO ADVANCING
           ACCEPT LastName
       END-IF.
       *> Update record for matching ID
       REWRITE CustomerData
           INVALID KEY DISPLAY "Customer Not Updated"
       END-REWRITE.
 
 
GetCust.
       *> Assume customer exists
       MOVE 'Y' TO CustExists.
       DISPLAY " ".
       DISPLAY "Enter Customer ID to Find : " WITH NO ADVANCING.
       ACCEPT IDNum.
       *> Mark N if customer ID doesn't exist
       READ CustomerFile
           INVALID KEY MOVE 'N' TO CustExists
       END-READ.
       *> Display error
       IF CustExists='N'
           DISPLAY "Customer Doesn't Exist"
       ELSE
           DISPLAY "ID : " IDNum
           DISPLAY "First Name : " FirstName
           DISPLAY "Last Name : " LastName
END-IF.



