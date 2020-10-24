%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Assignment 3: Functions

% Author: Basel Abdelfattah

% Due: 10/29/2020

% Description #9: 

% This is a function that takes a string value as input and returns the
% length of the string and the first and last character as outputs.
% For the function to execute, the input argument must be a string array,
% character vector, or cell array of character vectors.

% Developed on Matlab version 2019b, on Microsoft Windows 10 Home Ver 10.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [length,firstChar,lastChar] = identifyString(stringValue)

% length - the first ouput argument set to expression that will return
% string length

% firstChar - the second output argument set to expression that will return
% the first character of the string that the user inputs.

% lastChar - the third and final output argument set to expression that
% will return the last character of the string that the user inputs. 


length = strlength(stringValue); % returns # of characters in string
firstChar = char(stringValue(1)); % returns the element in first character of string
lastChar = char(stringValue(end)); % reurns the element in last character of string
    
end

