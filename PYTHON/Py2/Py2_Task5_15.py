#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Sep 18 09:55:01 2020

@author: yolanda

===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py2 Task 5
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
import Py2_Task5_discriminant_15 



a=int(input("enter a: "))
b=int(input("enter b: "))
c=int(input("enter c: "))
d=int(input("enter d: "))

print("The inputs are: ")
print("a="+ str(a), "b="+ str(b), "c=" + str(c),"d=" + str(d))

dis = Py2_Task5_discriminant_15.discriminant(a, b, c, d)


if dis > 0:
    print("Real and distinct three roots: True ")
    print("Real with at least two equal roots: False")
    print("Conjugate pair of complex roots: False")

        
    if dis == 0:
        print("Real and distinct three roots: False ")
        print("Real with at least two equal roots: True ")
        print("Conjugate pair of complex roots: False")
    
else:
    print("Real and distinct three roots: False ")
    print("Real with at least two equal roots: False")
    print("Conjugate pair of complex roots: True")

    
    
    

"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""
