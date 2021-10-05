"""
===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Fa20 Individual Project
	Author:         Yolanda, chen3633.purdue.edu
	Team ID:        LC1-15 
	
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
import sys #import sys for later use
from datetime import datetime #import datetime so we can format the date
def date(): #2nd user def function
    num = []
    while True: #1st while loop
        num = input("Enter the date in MMDDYYYY format: ") #prompts user to input date
        datetimeobject = datetime.strptime(num,'%m%d%Y') #change the date into the desired format
        newformat2 = datetimeobject.strftime('%-m/%-d/%y') #remove the leading zeros
        if len(num) == 8: #make sure user inuts correct format
            if num.isalpha() == False:
                print("Correct format. Proceeding...")
                break 
            else:
                print("Not a number. Try again. ")
                sys.exit(1) #system exits because user did not enter a number
        else:
            print("Not correct format. Try again.")
            sys.exit(1) #system exits because user did not enter the correct format
    return newformat2

"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""