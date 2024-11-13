% Task 1-3: Import Data
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile("isok_data_6803.csv");

%Task 4: Mean Calculations 
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(SubjectID, Gender, Day1, Day2, Day3);

%Task 5: Day Comparison 
day1toDay2 = dayComparer(SubjectID,Day1,Day2)

day2toDay3 = dayComparer(SubjectID,Day2,Day3)

%Task 6: Weight normalize
y = (Day1./Weight);%Normalizes Day1 values relative to subjects body weight.
normDay1mean = mean(y)%Calculates mean based off normalized data. 

x = (Day2./Weight);%Normalizes Day1 values relative to subjects body weight.
normDay2mean = mean(x)%Calculates mean based off normalized data.

z = (Day3./Weight);%Normalizes Day1 values relative to subjects body weight.
normDay3mean = mean(z)%Calculates mean based off normalized data.

%Export
femaleIsoIndMeans = femaleIsoIndMeans';%Transpose column vector into row vector
femaleIsoIndMeans(13,1) = NaN;%Replaces the value in row 13 of the first column of 'femaleIsoIndMeans' with NaN
maleGroupIsoMean = maleGroupIsoMean'
maleGroupIsoMean(2:13,1) = NaN; %Sets rows 2 to 13 in the first column of 'maleGroupIsoMeans' to NaN
maleIsoIndMeans = maleIsoIndMeans'
maleIsoIndMeans (13,1)
femaleGroupIsoMean (2:13,1) = NaN; 
day1toDay2 = day1toDay2';
day1toDay2 (13,1) = NaN; %Replaces the value in row 13 of the first column of 'day1toDay2' with NaN
day2toDay3 = day2toDay3';
day2toDay3(12:13,1) = NaN; %Replaces the values in rows 12 and 13 of the first column of 'day2toDay3' with NaN
normDay1mean (2:13,1) = NaN;%Sets rows 2 to 13 in the first column of 'normDay1mean' to NaN
normDay2mean (2:13,1) = NaN;
normDay3mean (2:13,1) = NaN; 

results = table(maleGroupIsoMean, femaleGroupIsoMean, maleIsoIndMeans, femaleIsoIndMeans, day1toDay2, day2toDay3, normDay1mean,normDay2mean, normDay3mean)%creates table 
writetable(results, 'iso_results.csv');%creates .csv file of results table 

