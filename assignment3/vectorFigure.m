function [result] = vectorFigure(num1, num2, num3, num4)
% vectorFigure takes two vectors of the same length and plots their values
% on a figure. 
%
%Input = 4 numbers, the first 2 numbers define the vector that will be
%plotted along the x-axis. The second 2 numbers define the vector that will
%be plotted along the y-axis. Both vectors must be the same length to run
%this function 
%
%Output = figure of the plotted vectors
%Written by Yousef Qadumi 
%Tested on MatLab v. 2024a
%Ok on Mac OS Sequoia v. 15.0
%Last updated October 2024
x = num1:num2;%defines vector "x" with equally spaced increments. 
y = num3:num4;%defines vector "y" with equally spaced increments. 
result = plot(x,y)%plots vectors x and y
title("vectorFigure Function");%defines title of of figure.
xlabel("X-axis");%labels x-axis. 
ylabel("Y-axis");%labels y-axis. 
end