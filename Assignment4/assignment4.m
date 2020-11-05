%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Assignment 4: Analyzing Isometric Strength Data

% Author: Basel Abdelfattah

% Due: 11/4/2020

% Description: 

% Some isometric strength data is analyzed within this script. All input 
% data is contained in the file ‘isok_data_6803.csv’ The file contains
% subject ids,ages, genders, weights, and three days of isometric maximum 
% strength data for some participants in a strength training research 
% protocol. The script calls user made functions to calculate various sets 
% of outputs regarding the mean values for different subject groups, the
% subject IDs showing increased strength among the three days, and weight
% normalized group data. Results are exported to a csv file using an
% appropriate built-in function.

% Developed on Matlab version 2019b, on Microsoft Windows 10 Home Ver 10.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% For the imported function data, aach column is imported as a separate 
% vector and column headers are used as the variable names.
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile("isok_data_6803.csv", [2, Inf]);

% This function returns a matrix with individual mean isometric strength
% values across all 3 days of lifting for the appropriate group. The second
% set of outputs returns the single mean value for each group.
[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Day1,Day2,Day3);

% For the function that takes the subject IDs and two days as inputs,
% the user will have to input the earlier day as their first choice.
% For example, the following should be what the user inputs when 
% the code is executed, "dayChoice1 = 1, dayChoice2 = 2" & "dayChoice1 = 2,
% dayChoice2 = 3"

% To check day1toDay2
dayChoice1 = input('To calculate day1toDay2, enter the number 1 for Day1 here: ');
dayChoice2 = input('To calculate day1toDay2, enter the number 2 for Day2 here: ');

% This conditional sets the SubjectIDs to be shown based on the choice of
% day by the use. The first time executed, the user will need to input 1 to
% output results for day1toDay2 when prompted.
if dayChoice1 == 1
    [day1toDay2] = dayComparer(SubjectID,dayChoice1,dayChoice2);
elseif dayChoice1 == 2
    [day2toDay3] = dayComparer(SubjectID,dayChoice1,dayChoice2);
else
end

% To check day2toDay3
dayChoice1 = input('To calculate day2toDay3, enter the number 2 for Day2 here: ');
dayChoice2 = input('To calculate day2toDay3, enter the number 3 for Day3 here: ');

% This conditional sets the SubjectIDs to be shown based on the choice of
% day by the use. The second time executed, the user will need to input 2 to
% output results for day2toDay3 when prompted.
if dayChoice1 == 1
    [day1toDay2] = dayComparer(SubjectID,dayChoice1,dayChoice2);
elseif dayChoice1 == 2
    [day2toDay3] = dayComparer(SubjectID,dayChoice1,dayChoice2);
else
end

% Weight normalize the isokinetic data, calculate the group means for each day
normDay1mean = mean(Day1./Weight);
normDay2mean = mean(Day2./Weight);
normDay3mean = mean(Day3./Weight);

% Export results into csv

% All reulst must have same number of indices
maleIsoIndMeans;
femaleIsoIndMeans(end+1:13)= NaN; % add additional rows, fill with NaN
maleGroupIsoMean(end+1:13) = NaN; % add columns, fill with NaN
   maleGroupIsoMean = maleGroupIsoMean'; % Transpose
femaleGroupIsoMean(end+1:13) = NaN; % add columns, fill with NaN
  femaleGroupIsoMean = femaleGroupIsoMean'; % Transpose
day1toDay2(end+1:13) = NaN; % add additional rows, fill with NaN
day2toDay3(end+1:13) = NaN; % add additional rows, fill with NaN
normDay1mean(end+1:13) = NaN; % add columns, fill with NaN
  normDay1mean = (normDay1mean)'; % Transpose
normDay2mean(end+1:13) = NaN; % add columns, fill with NaN
  normDay2mean = (normDay2mean)'; % Transpose
normDay3mean(end+1:13) = NaN; % add columns, fill with NaN
  normDay3mean = (normDay3mean)'; % Transpose

% Each result will be 13 x 1 array so we can then create a table with the
% variable names as headers.
Results = table(maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean,day1toDay2,day2toDay3,normDay1mean,normDay2mean,normDay3mean)

% Exports the results by writing a table to a file called 'iso_results.csv'
writetable(Results,'iso_results.csv');
           