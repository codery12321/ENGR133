#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Sep 29 21:06:28 2020

@author: yolanda
"""

f = open('Py4_Task1_output.txt', 'w')

last = input("Enter your last name: \n")
first = input ("Enter your first name: \n")
years = int(input("Enter your age in whole years: \n"))
days = int(input("Enter the days elapsed since your last birthday: \n"))

y = years +(days*(1/365.242199))
s = y * (3600*24*365.242199)

f.write(f"{first} {last}\n")
f.write(f"You are {y} years old.\n")
f.write(f"You are {s} seconds old.\n")

f.close()