%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%plot data using matlab
%
% Assignment Information
%   Assignment:     Ma1_Task 5
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
x = -50:0.1:50; %set the x values from -50 to 50 with increments of 0.1


%% ____________________
%% CALCULATIONS
y = x - ((x.^3)/factorial(3)) + ((x.^5)/factorial(5))-((x.^7)/factorial(7));%equation for y
plot(x,y,'bs')%plot the values of y with respect to the values of x with the line as blue and square markes
%% ____________________
%% OUTPUTS
xlabel('Angle(radians)');%set label for x axis
ylabel('Value of sine');%set label for y axis
title('Taylor Series Approximation');%set title for the graph

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.