#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Oct  3 12:02:34 2020

@author: yolanda
===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py4 Task 5
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

def Absorb_Calc(plength, coeff, ListA):
    listCalc = []
    for i in listA:
        listCalc.append(plength*coeff*i)
        
    return listCalc

with open('Py4_Task5_input.txt', 'r') as f:
    chemical = f.readline()
    plength = int(f.readline())
    coeff = float(f.readline())
    
    listA = []
    for line in f:
         listA.append(float(line.rstrip('\n')))
         
    listF = Absorb_Calc(plength, coeff, listA)
    print(f' {chemical} Concentrations: \n')
    for element in listF:
        print(f'{element}')
        
        


"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""

