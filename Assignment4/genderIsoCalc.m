function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Day1,Day2,Day3)
% This function that returns four outputs. The first set of outputs
% one for males and one for females returns a matrix with individual mean
% isometric strength values across all 3 days of lifting for the appropriate
% group. The second set of outputs returns  the single mean value for each
% group (mean of subject means). This function is called in the main script,
% "assignment4.m" to store the results with variable names maleIsoIndMeans,
% femaleIsoIndMeans, maleGroupIsoMean and femaleGroupIsoMean.

strengthTable = [Day1, Day2, Day3]; % Table for Isometric Strength Values 
allIsoIndMeans = mean(strengthTable,2); % Calculate Mean of Columns

% All individual means corresponding to males set in matrix
maleIsoIndMeans = [allIsoIndMeans(1),
                   allIsoIndMeans(2),
                   allIsoIndMeans(6),
                   allIsoIndMeans(7),
                   allIsoIndMeans(10),
                   allIsoIndMeans(12),
                   allIsoIndMeans(15),
                   allIsoIndMeans(16),
                   allIsoIndMeans(20),
                   allIsoIndMeans(21),
                   allIsoIndMeans(23),
                   allIsoIndMeans(24),
                   allIsoIndMeans(25)];
               
% All individual means corresponding to females are set in matrix               
femaleIsoIndMeans = [allIsoIndMeans(3),
                   allIsoIndMeans(4),
                   allIsoIndMeans(5),
                   allIsoIndMeans(8),
                   allIsoIndMeans(9),
                   allIsoIndMeans(11),
                   allIsoIndMeans(13),
                   allIsoIndMeans(14),
                   allIsoIndMeans(17),
                   allIsoIndMeans(18),
                   allIsoIndMeans(19),
                   allIsoIndMeans(22)];

% Group Means are calculate from all individual values for each gender.
maleGroupIsoMean = mean(maleIsoIndMeans);
femaleGroupIsoMean = mean(femaleIsoIndMeans);
end
