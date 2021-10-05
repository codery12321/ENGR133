%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%determine the unknown distances, a and c, and the unknown angle, B
%
% Assignment Information
%   Assignment:     Ma1_Task 4
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
%the given data
sideB = input('Distance b: ');
a_ang = input('Angle A: ');
c_ang = input('Angle C: ');

%% ____________________
%% CALCULATIONS
angA = 25*(pi/180);
angC= 37*(pi/180);
b_ang= (180 - a_ang - c_ang);
angB = b_ang*(pi/180);
sideA = round((sideB/sin(angB))*sin(angA));
sideC = round((sideB/sin(angB))*sin(angC));

%% ____________________
%% OUTPUTS

fprintf('Distance a: %.0f meters\n', sideA)
fprintf('Distance c: %.0f meters\n', sideC)
fprintf('Angle B: %.1f degrees\n',b_ang)


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.