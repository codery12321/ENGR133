function maclaurin(x, n)
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
%prmpt the user to enter the initial x and threshold values
x = input('enter the x value: ');
Tar = input('enter the target error threshold: ');
act_val = round(exp(x), 2);

%% ____________________
%% CALCULATIONS

%calculate the approx and then iterates through the for loop to calculate
%when the error exceeds the target error threshold
zz=0;
while zz <100
    approx = 0;
    for k = 0:100
        eApprox = x^k/factorial(k);
        approx = approx + eApprox;
        err = 100*((approx - act_val)/(act_val));
    
        if abs(err) < Tar;
            break
        end
    end
    
    
  k = k+1;
  break
end




%% ____________________
%% OUTPUTS
fprintf('Target error Threshold: %.1f\n', Tar)
fprintf('Actual value: %.2f\n', act_val)
fprintf('Terms needed: %f\n', k)
fprintf('Approximate value: %.2f\n', approx)
end
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.