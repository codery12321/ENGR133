function Ma4_Task1_chen3633(maxx, ind)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%find a suitable community pool
%
% Function Call
%Ma4_Task1_chen3633(maxx, ind)
%
% Input Arguments
%maxx, ind
%
% Output Arguments
%n/a
%
% Assignment Information
%   Assignment:     Ma4_Task 1
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

file = csvread('Data_pool_info.csv',1,0);
reqSurfA = 25;
capacity = file(:, 1);
depth = file(:, 2);
length = file(:, 3);
width = file(:, 4);


%% ____________________
%% CALCULATIONS
volume = length.*width.*depth;
if isscalar(maxx) == 0;
    disp("error")
end
if (ind ~= 0) &&(ind ~= 1)
    disp("error")
end

for k = 2:size(file, 2)
    
    if ind == 1 
        [mindepth, idx] = find(depth>=10);
        a = [capacity(idx) mindepth];
        surfA = maxx*25;
        calcSurfA = length.*width;
        [mincap, idxx] = find(calcSurfA>= surfA);
        Mincol = [capacity(idxx) mincap]
        pp = volume(idxx)*3;
        
    end
    
   
end
    
 %dCol(k,:)


 


%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf("The volume of the pool selected: %f",pp)
fprintf("The maximum number of swimmers the selected pool can allow at one time: %f")


%% ____________________
%% COMMAND WINDOW OUTPUT


end
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.