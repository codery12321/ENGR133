%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%calculate the age of person when the balance finally exceeds $1 million
%
% Assignment Information
%   Assignment:     Ma2 Task 6
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
%set the initial values like balance, year and age
balance = 0 ;
t = 0;
age = 25;

%% ____________________
%% CALCULATIONS
% use the while loop to calculate the totla amount after the year
% t increases by one because this is compounded annually
while balance < 1000000
    balance = balance +11000
    balance = balance + (balance*.02)
    t = t+1;
 
end
%because we want the age of the person after their bank account exceeds 1
%million we have to add the total number of years to their initial age
ageMil = t+age;
    
%% ____________________
%% OUTPUTS
%use fprinf to print the output
fprintf('The savings account would exceed $1 million after %.0f years\n', ageMil)

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.