#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 24 20:16:40 2020

@author: yolanda
===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py3 Task 2
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
n = int(input("Enter number: "))

def my_factorial(n):
    fac  = 1;
    
    if n > 0:
        for x in range(1, n+1):
            fac *= x
           
        print(fac)
    
    elif  n < 0:
        print("error 404 [ Negative Value] ")
            
            
    else:
        print("1")
        
my_factorial(n)



"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""

