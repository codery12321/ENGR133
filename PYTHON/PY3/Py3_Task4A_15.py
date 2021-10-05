#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Sep 28 15:56:42 2020

@author: yolanda

===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py3 Task 4
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
import math

n = int(input("Enter the n value: "))
x = int(input("Enter the x value: "))



def approx(x, n):
    eApprox = 0
    for i in range(n):
        eApprox += x**i/py.my_factorial(i)
    return eApprox
app_val = "%.2f" % approx(x, n+1)
print(f"Approximate Value: {app_val}")


act_val= round(float(math.exp(x)), 2)
print(f"Actual Value: {act_val}")


err = 100*((float(app_val) - float(act_val))/float(act_val))
err = round(err, 1)
print (f"Error: {err}")


"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""
