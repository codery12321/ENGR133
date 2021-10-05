"""
===============================================================================
ENGR 133 Fa 2020

Assignment Information
	Assignment:     Fa20 Individual Project
	Author:         Yolanda, chen3633.purdue.edu
	Team ID:        LC1-15 
	
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

"""
import csv #import csv so that we can read the files
import country as Cpy #import the user define functions from another script
import date as dpy
def findrow(): #3rd user def function
    for row in reader: #find the row corresponding to the country
        if row[1] == c:#vector
            return row
with open('global_coronacases.csv', newline='') as cases: #open data files
    reader = csv.reader(cases)
    reader = list(reader)#make the files into lists in list
    c = Cpy.country()
    j = dpy.date()
for idx, date in enumerate(reader[0]):#Nested loop; iterate throught the 1st row to find corresponding dates
    if date == j: #start counting if the date matches the input date
        count = 0
        for i in findrow():
            if count < idx:
                count += 1 #add 1 to count when count does not match idx 
            elif count == idx: #print message when number corresponding to country and date is found
                print(f"Number of cases in {c} is {i}")
                count +=1 
            elif count > idx: #exit loop when count is larger than idx
                    break
with open('global_coronadeaths.csv', newline='') as death: 
    reader = csv.reader(death)
    reader = list(reader)
    c = Cpy.country()
    j = dpy.date()
for idx, date in enumerate(reader[0]):
    if date == j:
        count = 0
        for i in findrow():
            if count < idx:
                count += 1
            elif count == idx:
                print(f"Number of deaths in {c} is {i}")
                count +=1 
            elif count > idx:
                    break
with open('global_coronarecovered.csv', newline='') as rec:
    reader = csv.reader(rec)
    reader = list(reader)
    c = Cpy.country()
    j = dpy.date()
for idx, date in enumerate(reader[0]):
    if date == j:
        count = 0
        for i in findrow():
            if count < idx:
                count += 1
            elif count == idx:
                print(f"Number of recovered in {c} is {i}")
                count +=1 
            elif count > idx:
                    break
                
"""
===============================================================================
ACADEMIC INTEGRITY STATEMENT
    I have not used source code obtained from any other unauthorized
    source, either modified or unmodified. Neither have I provided
    access to my code to another. The project I am submitting
    is my own original work.
===============================================================================
"""