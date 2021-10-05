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
import sys #import sys so we can do exit()
def country():  # 1st user def function
    Count1 = input("Enter the country: ") #prompts user to input the country
    Country = Count1.replace(" ", "") #replace the white space if country name is more than 1 word
    Country = Country.isalpha() #check if input is al alphabets
    if Country == False: #if output is false then prompts user to try again
        print("Enter a country name. Try again.")
        sys.exit(1) #exits program
    else:
        Country = Count1.title()    #capitalize the first word of the country
    return Country

"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""

