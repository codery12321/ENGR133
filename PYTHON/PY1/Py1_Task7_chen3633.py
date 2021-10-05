#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Sep 15 15:46:17 2020

===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py1 Task7
	Author:         Yolanda, chen3633@purdue.edu
	Team ID:        LC1-15
	
===============================================================================
"""


import math #import math for later use


listA = 'Type', 'First', 'Second', 'Equivalent Inductance' #set the list so we can find the one with the longest characters

max(listA, key=len)#find the longest word

Fir_Ind=f"{input('Input the first inductance value: ')}" #set first inductance 
Sec_Ind= f"{round(math.sqrt(3.14)*math.pi, 1)}" #set second inductance
series_ind= float(Fir_Ind) + float(Sec_Ind) #formula for calculating equivalent inductance for series inductance
parallel_ind= round(1/((1/float(Fir_Ind))+(1/float(Sec_Ind))),1) #formula for calculating equivalent inductance for paralell inductance


#print the table


print('{0:<19}{1:<19}{2:<19}{3:<19}'.format('Type', 'First', 'Second', 'Equivalent Inductance'))
# 0, 1, 2, 3 stands for the columns
#19 is the number of characters for the longest word in first row

print(f"Series {Fir_Ind:>17} {Sec_Ind:>19} {series_ind:>19} ")
print(f"Parallel {Fir_Ind:>15} {Sec_Ind:>19} {parallel_ind:>19} ") 
#print so that the numbers are in the right column


"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================

"""