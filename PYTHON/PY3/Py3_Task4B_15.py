#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Sep 28 20:29:36 2020

@author: yolanda

===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py1 Task 1
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

x = int(input("Enter the x value: "))
TarThres = int(input("target error threshold: "))

act_val= round(float(math.exp(x)), 2)
print(f"Actual Value: {act_val}")



def approx(x, n):
    eApprox = 0
    for i in range(n):
        eApprox += x**i/py.my_factorial(i)
    return eApprox
    app_val = "%.2f" % approx(x, n+1)
    return app_val


i = 0
while i < 100:
    app_val = approx(x, i)
    err = 100*((float(app_val) - float(act_val))/float(act_val))
    err = round(err, 1)
    
    
    if abs(int(float(err))) <= TarThres:
        break
    i += 1
print (f"Terms need: {i}")
print(f"Approximate Value: {round(app_val, 2)}")
       

"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""

