#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 24 10:10:47 2020

@author: yolanda

===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py 2 Task 7
	Author:         Yolanda, chen3633@purdue.edu
	Team ID:        LC1-15 

===============================================================================

"""

def pressure(R, T, V, a, b):
    pres = (((R*T)/(float(V)-b))-(a/float(V)**2))
    return pres


def temperature(P, R, V, a, b):
   
    temp = ((P+(a/float(V)**2))*(float(V)-b))/R
    return temp
    

"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""