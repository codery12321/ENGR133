#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Sep 28 14:10:18 2020

@author: yolanda

===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py3 Task 3
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
import Py3_Task3_factorial_15 as py



n = [int(i) for i in input("Numbers whose factorials will be evaluated:").split()]

n_fac = []

for x in n:
    n_fac.append(py.my_factorial(x))
    
for a in range(len(n_fac)):
    if n_fac[a] < 0:
        print("Error: factorial routine requires positive integers.")
    elif n_fac[a] > 0:
        print(f"The factorial of {n[a]} is {n_fac[a]}.")
    else:
        print("1")
    




"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""
