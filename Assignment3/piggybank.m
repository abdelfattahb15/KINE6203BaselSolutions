%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Assignment 3: Functions

% Author: Basel Abdelfattah

% Due: 10/29/2020

% Description #4: 

% This function takes in a number of quarters, dimes, nickels, and pennies
% as inputs and returns the total amount as output.

% Developed on Matlab version 2019b, on Microsoft Windows 10 Home Ver 10.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [totalAmount] = piggybank(quarters,dimes,nickels,pennies)

% For the input arguments, make sure you enter the number of quarters
% first, followed by the number of dimes, nickels, and then pennies.

% 'moneycount' is evaluated as the expression to sum the total amount
moneycount = 0.25*(quarters) + 0.10*(dimes) + 0.05*(nickels) + 0.01*(pennies);

% 'totalAmount' uses string concatenation and 'num2str' to convert money
% count into a string so that a dollar sign is added to express the answer
% as a monetary value.
totalAmount = strcat('$', num2str(moneycount));
end

