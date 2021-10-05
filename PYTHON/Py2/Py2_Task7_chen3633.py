#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 24 10:10:06 2020

@author: yolanda

===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py 2 Task 7
	Author:         Yolanda, chen3633@purdue.edu
	Team ID:        LC1-15 

===============================================================================

"""
import Py2_Task7_functions_chen3633 as py

T = int(input("Enter the initiial value of T: "))
V = input("Enter the molar volume: ")
a = 6.49
b =  0.0562
R = 0.0820573661

P = 1.1
PP = 1.2

t= py.temperature(P, R, V, a, b) #temperature at pressure = 1.1
tt = py.temperature(PP, R, V, a, b) #temp at pressure = 1.2

p = round(py.pressure(R, T, V, a, b), 4)

print("Initial Conditions:")
print(f"Molar Volume: {V} [L/mol]")
print(f"Initial Temperature: {T} [K]")
print(f"Parameter a = {a} [L^2*atm/(mol^2)]")
print(f"Parameter b = {b} [L/mol]")
print(f"Resulting Pressure: {p} [atm]")

if V == 0 or T == 0:
        print("error: cannot calculate; bye bye")
        
elif p < 1.1:

    while p < 1.1:
        newTemp= round((T-t), 2)
        print(f"Required temperature decrement for in-range pressure: {newTemp} [K]")
        newtemp1 = round((T-newTemp), 2)
        print(f"New Temperature is: {newtemp1}[K]")
        newpres = round(py.pressure(R, newtemp1, V, a, b), 2)
        print(f"New Pressure is: {newpres}")
        break
elif p > 1.2:
    
    while p >1.2: 
       newtemp = round((tt-T), 2)
       print(f"Required temperature increment for in-range pressure: {newtemp} [K]")
       newtemp1 = round((T+newtemp),2)
       print(f"New Temperature is: {newtemp1}[K]")
       newpres = round(py.pressure(R, newtemp1, V, a, b), 2)
       print(f"New Pressure is: {newpres}")
       break

    
else:
    print (f'Resulting pressure: {p} [atm]')

"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""