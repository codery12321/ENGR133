function [d, dcm] = Ma3_Task2_line_chen3633(x1,x2,y1,y2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%Find where the security camera is located
%
% Function Call
%location(x, y)
%
% Input Arguments
%x
%y
%
% Output Arguments
%office
%lobby
%vestibule
%observatory
%exbihit hall
%
% Assignment Information
%   Assignment:     Ma3_Task 2 
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
d = sqrt((x2-x1)^2+(y2-y1)^2);

dcm = Ma3_Task2_INtoCM_chen3633(d);

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