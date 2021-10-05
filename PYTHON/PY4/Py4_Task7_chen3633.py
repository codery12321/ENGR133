#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct  6 15:21:59 2020

@author: yolanda
===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py 4 Task 7
	Author:         Yolanda, chen3633@purdue.edu
	Team ID:        LC1-15 

===============================================================================

"""

with open(input("Enter the filename of the text file: "), 'r') as f:

    word = input("Enter the search word: " )
    wordlow = word.lower()
    numwords = 0
    k = 0
    for line in f:    
        words = line.split()
        for i in words: 
            if i == wordlow:
                k = k +1
        numwords += len(words)
        percentage = 100*(k/numwords)
        perRound = round (percentage, 2)
    print(f"The search word occurred {perRound}% of the time.")
    

"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""

