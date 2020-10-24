%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Assignment 3: Functions

% Author: Basel Abdelfattah

% Due: 10/29/2020

% Description #6: 

% This function takes a number as input and returns true if the number
% is a prime number and false if the number is not prime.

% Developed on Matlab version 2019b, on Microsoft Windows 10 Home Ver 10.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [numberOut] = primeCheck(numberIn)

% Conditional statement used to check if input is in fact a prime number,
% and returns true/false logicals as output depending on condition.
if isprime(numberIn) == true % Compares result of 'isprime' to true/false logical.
    numberOut = true; % Output returns true (logical) if number is prime.
else
    numberOut = false; % Output returns false (logical) if number is not prime.
end
end %end of function
