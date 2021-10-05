%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
% Program Description 
%analyze data for headphone designs
%
% Assigment Information
%   Assignment:     Ma3, Task 5
%   Author:         Yolanda, chen3633@purdue.edu
%   Team ID:        LC1-12
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
file = csvread('Data_volume_power.csv', 2,0);
P = file(:,1);
v1 = file(:,2);
v2 = file(:,3);

%% ____________________
%% CALCULATIONS
voep4 = 67.1*log(P)-1.3;
viep3 = 77.7*log(P)-7.3;

%% ____________________
%% FORMATTED FIGURE
OrgDat1 = plot(v1, P,"-+");
hold on
OrgDat2 = plot(v2, P,"-*");
PredData1 = plot(voep4, P,"-s");
PredData2 = plot(viep3, P,"-o");
title('data for headphone designs')
xlabel('volume(dB)')
ylabel('power(mW)')
legend("Original Data OEP4", "Original Data IEP3", "Predicted Data OEP4", "Predicted Data  IEP3")



%% ____________________
%% ANALYSIS

%% -- Q1
% I would say that the predicted data of OEP4 best fits because it has the
% smoothiest curve. 

%% -- Q2
% The IEP3 would be more sensitive


%% -- Q3
% IEP3 will have the best battery life because it's line is the longest. 


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The script I am submitting
% is my own original work.