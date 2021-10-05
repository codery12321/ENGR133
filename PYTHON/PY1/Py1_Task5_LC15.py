#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Sep 13 11:03:39 2020

@author: yolanda
"""
'''
===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py1 Task 5
	Author:         yolanda, chen3633@purdue.edu
	Team ID:        LC1-15 
	
Contributors:   None, I missed the team meeting this week so I did this by myself

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
'''
r = int(input('Enter a radius:')) #input

print('The radius is ', r) #print radius 

h =int(input('Enter a height:')) #input

print('The height is ', h)#print height

import math #import math so we can use math.pi later on

def Area_Cone(r): #define a function
    Area = math.pi*r*(r+math.sqrt(h**2+r**2))
    return Area #ends the execution of the function Area_Cone

Output = Area_Cone(r) #name the function

#print the words so it will show the answer in a sentence
#add round() for output so that there are no decimals
print('The area of the cone with radius '+ str(r) + 'cm and height ' + str(h)+'cm')
print(f' is {round(Output)}cm**2] ') 

'''
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
'''