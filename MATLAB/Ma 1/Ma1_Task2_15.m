%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%Write a MATLAB script to find the volume of the cylinder in U.S. gallons, as well as the tank dimensions in feet.
%
% Assignment Information
%   Assignment:     Ma1_Task 2
%   Author:         Yolanda, chen3633@purdue.edu
%   Team ID:        LC1-15
%  	Contributor:     Collin Gernhardt, cgernhar@purdue.edu
                    %Rachel Evrard, revrard@purdue.edu
                    %Jonathan Budiman, jbudiman@purdue.edu
%   My contributor(s) helped me:	
%     [ ] understand the assignment expectations without
%         telling me how they will approach it.
%     [ ] understand different ways to think about a solution
%         without helping me plan my solution.
%     [ ] think through the meaning of a specific error or
%         bug present in my code without looking at my code.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
%set the dimensions for both
d = 6
h = 10

dd = 4
hh = 9
%% ____________________
%% CALCULATIONS
%equation for capcacity
capacity = pi*((d/2)^2)*h
ccapacity = pi*((dd/2)^2)*hh
%% ____________________
%% OUTPUTS
%output for Part A
disp('The capacity in U.S. gallons is:') 
capacity
%output for Part B
fprintf('The capacity is %.0f U.S. gallons. \n',ccapacity)
fprintf('The tank has a diameter of %.1f ft and is %.1f ft tall.\n', dd, hh)
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.


