       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. tut3.
AUTHOR. QUANYI WANG.
DATE-written. October,26,2020.


ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
SPECIAL-NAMES.
       CLASS passingScore is "A" thru "C", "D".


DATA DIVISION.
FILE SECTION.

WORKING-STORAGE SECTION.
01 age pic 99.
01 grade pic 99.
01 score pic x(1) value "B".

01 canVoteFlag pic 9.
       88 canVote  value 1.
       88 cantVote  value 0.

*> Used to demonstrate evaluate
01 TestNumber  PIC X.
       *> Level 88 designates multiple values
       88  IsPrime     VALUE   "1", "3", "5", "7".
       88  IsOdd       VALUE   "1", "3", "5", "7", "9".
       88  IsEven      VALUE   "2", "4", "6", "8".
       88  LessThan5   VALUE   "1" THRU "4".
       88  ANumber     VALUE   "0" THRU "9".


PROCEDURE DIVISION.
display "enter age: " 
accept Age

if age > 18 then
       display "You can vote"
else
       display "You can't vote"
end-if

if age < 5 then
display "stay home with mommy"
end-if

if age = 5 then
display "Go to kindergarten"
end-if
if age > 5 and age < 18 then
compute grade = age - 5
display "Go to grade " grade
end-if
if age greater or equal to 18
display "Go to college"
end-if

if score is passingScore then 
display "You passed"
else 
display "You failed"
end-if

if score is not numeric then 
display "Not a Number"
end-if

if age > 18 then 
set canVote to true
else 
set cantVote to true
end-if
display "Vote " canVoteFlag

display "enter a number or X to exit: "
    accept TestNumber
perform until not ANumber
    evaluate true
       when IsPrime display "Prime"
       when isOdd   display "Odd"
       when isEven  display "Even"
       when LessThan5 display "less than 5"
       when other display "default action"
    end-evaluate
    accept TestNumber
end-perform

STOP RUN.
