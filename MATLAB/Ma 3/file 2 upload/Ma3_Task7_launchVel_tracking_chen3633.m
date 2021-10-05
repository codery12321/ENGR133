%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%calculating and tracking launch velocity
%
% Assignment Information
%   Assignment:     Ma3_Task7
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

file = csvread("Data_RDAS.csv", 1, 0);
time = file(:,1);
alt = file(:, 2);
acc = file(:, 3);
v = 0;
N = size(file, 1);


%% ____________________
%% CALCULATIONS

for k = 2:N
    v(k, :) =( (acc(k)+acc(k-1))/2)*(time(k)-time(k-1));
end
disp(v)

subplot(3,1,1);
plot(acc, time);
title("acceleration vs time")
xlabel('acceleration(ft/s^2)')
ylabel('time(s)')

subplot(3, 1, 2);
plot(v, time);
title("velocity vs time")
xlabel('velocity(ft/s)')
ylabel('time(s)')

subplot(3, 1, 3);
plot(alt, time);
title("altitude vs time")
xlabel('altitude(ft)')
ylabel('time(s)')

maxv = max(v);
idx = find(v == maxv);
timeidx = time(idx);


%% ____________________
%% FIGURE DISPLAY




%% ____________________
%% TEXT DISPLAY
fprintf("the maximum launch velocity: \n")
disp(maxv)
fprintf("the time maximum launch velocity occurs: \n")
disp(timeidx)

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.