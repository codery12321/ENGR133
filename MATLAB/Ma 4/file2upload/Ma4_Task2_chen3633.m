function [out1 out2] = Ma4_Task2_chen3633(dpipe, drod)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%create a function that will determine the velocity of a fluid moving through the pipe for different configurations.
%
% Function Call
%Ma4_Task2_chen3633(dpipe, drod)
%
% Input Arguments
%dpipe
%drod
%
% Output Arguments
%replace this text with a commented list of the output arguments
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
m = 2;
p = 1000;



%% ____________________
%% CALCULATIONS
for k = 1:size(drod)
    A = dpipe(k)-drod
    if all(dpipe<=0) ||all(drod<=0)
    disp("[-1 -1]")
    end
    u = m/(p*A)
    
end


%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS



%% ____________________
%% COMMAND WINDOW OUTPUT
Ma4_Task2_chen3633(0.01:0.01:0.05,0.03:0.02:0.09)
Ma4_Task2_chen3633([5 10 3],[0 1 2 3 4])
Ma4_Task2_chen3633([5 8 10],[2 4])

end
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.