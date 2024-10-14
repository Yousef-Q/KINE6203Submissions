function [result] = primeIdentify(num1)
% primeIdentify identifies if a number is a prime number or not. If the
% number is a prime number, primeIdentify will return 'true'. If the number
% is not a prime number primeIdentify will return 'false'. 
%
%Input = 1 number
%Output = true (if number is a prime number) or false (if number is not a prime number)
%Written by Yousef Qadumi 
%Tested on MatLab v. 2024a
%Ok on Mac OS Sequoia v. 15.0
%Last updated September 2024


result = isprime(num1);%assigns the value of 1 to prime numbers, otherwise assigns the value of 0 for non-prime numbers. 
if result == 1;
    result = 'true';
else result = 'false';
end 


end