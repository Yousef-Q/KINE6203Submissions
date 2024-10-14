function [result] = validTri(sides)
%validTri takes a single 3-element array (e.g. [3 4 5]), and returns a
%logical value (0 or 1) indicating if the 3 elements of the array represent the sides
% of a valid triangle. The numbers of the array should be input from
% smallest to largest. 
%
%
%Input = three numbers (smallest to largest)
%Output = 1(true) if valid triangle, or 0(false) is not valid triangle
%Written by Yousef Qadumi 
%Tested on MatLab v. 2024a
%Ok on Mac OS Sequoia v. 15.0
%Last updated October 2024
a = sides(1);
b = sides(2);
c = sides(3); 

if (a > c) || (b > c);%checks to see if a is greater than c or b is greater than c. If so displays error message. 
    error('The largest number of the array should be entered in last')
end 


if (a + b > c)%sums the values of a+b and checks to see if the sum is greater than c.
    result = true;
else 
    result = false;
end
end