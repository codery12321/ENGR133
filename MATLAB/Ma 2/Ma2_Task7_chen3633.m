%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%sort arrays
%
% Assignment Information
%   Assignment:     Ma2 Task 7
%   Author:         Yolanda, chen3633@purdue.edu
%   Team ID:        LC1-15
%  	Contributor:    Name, login@purdue [repeat for each]
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
%set the initial vector 
v = [10 5 1 8 -9 0 2 3]

%% ____________________
%% CALCULATIONS
% two for loops that iterates through each elements of v
%the built in function sort() helps sort the elements in descending and
%ascending order
    for f = 1:length(v)
        A = sort(v, 'ascend');
    end
    

    for f = 1: length(v)
        D = sort(v, 'descend');
    end
    


%% ____________________
%% OUTPUTS
%display the output using disp
disp('Vector sorted in ascending order:')
disp(A)
disp('Vector sorted in descending order: ')
disp(D)

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.