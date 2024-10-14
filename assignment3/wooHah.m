function [result] = wooHah(num1,num2)
%wooHah takes any two numbers entered into the function and sums the
%numbers. If the sum of the numbers is even wooHah will return "Woo" as the
%output. If the sum of the numbers is odd wooHah will return 'Hah'. 
%
%
%Input = two numbers 
%Output = Woo or Hah  
%Written by Yousef Qadumi 
%Tested on MatLab v. 2024a
%Ok on Mac OS Sequoia v. 15.0
%Last updated September 2024

y = (num1 + num2)
x = mod(y,0)
b = mod(y,1)


if mod(y,2) == 0 %Reports the remainder of y when dvided by 2.  
    result = 'Woo'; %If remainder of y/2=0, y = even, 'Woo' is displayed. 
else mod(y,2) == 1
    result = 'Hah'; %If remainder of y/2=1, y=odd, 'Hah' is displayed. 
end 

end