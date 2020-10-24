%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Assignment 3: Functions

% Author: Basel Abdelfattah

% Due: 10/29/2020

% Description #3: 

% This function takes 2 numbers as inputs and returns Woo if their
% sum is even and Hah if their sum is odd.

% Developed on Matlab version 2019b, on Microsoft Windows 10 Home Ver 10.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [sum] = woohah(number1,number2)

sum = number1 + number2; % Sum of the two numbers that the user inputs

% The following conditional uses equality to determine whether the 2
% numbers taken as inputs have an even or odd sum; rem(sum,2) is used to
% find the remainder after division: sum/2. Since odd numbers cannot be
% divided by two, we use equality for a true/false condition. 

if (rem(sum,2) == 0) % if remainder = 0, and the statement is true
    sum = 'Woo'; % Returns 'Woo' if sum is even
else % if remainder ~= 0, and the statement is false
    sum = 'Hah'; % Returns 'Hah' if sum is odd
end
end
