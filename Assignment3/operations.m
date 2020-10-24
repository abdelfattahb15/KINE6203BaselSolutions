%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Assignment 3: Functions

% Author: Basel Abdelfattah

% Due: 10/29/2020

% Description #2: 

% This function takes 2 numbers as input and returns values for the sum,
% difference, product and max of the two numbers as outputs. 

% Developed on Matlab version 2019b, on Microsoft Windows 10 Home Ver 10.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [sum,difference,product,maximum] = operations(number1,number2)

sum = number1 + number2; % the 2 numbers are added, assigned to sum
difference = number1 - number2; % the 2 numbers are subtracted, assigned to difference
product = number1 * number2; % the 2 numbers are multiplied, assigned to product
maximum = max(number1,number2); % returns the maximum value of the two numbers

end

