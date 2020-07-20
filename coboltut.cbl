       >>SOURCE FORMAT FREE
*> Tables contain multiple data items like arrays
*> Indexes are called subscripts in COBOL and start
*> at subscript 1 instead of 0. You define the 
*> containing data with a record description.
IDENTIFICATION DIVISION.
PROGRAM-ID. tutorial11.
DATA DIVISION.
 
WORKING-STORAGE SECTION.
*> Declare a 1 dimensional table
01 Table1.
       02  Friend  PIC X(15) OCCURS 4 TIMES.
 
*> Declare a multidimensional table
01 CustTable.
       02 CustName OCCURS 5 TIMES.
           03 FName PIC X(15).
           03 LName PIC X(15).
 
*> Declare a table with indexes
01 OrderTable.
       02 Product OCCURS 2 TIMES INDEXED BY I.
           03 ProdName PIC X(10).
           03 ProdSize OCCURS 3 TIMES INDEXED BY J.
               04 SizeType PIC A.
 
PROCEDURE DIVISION.
       *> Fill 1D table with data and output
       MOVE 'Joy' TO Friend(1).
       MOVE 'Willow' TO Friend(2).
       MOVE 'Ivy' TO Friend(3).
       DISPLAY Friend(1).
       DISPLAY Table1.
 
       *> Fill MD table with data and output
       MOVE 'Paul' TO FName(1).
       MOVE 'Smith' TO LName(1).
       MOVE 'Sally' TO FName(2).
       MOVE 'Smith' TO LName(2).
       DISPLAY CustName(1).
       DISPLAY CustTable.
       
       *> Working with indexed tables
       *> Set index value with SET
       SET I J TO 1.
       MOVE 'Blue Shirt' TO Product(I).
       MOVE 'S' TO ProdSize(I,J).
       *> Increment with SET
       SET J UP BY 1
       MOVE 'M' TO ProdSize(I,J).
       *> Decrement with SET
       SET J DOWN BY 1
       *> Fill with product information
       MOVE 'Blue ShirtSMLRed Shirt SML' TO OrderTable.
       *> Increment I as we get products
       PERFORM GetProduct VARYING I FROM 1 BY 1 UNTIL I>2.
       GO TO LookUp.
 
GetProduct.
       DISPLAY Product(I).
       *> Get associated product sizes
       PERFORM GetSizes VARYING J FROM 1 BY 1 UNTIL J>3.
 
GetSizes.
       DISPLAY ProdSize(I,J).
       
LookUp.
       SET I TO 1.
       *> Search will look for supplied value or
       *> output Not Found
       SEARCH Product
           AT END DISPLAY 'Product Not Found'
           WHEN ProdName(I) = 'Red Shirt'
               DISPLAY 'Red Shirt Found'
        END-SEARCH.
 
STOP RUN.