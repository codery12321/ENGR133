function[F1, F2, F3] = Ma3_Task4_fractions_chen3633(slatAng, s, w)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%calculate and return F1, F2, and F3
%
% Function Call
%function Ma3_Task4_fractions_chen3633(f)
%
% Input Arguments
%slatAng
%s
%w
%
% Output Arguments
%F1
%F2
%F3
%
% Assignment Information
%   Assignment:     Ma3_Task 4
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



%% ____________________
%% CALCULATIONS
F1 = (1/2)*(1+s/w - sqrt(1+(s/w)^2+2*(s/w)*sin(slatAng)));
F2 = (1/2)*(sqrt(1+(s/w)^2+2*(s/w)*sin(slatAng)))+sqrt(1+(s/w)^2-2*(s/w)*sin(slatAng))-2*(s/w);
F3 = (1/2)*(1+(s/w)-sqrt(1+(s/w)^2-2*(s/w)*sin(slatAng)));

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS


%% ____________________
%% COMMAND WINDOW OUTPUT


end
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.