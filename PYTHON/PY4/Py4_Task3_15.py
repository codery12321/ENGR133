
"""
Created on Fri Oct  2 10:40:54 2020

@author: yolanda

===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py4 Task 3
	Author:         Yolanda, chen3633@purdue.edu
	Team ID:        LC1-15 
	
Contributors:   Collin Gernhardt, cgernhar@purdue.edu
                Rachel Evrard, revrard@purdue.edu
                Jonathan Budiman, jbudiman@purdue.edu
               
	My contributor(s) helped me:	
	[ ] understand the assignment expectations without
		telling me how they will approach it.
	[ ] understand different ways to think about a solution
		without helping me plan my solution.
	[ ] think through the meaning of a specific error or
		bug present in my code without looking at my code.
	Note that if you helped somebody else with their code, you
	have to list that person as a contributor here as well.
===============================================================================

"""
with open('Py4_Task3_input.txt', 'r') as fin:
    numoflines = int(fin.readline())
    
    string = []
    list1 = []
     
    for line in fin:
        string.append(line)
        list1.append(line.split())

    
with open('Py4_Task3_output.txt', 'w') as fout:
    for a in range(len(list1)):
        fout.write(f'{string[a]}')
        fout.write(f'{list1[a]}\n')
   

"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""

