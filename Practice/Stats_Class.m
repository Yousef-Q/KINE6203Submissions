% Load the data from the NFL Combine and pro day data file
% using the read table tool.
combineData = readtable('combine_all.csv')

% View a summary of the data in the table using the summary 
% function. 
summary(combineData)

% Calculate summary statistics for the timed variables in the
% database using appropriate functions. (Shuttle, 40, 3 cone)
meanShuttle = mean(combineData.twentyss)
shuttleSD = std(combineData.twentyss)

mean40 = mean(combineData.fortyyd)
fortySD = std(combineData.fortyyd)

mean3Cone = mean(combineData.threecone)
threeConeSD = std(combineData.threecone)

% Create a histogram showing all three distributions for these
% timed variables. Make sure to label your figure and add a legend. 
figure(1)
histogram(combineData.fortyyd, 'FaceColor','r')
hold on
histogram(combineData.twentyss, 'FaceColor','b')
histogram(combineData.threecone, 'FaceColor','y')
title('Combine Data')
legend('combineData.fortyyd','combineData.twentyss','combineData.threecone')
hold off

% Create a scatter plot in a new figure showing the relationship 
% between 40 yard dash performance and shuttle time).
figure(2)
scatter(combineData.fortyyd,combineData.twentyyd)

% Calculate the correlation coefficient between these two variables.
R = corrcoef(combineData.fortyyd,combineData.twentyyd)

% If your correlation coefficient indicates a strong relationship,
% fit a linear model to your data and calculate the coefficient of
% variation (r-squared). Plot your model on your scatterplot. 
linear_model = fitlm(combineData.fortyyd,combineData.twentyyd)
r_squared = (-0.0345^2)


% Run a t-test to determine if there is a difference in means between
% the 40 yard dash and the shuttle run. [= ttest(combineData.fortyyd,combineData.twentyyd)
[h,p,ci,stats] = ttest(combineData.fortyyd,combineData.twentyyd)
