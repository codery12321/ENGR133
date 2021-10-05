#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Sep 29 22:30:49 2020

@author: yolanda

===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py 3 Task 5
	Author:         Yolanda, chen3633@purdue.edu
	Team ID:        LC1-15 

===============================================================================

"""

import math


def f(n, x):
    s = (pow(-1, n))*pow(x, 4*n+3)/((4*n+3)*math.factorial(2*n+1))
    return s



"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""

