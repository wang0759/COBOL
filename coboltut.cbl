        >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 StartNum PIC 9(8)V99 VALUE 00001234.55.
       01 NoZero PIC ZZZZZZZ9.99.
       01 NoZPlusC PIC ZZ,ZZZ,ZZ9.99.
       01 Dollar  PIC $$,$$$,$$9.99.
       01 BDay PIC 9(8) VALUE 12251990.
       01 ADate PIC 99/99/9999.

       PROCEDURE DIVISION.
       MOVE StartNum TO NoZero
       DISPLAY NoZero
       MOVE StartNum TO NoZPlusC
       DISPLAY NoZPlusC
       MOVE StartNum TO Dollar
       DISPLAY Dollar
       MOVE BDay TO ADate
       DISPLAY ADate
       STOP RUN.