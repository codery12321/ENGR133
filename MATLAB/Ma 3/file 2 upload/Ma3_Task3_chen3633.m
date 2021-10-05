function disp_fun_task3 = Ma3_Task3_chen3633(arrayy)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%
%
% Assignment Information
%   Assignment:     Ma3_Task 3
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
a = [1 2 3 4 5 6 7;1 2 3 4 5 6 7;1 2 3 4 5 6 7;1 2 3 4 5 6 7];


%% ____________________
%% CALCULATIONS
elem = 1;
    for k = 1:length(a)
            
            a(1:end,1:2:end)= 30;
            a(1:end, 2:2:end) = 45;
            a(:,2) = 60;
            a(:,7) = 0;
    end
  
    
        
        
%% ____________________
%% OUTPUTS
disp("M T W Th F Sa Su")
disp(a)

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.