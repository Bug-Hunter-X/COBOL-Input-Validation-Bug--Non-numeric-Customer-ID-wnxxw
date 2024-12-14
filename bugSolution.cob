01  WS-DATA-RECORD. 
    05 WS-CUSTOMER-ID PIC 9(5). 
    05 WS-CUSTOMER-NAME PIC X(30). 
    05 WS-BALANCE PIC 9(7)V99. 
    05 WS-INPUT-AREA PIC X(6).  

PROCEDURE DIVISION. 
    DISPLAY "Enter customer ID: ". 
    ACCEPT WS-INPUT-AREA. 

    IF WS-INPUT-AREA NUMERIC THEN 
        MOVE WS-INPUT-AREA TO WS-CUSTOMER-ID 
        IF WS-CUSTOMER-ID > 99999 THEN 
            DISPLAY "Invalid Customer ID" 
            STOP RUN 
        END-IF. 
    ELSE 
        DISPLAY "Invalid input. Please enter numeric value." 
        STOP RUN 
    END-IF. 

    READ CUSTOMER-FILE INTO WS-DATA-RECORD 
        AT END DISPLAY "Customer not found" 
        STOP RUN 
    END-READ. 

    DISPLAY "Customer Name: " WS-CUSTOMER-NAME 
    DISPLAY "Balance: " WS-BALANCE 
    STOP RUN.