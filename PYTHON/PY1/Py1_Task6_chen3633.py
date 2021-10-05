# -*- coding: utf-8 -*-
"""
===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py1 Task6
	Author:         Yolanda, chen3633@purdue.edu
	Team ID:        LC1-15
	
===============================================================================
"""
import random
from fractions import Fraction as fr

random.seed(int(input("Enter the seed: ")))

rand1 = round(random.uniform(0, 100), 2)
rand2 = round(random.uniform(0, 100), 2)
rand3 = round(random.uniform(0, 100), 2)

print('The first random number is: ', rand1)


print('The second random number is: ', rand2)


print('The third random number is: ', rand3)


listA=[rand1, rand2, rand3]

print('Sum for decimals: ', sum(list(listA)))

listb= [fr(rand1+rand2+rand3).limit_denominator(100)]

print('Sum for fractions: ', sum((listb)))


"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================

"""