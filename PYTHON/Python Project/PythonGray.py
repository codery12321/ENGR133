'''
===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     e.g. Py1 Task 1
	Author:         Jonathan Budiman, jbudiman@purdue.edu
	Team ID:        LC1-15
	
Contributors:   Yolanda Chen, chen2633@purdue 
                Collin Gernhardt, cgernhar@purdue 
                Rachel Evrard, revrard@purdue 
	My contributor(s) helped me:	
	[X] understand the assignment expectations without
		telling me how they will approach it.
	[X] understand different ways to think about a solution
		without helping me plan my solution.
	[X] think through the meaning of a specific error or
		bug present in my code without looking at my code.
	Note that if you helped somebody else with their code, you
	have to list that person as a contributor here as well.
===============================================================================
'''
#Imported numpy for it's useful array function
import numpy as np

def rgbG(RGB):
    grayArray = np.zeros((len(RGB), len(RGB[0])))
    
    #Convert png image to 3D matrix
    RGB = np.asarray(RGB)
    
    #Get first 3 values (R, G, B) of RGB array, 4th value is irrelevant and not needed
    RGB = RGB[...,:3]
    
    tempSum = 0
    #Return the 'intensity' of the image by multiplying RGB values by acceptable amount
    for i in range(len(RGB)):
        for j in range(len(RGB[0])):
            #Add values of RGB by appropriate scaling to get intensity
            tempSum += RGB[i][j][0]*0.2126
            tempSum += RGB[i][j][1]*0.7152
            tempSum += RGB[i][j][2]*0.0722
            
            #Add intensity value to appropriate point in matrix
            grayArray[i][j] += tempSum
            
            #Reset sum
            tempSum = 0
    return grayArray
'''
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
'''