function maclaurin(x,n);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%
%
% Assignment Information
%   Assignment:     Ma2 Task 5
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
%prompt the suer to input the initial values of n and x
n = input("Enter the n value: ");
x = input("Enter the x value: ");

%% ____________________
%% CALCULATIONS
%calculate the approximated sum using the for loop
approx = 0;
for k = 0:n
    eApprox = x^k/factorial(k);
    approx = approx + eApprox;

end
%calculate the actual value using the built in function exp()
act_val = round(exp(x), 2);
err = 100*((approx-act_val)/act_val);

    
%% ____________________
%% OUTPUTS
%use fprintf to print the formatted output
fprintf("Approximate value: %.2f\n", approx)
fprintf("Actual Value: %.2f\n", act_val)
fprintf('Error: %.1f%% \n', err);


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.