       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. COBOLTUT.
*> Here we'll design and print a customer report
 
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
       *> Define the file to save the report to
       SELECT CustomerReport ASSIGN TO "CustReport.rpt"
           ORGANIZATION IS LINE SEQUENTIAL.
       *> The file that provides the data
       SELECT CustomerFile ASSIGN TO "Customer.dat"
           ORGANIZATION IS LINE SEQUENTIAL.
 
DATA DIVISION.
FILE SECTION.
*> Define FD and custom print line
FD CustomerReport.
01 PrintLine PIC X(44).
 
*> Info on customer data
FD CustomerFile.
01 CustomerData.
       02 IDNum    PIC 9(8).
       02 CustName.
           03 FirstName    PIC X(15).
           03 LastName     PIC X(15).
       88 WSEOF   VALUE HIGH-VALUE.
 
WORKING-STORAGE SECTION.
*> Break the report up into pieces
01 PageHeading.
       02 FILLER PIC X(13) VALUE "Customer List".
01 PageFooting.
       02 FILLER PIC X(15) VALUE SPACE.
       02 FILLER PIC X(7) VALUE "Page : ".
       02 PrnPageNum PIC Z9.
*> Column headings for data
01 Heads PIC X(40) VALUE " IDNum       FirstName        LastName".
*> Customer data to print with spaces defined
01 CustomerDetailLine.
       02 FILLER PIC X VALUE SPACE.
       02 PrnCustID PIC 9(8).
       02 FILLER PIC X(4) VALUE SPACE.
       02 PrnFirstName PIC X(15). 
       02 FILLER PIC XX VALUE SPACE.
       02 PrnLastName PIC X(15).
*> Printed at end of report
01 ReportFooting PIC X(13) VALUE "END OF REPORT".
*> Tracks number of lines used, when to print footer
*> and new heading
01 LineCount PIC 99 VALUE ZERO.
       88 NewPageRequired VALUE 40 THRU 99.
*> Track number of pages
01 PageCount PIC 99 VALUE ZERO.
 
PROCEDURE DIVISION.
PrintReport.
OPEN INPUT CustomerFile
OPEN OUTPUT CustomerReport
PERFORM PrintPageHeading
*> Read customer file until end
READ CustomerFile
       AT END SET WSEOF TO TRUE
END-READ
PERFORM PrintReportBody UNTIL WSEOF
*> Advancing moves down defined number of lines
WRITE PrintLine FROM ReportFooting AFTER ADVANCING 5 LINES
CLOSE CustomerFile, CustomerReport
STOP RUN.
 
*> Prints heading and tracks page count
PrintPageHeading.
WRITE PrintLine FROM PageHeading AFTER ADVANCING Page
WRITE PrintLine FROM Heads AFTER ADVANCING 5 LINES
MOVE 3 TO LineCount
ADD 1 TO PageCount.
 
*> Handles creating new page logic and printing customer
*> data
PrintReportBody.
IF NewPageRequired
       MOVE PageCount TO PrnPageNum
       WRITE PrintLine FROM PageFooting AFTER ADVANCING 5 LINES
       PERFORM PrintPageHeading
END-IF
*> Move data to be printed to report
MOVE IDNum TO PrnCustID
MOVE FirstName TO PrnFirstName
MOVE LastName TO PrnLastName
WRITE PrintLine FROM CustomerDetailLine AFTER ADVANCING 1 LINE
ADD 1 TO LineCount
READ CustomerFile
       AT END SET WSEOF TO TRUE
END-READ.
