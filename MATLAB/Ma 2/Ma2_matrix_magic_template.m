%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%
% Assigment Information
%   Assignment:		PS MA2, Problem 1
%   Author:         Yolanda, chen3633@purdue.edu
%   Team ID:        LC1-15
%  	Paired Partner: Collin Gernhardt, cgernhar@purdue.edu
                    %Rachel Evrard, revrard@purdue.edu
                    %Jonathan Budiman, jbudiman@purdue.edu
%   Contributor:		Name, login@purdue [repeat for each]
%   Our contributor(s) helped us:	
%     [ ] understand the assignment expectations without
%         telling us how they will approach it.
%     [ ] understand different ways to think about a solution
%         without helping us plan our solution.
%     [ ] think through the meaning of a specific error or
%         bug present in our code without looking at our code.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%% ____________________
%% INITIALIZATION
A = zeros(4,4)
vals = [ 1 3 2 4; 5 6 7 8; 9 10 11 12; 13 15 14 16]

%% ____________________
%% COPY & CONCATENATION
M = vals(2:3, 2:3)
C = vals(1:1, 2:3)
D = vals(4:4, 2:3)
E = [vals(1,1) D vals(1,4)]
F = [vals(4,1) C vals(4,4)]
%% ____________________
%% REPLACE MATRIX ELEMENTS

A = [E; 0 M(1,:) 0; 0 M(2,:) 0; F]
A = [E; vals(3,4) M(1,:) vals(3,1); vals(2,4) M(2,:) vals(2,1); F]
%% ____________________
%% FINAL MATRIX
x = sum(A)
G = [A;x]
Y = sum(G,2)
H = [G Y]
H(5,5) = H(1,1) +H(2,2) +H(3,3)+H(4,4)
%% ____________________
%% FORMATTED TEXT DISPLAY 
fprintf('After doing step 8.e, the value in the center of H is %d \n', H(3,3))
fprintf('After doing step 8.e, the value in the upper left of H is %d\n', H(1,1))
fprintf('and the value in the upper right of H is %d \n', H(1,5))
fprintf('After doing step 8.e, the value in the lower left of H is %d\n', H(5,1))
fprintf('and the value in lower right of H is %d \n', H(5,5))

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have we provided
% access to our code to another. The script we are submitting
% is our own original work.
