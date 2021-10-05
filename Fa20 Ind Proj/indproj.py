import csv
import country as Cpy
import date as dpy
#import numpy as np
#from operator import itemgetter
with open('global_coronacases.csv', newline='') as cases:
    reader = list(csv.reader(cases))
    c = Cpy.country()
    j = dpy.date()
def findrow():

    for row in reader:
        if row[1] == c:
            return row
def findidx():
    for idx, date in enumerate(reader[0]):
        if date == j:
            count = 0
            for i in findrow():
                if count < idx:
                    count += 1
                elif count == idx:
                    #l.append(i)
                    return idx
                    count +=1 
                elif count > idx:
                        break

def findelem():
    list1 = []
    list1.append(findrow())
    print(list1)
    for i in range(10):
        print([x[findidx()] for x in list1])
findelem()


    
        #print(', '.join(l))
        #print("Number of cases in {c} is {i}",sum(l))

            
                