%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Assignment 3: Functions

% Author: Basel Abdelfattah

% Due: 10/29/2020

% Description #8: 

% This function takes 2 numbers as input and displays a counter from the
% lower number to the higher number.

% Developed on Matlab version 2019b, on Microsoft Windows 10 Home Ver 10.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function CountLowHigh(LowerNumber,HigherNumber)

% The following is not necessary, but helps for clarity with coding
a = LowerNumber % This assigns LowerNumber to be 'a'
                % a is not supressed to display the lower number that the 
                % user inputs when calling the function
b = HigherNumber; % This assigns HigherNumber to be 'b'

% A while loop is used to compare the equality for 'a' and 'b'.
% Since we want to count from the lower number to the higher number, we 
% add 1 to the value of 'a' until a = b. 

while (a < b) % While loop executes for when the value of a is less than b
    a = a + 1 % Counter, adds 1 to 'a', not supressed for display     
    if a == b % Condition included to stop addition when a = b
        break % Breaks loop, end executed
    end
end
end
