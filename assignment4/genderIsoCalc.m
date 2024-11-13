function [maleIsoIndMeans,femaleIsoIndMeans, maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(SubjectID,Gender,Day1,Day2,Day3)
%genderIsoCalc returns a matraix with individual mean isometric strength
%values across all 3 days for the appropriate groups. This functioons also
%will return the single mean value for each group (mean of subject means). 
%to day2. 
%
%%Input = 5 inputs: (SubjectID, Gender, Day1,Day2,Day3) 
%Output = 4 outputs: (maleIsoIndMeans,femaleIsoIndMeans,
%maleGroupIsoMean,femaleGroupIsoMean)
%Written by Yousef Qadumi 
%Tested on MatLab v. 2024a
%Ok on Mac OS Sequoia v. 15.0
%Last updated November 2024
numsub = length(SubjectID)%calculates # of subjects 
maleSub = 1;%counter for male subjects 
femaleSub = 1;%counter for female subjects 
for i = 1: numsub; %Condition to loop through each subject
    if Gender(i) == 'M';%checks if subject is male 
        maleIsoIndMeans(maleSub) = mean([Day1(i), Day2(i), Day3(i)])%calculates mean of all 3 days 
        maleSub = maleSub+1;%increments for male subject counter
    elseif Gender(i) == 'F';%checks if subject is female
        femaleIsoIndMeans(femaleSub) = mean([Day1(i), Day2(i), Day3(i)])%calculates mean of all 3 days for each subject
        femaleSub = femaleSub+1;%increments for female counter
    end 
end
maleGroupIsoMean = mean(maleIsoIndMeans,"all")%calculates overall mean for male group
femaleGroupIsoMean = mean(femaleIsoIndMeans,"all")%calculates overall mean for female group
end