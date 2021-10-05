#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Sep 21 19:53:20 2020

@author: yolanda

===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Py2 Task 6
	Author:         Yolanda, chen3633@purdue.edu
	Team ID:        LC1-15 

===============================================================================

"""
import math #so we can use the radians, sin, asin, tan functions later on

#set variables
a1 = math.radians(int(input("Enter the incoming angle [degrees]: ")))
n1 = str(input("Enter the refractive index of medium 1 [unitless]: "))
n2 = str(1.3)
d1 = str(3.8)
d2 = str(9.1)
c_ang2= math.radians(90)

#user defined function for the angle and ending distance.
def angle1():
    a2 = (float(n1)*float(math.sin(a1)))/float(n2)
    ans = round(math.degrees(math.asin(a2)), 1)
    crit_ang =  float(n2)/float(n1)
  
    if a1 > crit_ang:
        print("Total Internal Refraction occurs.")
    elif a1 <= crit_ang:
        if a2 != 90:
            print ("There is refraction with a leaving angle of " + str(ans) + " degrees.")
angle1()

def end_dis():
    
    a2 = (float(n1)*float(math.sin(a1)))/float(n2)
    ans_a2 = math.asin(a2)
    
    d3_pt1 = float(d1)*math.tan(a1)
    d3_pt2 = float(d2)*float(math.tan(ans_a2))
    
    d3 = d3_pt1 + d3_pt2
    x = round(d3, 1)
    print(f"The ending distance for the light ray is {x}cm")
end_dis()

#calculate the critical angle for the two medians
c_ang_form = math.asin(float(n2)/float(n1))
ans = round(math.degrees(c_ang_form), 1)
print(f"For these two media, the critical angle is {ans} degrees.")

"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""
