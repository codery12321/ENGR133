function Ma4_Task4_image_flip_chen3633(image)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%rotate picture
%
% Function Call
%Ma4_Task4_image_flip_chen3633()
%
% Input Arguments
%image
%
% Output Arguments
%None
%
% Assignment Information
%   Assignment:     Ma4_Task 4
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
image = imread("coins.png", 'png');
imshow(image)
title('Original Image');

choice = menu('Choose a rotation','90 degrees clockwise','90 degrees counter-clockwise','180 degrees (flipped)');




%% ____________________
%% CALCULATIONS


if choice == 1
    clockwise90 = Ma4_Task4_clockwise_chen3633(image);
    deg = 90;
elseif choice == 2
    C = Ma4_Task4_counterclockwise_chen3633(image);
    deg = -90;
elseif choice == 3
    flipped180 = Ma4_Task4_180_flipped_chen3633(image);
    deg = 180;
end

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf("Image Rotated %.0f degrees\n", deg)

end
%% ____________________
%% COMMAND WINDOW OUTPUT



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.