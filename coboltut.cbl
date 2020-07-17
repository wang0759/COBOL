       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut.
 
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
*> Connect the name of the customer file name in this
*> code to a file. Records on separate lines
FILE-CONTROL.
       SELECT CustomerFile ASSIGN TO "Customer.dat"
           ORGANIZATION IS LINE SEQUENTIAL
           ACCESS IS SEQUENTIAL.
 
DATA DIVISION.
*> File section describes data in files
FILE SECTION.
*> FD (File Description) describes the file layout
FD CustomerFile.
*> Design the customer record
01 CustomerData.
       02 IDNum    PIC 9(8).
       02 CustName.
           03 FirstName    PIC X(15).
           03 LastName     PIC X(15).
 
WORKING-STORAGE SECTION.
01 WSCustomer.
       02 WSIDNum    PIC 9(5).
       02 WSCustName.
           03 WSFirstName    PIC X(15).
           03 WSLastName     PIC X(15).
 
PROCEDURE DIVISION.
*> COBOL focuses on working with external files or
*> databases. Here we will work with sequential files
*> which are files you must work with in order. They
*> differ from direct access files in that direct access
*> files have keys associated with data.
*> Field : Individual piece of information (First Name)
*> Record : Collection of fields for an individual object
*> File : Collection of numerous Records 
 
*> We process a file by loading one record into memory
*> This is called a Record Buffer
 
*> Open the file and if it doesn't exist create it
*> Add data to all fields, write them to the file
*> and close the file
OPEN OUTPUT CustomerFile.
       MOVE 00001 TO IDNum.
       MOVE 'Doug' TO FirstName.
       MOVE 'Thomas' TO LastName.
       WRITE CustomerData
       END-WRITE.
CLOSE CustomerFile.
STOP RUN.