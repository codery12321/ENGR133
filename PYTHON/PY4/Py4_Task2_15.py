#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Oct  1 17:51:13 2020

@author: yolanda
===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py4 Task 2
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
import math as m

def avg_std(grades):
    avg = sum(grades)/len(grades)
    Sum = 0
    for x in grades:
        Sum += ( x - avg)**2
    Stdev = m.sqrt(Sum / len(grades))
    
    return avg, Stdev
    print(avg)  

       
f = open('Py4_Task2_input.txt', 'r')

grades = []   

for i in f:
    x = i.split()
    grades.append(int(x[1]))
    
avg, Stdev = avg_std(grades)

def Hi_Lo(grades):
    return max(grades), min(grades)

high, low =  Hi_Lo(grades)

fileOut = open('Py4_Task2_output.txt', 'w')
fileOut.write('Exam 1: \n')
fileOut.write(f'Average: {avg} \n')
fileOut.write(f'Standard Deviation: {Stdev} \n')
fileOut.write(f"High Score: {high} \n")
fileOut.write(f"Low Score: {low} \n")

"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""

