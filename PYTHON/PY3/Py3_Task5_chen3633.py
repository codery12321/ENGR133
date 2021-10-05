#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Sep 29 15:29:28 2020

@author: yolanda

===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py 3 Task 5
	Author:         Yolanda, chen3633@purdue.edu
    Contributors:   Ishika Jindal, ijindal@purdue.edu
	Team ID:        LC1-15 

===============================================================================

"""
import sys
import Py3_Task5_functions_chen3633 as py
import math


a = int(input("Enter the lower limit of integration: "))
b = int(input("Enter the upper limit of integration: "))
nDec = int(input("Enter the number of decimal places for convergence: "))
nTerm = int(input("Enter the maximum number of terms to calculate: "))

try:
    val = int(a)
    
except ValueError:
    try:
        val = float(a)
        
    except ValueError:
        print("Error 1: Input is a string. TRY AGAIN.")

try:
    val = int(b)
    
except ValueError:
    try:
        val = float(b)
        
    except ValueError:
        print("Error 1: Input is a string. TRY AGAIN.")


while True:
    
    try:
        val = int(nDec)
        break;
    except ValueError:
        try:
            float(nDec)
            print("Input is an float number.")
            break;
        except ValueError:
            print("This is not a number. Please enter a valid number")
            break
while True:
    
    try:
        val = int(nTerm)
        break;
    except ValueError:
        try:
            float(nTerm)
            print("Error 2: Input is an float number.")
            break;
        except ValueError:
            
            print("Error 2: This is not a number. Please enter a valid number")
            break
if int(float(nDec)) >= 0 or int(float(nTerm)) >= 0:
    pass
else:
    print("Error 2: Please enter a positive number. Try again ")
    sys.exit()




n=0
sintlist = []
arr=[0]*nTerm
for n in range(nTerm):
    what = py.f(n, b)-py.f(n, a)
    sintlist.append(what)
    sum_s = round(sum(sintlist), nDec)
    print(f"n = {n}: sum = {sum_s}") 
    arr[n] = sum_s
    if  arr[n] == arr[n-1] == arr[n-2]:
        break

        
print(f"The integral from {a} to {b} is estimated to be {sum_s}")
print(f"Total number of terms: {n}")

"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""

