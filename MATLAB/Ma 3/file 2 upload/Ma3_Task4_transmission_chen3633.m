function [trans] = Ma3_Task4_transmission_chen3633(F1, F2, F3, slatAng, w, s, vert, Aconst)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%calculate the total fraction of incident radiation transmitted by the blind
%
% Function Call
%Ma3_Task4_transmission_chen3633(slatAng, w, s, vert, Aconst)
%
% Input Arguments
%slatAng, w, s, vert, Aconst
% Output Arguments
%Td
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
trans = 1-(w/s)*(sin(vert +slatAng)/cos(vert))*(1-F1*(1-Aconst)-((F2*(1-Aconst)^2*(F3+F1*F2*(1-Aconst)))/(1-F2^2*(1-Aconst)^2)));


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