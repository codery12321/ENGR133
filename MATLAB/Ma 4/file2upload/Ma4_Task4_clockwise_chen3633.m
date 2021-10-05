function C = Ma4_Task4_clockwise_chen3633(image)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 
% Program Description 
%rotate the image 90 degrees clockwise
%
% Function Call
%Ma4_Task4_clockwise_chen3633()
%
% Input Arguments
%image
%
% Output Arguments
%C
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



%% ____________________
%% CALCULATIONS

x1=zeros([size(image,1)*size(image,2) 1]);
x2=zeros([size(image,2)*size(image,1) 1]);

%Specify the degree
deg=-90;
%Change the image size
C=uint8(zeros([size(image,1) size(image,2) 3 ]));

m=1;
%Find the midpoint
midx=ceil((size(C,1)+1)/2);
midy=ceil((size(C,2)+1)/2);

for i=1:size(image,1)
    i1=i-midx;
    for j=1:size(image,2)
        %convert from cartesian to polar
        [t,r]=cart2pol(i1,j-midy);
        %Convert from radians to degree and add the degree value
        t1=radtodeg(t)+deg;
        %Convert from degree to radians
        t=degtorad(t1);
        %Convert to Cartesian Co-ordinates
        [x,y]=pol2cart(t,r);
        x1(m)=round(x+midx);
        x2(m)=round(y+midy);
       
         
        m=m+1;
       
       
       
    end
   
end
%check whether the values are within the image size.
x1(find(x1 < 1))=1;
x2(find(x2 < 1))=1;

n=1;
for i=1:size(image,1)
    for j=1:size(image,2)
        C(x1(n),x2(n),:)=image(i,j,:);
       
        n=n+1;
    end
   
end
imshow(C);



%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS



%% ____________________
%% COMMAND WINDOW OUTPUT


end
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.