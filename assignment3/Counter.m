function [result] = Counter(num1, num2)
%Counter takes any two numbers entered into the function and displays a
%counter from the lower number to the higher number. The first number
%entered must be lower than the second number.
%
%
%Input = two numbers 
%Output = an array of numbers from x to y.   
%Written by Yousef Qadumi 
%Tested on MatLab v. 2024a
%Ok on Mac OS Sequoia v. 15.0
%Last updated October 2024
% 
% 
x = num1;
y = num2;
if x > y %if user enters a number for x that is greater y and error message will occur. 
    error('The first number entered must be lower than the second number')
end
result = x:y;%displays an array of numbers between x and y with increments of 1. 
end