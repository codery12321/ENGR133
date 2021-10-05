%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%
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
file = csvread("Lanewidth_TrafficSpeed.csv", 3, 0);
milemark = file(:, 1);
lanewidth = file(:, 2);
%% ____________________
%% CALCULATIONS
for k = 2:size(file, 2)
[maxwidth, idx] = max(file(:, 2));
MaxCol(k,:) = [milemark(idx) maxwidth];
end 

MaxCol = MaxCol(2,1);

for k = 2:size(file, 2)
[minwidth, idx] = min(file(:, 2));
MinCol(k,:) = [milemark(idx) minwidth];
end 
MinCol = MinCol(2,1);

for k = 2:size(file, 2)
    okwidth = lanewidth<10;
    relRows = file(okwidth, :);
    
end

P = relRows(1, 1);
Q = relRows(end, 1);

nbetweenpq = numel(find(milemark>P))+numel(find(milemark<Q));
for k = P:Q
    x = find(milemark> 10);
    numover10 = numel(x);
end
percentage = 100*(numover10/nbetweenpq);



speedless65 = file(:, 3);
speed55to64 = file(:, 4);
speed45to54 = file(:, 5);
speed35to44 = file(:, 6);
speed25to34 =  file(:, 7);
speed15to24 = file(:, 8);
speed0to14 = file(:, 9);

num145toP = numel(find(milemark<P));
numPtoQ = numel(find(milemark<Q)) - num145toP;
numQto146 = numel(find(milemark>Q))-numel(find(milemark>146));
plot(lanewidth, milemark)
xlabel('lane width')
ylabel('milemark')
        

%% ____________________
%% OUTPUTS
fprintf('Maximum lane width is %f and the corresponding lane marker is %f \r\n', maxwidth, MaxCol)
fprintf("Minimum lane width is %f and the corresponding lane marker is %f \r\n", minwidth, MinCol)
fprintf("Mile Marker for P is %f \r\n", P)
fprintf("Mile Marker for Q is %f \r\n", Q)
fprintf("percentage of data points between P and Q where the lane width is greater than 10 is %f%% \r\n", percentage)

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.