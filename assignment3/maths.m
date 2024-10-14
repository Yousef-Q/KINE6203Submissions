function[S,Df,product,M] = maths(num1,num2)
%maths takes any two numbers entered into the function and calculates the sum, difference, product, and max of the two numbers 
%
%Input = two numbers 
%Output = sum, difference (first input - second input), product, M 
%Written by Yousef Qadumi 
%Tested on MatLab v. 2024a
%Ok on Mac OS Sequoia v. 15.0
%Last updated September 2024

S = (num1 + num2)%sum of the two numbers. 
Df = (num1 - num2)%Difference between the two numbers. 
product = (num1 * num2)%product between the two numbers. 
M = max(num1,num2)%max between the two numbers. 
end