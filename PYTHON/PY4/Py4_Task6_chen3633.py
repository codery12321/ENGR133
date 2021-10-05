
"""
Created on Tue Oct  6 14:53:47 2020

@author: yolanda
===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py 4 Task 6
	Author:         Yolanda, chen3633@purdue.edu
	Team ID:        LC1-15 

===============================================================================

"""
with open(input("Enter the filename of the input file: "), 'r') as f:
    with open(input("Enter the filename of the output file: \n"), 'w') as fout:
        lines = f.readlines()
        for i in range(1, len(lines)):
            fout.write(f"Step {i}: {lines[i]}")
            
        
"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""
