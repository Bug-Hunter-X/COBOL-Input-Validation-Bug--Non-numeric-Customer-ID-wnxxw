# COBOL Input Validation Bug

This repository demonstrates a common error in COBOL programs: inadequate input validation. The program reads a customer ID and checks if it's within a valid range. However, it fails to handle non-numeric input, which can lead to runtime errors. 

The `bug.cob` file contains the program with the bug. The `bugSolution.cob` file provides a corrected version with improved input validation.