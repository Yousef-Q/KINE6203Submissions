function [isoIncrease] = dayComparer(SubjectID,Day1,Day2)
%dayComparer takes the subjectID's and two days ass inputs and returns a
%matrix with the subject ID's of the subject who had an increase from day1
%to day2. 
%
%%Input = SubjectID, Day1, Day2. 
%Output = Subject's that increased from Day1 to Day2 (isoIncrease). 
%Written by Yousef Qadumi 
%Tested on MatLab v. 2024a
%Ok on Mac OS Sequoia v. 15.0
%Last updated November 2024
subNum = length(SubjectID);%Identifies number of subjects in "SubjectID" array. 
isoIncrease = [];%Creates empty array to store SubjectIDs with an increase from day1 to day2. 
for i = 1: subNum;%Loop through each subject. 
    if Day2(i) > Day1(i);%Check if day2 value is greater than day1 for each subject. 
        isoIncrease(end +1) = SubjectID(i);%If day2 is > day1 add subjectID to isoincrease array. 
    end 
end 



end