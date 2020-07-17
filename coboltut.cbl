       >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut.
       DATA DIVISION.
WORKING-STORAGE SECTION.
01 SampStr     PIC X(18) VALUE 'eerie beef sneezed'.
01 NumChars    PIC 99 VALUE 0.
01 NumEs       PIC 99 VALUE 0.
01 FName       PIC X(6) VALUE 'Martin'.
01 MName       PIC X(11) VALUE 'Luther King'.
01 LName       PIC X(4) VALUE 'King'.
01 FLName      PIC X(11).
01 FMLName     PIC X(18).
01 SStr1       PIC X(7) VALUE "The egg".
01 SStr2       PIC X(9) VALUE "is #1 and".
01 Dest        PIC X(33) VALUE "is the big chicken". 
01 Ptr         PIC 9 VALUE 1.
01 SStr3       PIC X(3).
01 SStr4       PIC X(3).
 
PROCEDURE DIVISION.
*> Takes string SampStr counts all characters and
*> stores the value in NumChars
INSPECT SampStr TALLYING NumChars FOR CHARACTERS.
DISPLAY "Number of Characters : " NumChars.
 
INSPECT SampStr TALLYING NumEs FOR ALL 'e'.
DISPLAY "Number of e's : " NumEs.
*> Convert to uppercase
DISPLAY FUNCTION UPPER-CASE(SampStr).
*> Convert to lowercase
DISPLAY FUNCTION LOWER-CASE(SampStr).
 
*> Join 2 strings with a space between them
*> delimited specifies the end of the string
*> being size (the whole string) or spaces
*> (up to the 1st space) or some other character
*> surrounded with quotes like "#" for example
STRING FName DELIMITED BY SIZE
SPACE
LName DELIMITED BY SIZE
INTO FLName.
DISPLAY FLName.
 
*> Get just the 1st word up to the space
*> delimited by size gets the whole string
*> and join all 3 into a new string
*> If the container isn't big enough for the
*> string it overflows.
STRING FLName DELIMITED BY SPACES
SPACE
MName DELIMITED BY SIZE
SPACE
LName DELIMITED BY SIZE
INTO FMLName
ON OVERFLOW DISPLAY 'Overflowed'.
DISPLAY FMLName.
 
*> Grab The egg
STRING SStr1 DELIMITED BY SIZE
SPACE
*> Grab is and the space up to #
SStr2 DELIMITED BY "#"
*> Insert the above starting at index 1 as defined
*> by pointer(1 means the 1 letter, will replace the same string length)
INTO Dest
WITH POINTER Ptr
ON OVERFLOW DISPLAY 'Overflowed'.
DISPLAY Dest.
 
*> Replacing is used to replace strings or characters
INSPECT Dest REPLACING ALL 'egg' BY 'dog'.
DISPLAY Dest.
 
*> Unstring splits a string into multiple strings
*> based on a delimiter
UNSTRING SStr1 DELIMITED BY SPACE
INTO SStr3, SStr4
END-UNSTRING.
DISPLAY SStr4.
 
STOP RUN.
 