function [result] = coinCounter(num1,num2,num3,num4)
% coinCounter takes in a numbers for penny(p), nickel(n), d(dime), and
% quarter(q) and multiples it by the value of each coin and outputs the sum
% of all coins. Values must be entered in from smallest coin to largest
% coin. 
%
%Input = 4 numbers (pennies, nickel, dime, quarter) <-- in this exact
%order. 
%Output = 1 number (sum of coins)
%Written by Yousef Qadumi 
%Tested on MatLab v. 2024a
%Ok on Mac OS Sequoia v. 15.0
%Last updated September 2024
p = (0.01 * num1);
n = (0.05 * num2);
d = (0.10 * num3);
q = (0.25 * num4);

result = (p + n + d + q);
end