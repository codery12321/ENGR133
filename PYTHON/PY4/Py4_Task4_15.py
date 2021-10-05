#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Oct  2 11:12:45 2020

@author: yolanda


===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py4 Task 4
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
import calendar as c
def months(month):
    n = 0
    for n in range(1, 13):
        return c.month_name[n]
    

def Sort_Dates(arr_my):
    future= []
    present = []
    past = []
    cM = c.month_name[10]
    
    for a in range (len(arr_my)):
        if arr_my[a][1] >2020:
            future.append(arr_my[a])
        elif arr_my[a][1] < 2020:
            past.append(arr_my[a]) 
        else:
            temp = months(arr_my[a][0])
            
            if cM > temp:
                past.append(arr_my[a])
            elif cM < temp:
                future.append(arr_my[a])
            else:
                present.append(arr_my[a])
    return future, present, past



with open('Py4_Task4_input.txt', 'r') as fin:
    arr_my = []
    for line in fin:
        temp = line.split()
        tempY = int(temp[1])
        tempM = temp[0]
        temp2D = [tempM, tempY]
        arr_my.append(temp2D)
        
    future, present, past = Sort_Dates(arr_my)
    
    
   
with open('Py4_Task4_output.txt', 'w') as fout:
    fout.write(f"Future months: {len(future)} \n")
    for m in future:
        fout.write(f"{m[0]} {m[1]} \n")
    fout.write(f"Past Months: {len(past)} \n")
    for m in past:
        fout.write(f"{m[0]} {m[1]} \n")
    fout.write(f"Present Months: {len(present)} \n")
    for m in present:
        fout.write(f"{m[0]} {m[1]} \n")
"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""

