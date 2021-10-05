%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%
%
% Assignment Information
%   Assignment:     Ma3_Task 1
%   Author:         Yolanda, chen3633@purdue.edu
%   Team ID:        LC1-15
%  	Contributor:    Collin Gernhardt, cgernhar@purdue.edu
%                   Rachel Evrard, revrard@purdue.edu
%                   Jonathan Budiman, jbudiman@purdue.edu
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
s = 50;
w = 60;
Aconst = 0.75;
vert = 45*(180/pi);
slatAng = 30*(180/pi);

%% ____________________
%% CALCULATIONS


[F1, F2, F3] = Ma3_Task4_fractions_chen3633(slatAng, s, w);
b = Ma3_Task4_transmission_chen3633(F1, F2, F3, slatAng, w, s, vert, Aconst);
c = Ma3_Task4_absorb_chen3633(F2, vert, slatAng, Aconst, s, w);


%% ____________________
%% OUTPUTS

fprintf("The transmission value for Blind 1 at setting 1 is %f.\n", b)
fprintf("The absorption value for Blind 1 at setting 1 is %f\n",c)
%%_____________________
%% COMMAND WINDOW OUTPUTS
%setting 1
%The transmission value for Blind 1 at setting 1 is 0.108569.
%The absorption value for Blind 1 at setting 1 is 0.827630
%setting 2
%The transmission value for Blind 1 at setting 1 is -0.927919.
%The absorption value for Blind 1 at setting 1 is 1.380940
%setting 3
%The transmission value for Blind 1 at setting 1 is 1.186630.
%The absorption value for Blind 1 at setting 1 is -0.136585
%
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.