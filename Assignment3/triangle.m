%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Assignment 3: Functions

% Author: Basel Abdelfattah

% Due: 10/29/2020

% Description #5: 

% This function accepts a single 3-element array (e.g. [3 4 5]),
% and returns a logical value (0 or 1) indicating if the 3 elements of the
% array represent the sides of a valid triangle.

% Developed on Matlab version 2019b, on Microsoft Windows 10 Home Ver 10.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [isItaTriangle] = triangle(sides)

% triangle(sides)
%   Checks if array of 'sides' is a valid triangle

% INPUTS
%   sides: array of 3 numbers

% OUTPUTS
%   test: = 1 if true, = 0 if false
 
% sorts array of sides in ascending order
sides = sort(sides);
 
% The sum of two sides of a triangle will always be greater than the third
% side. Sorting the sides in ascending order ensures that we can test the
% third value in the array of sides to see how the sum of the first two
% sides compare.

% Test:
if sides(3) <= (sides(1) + sides(2)) % Conditional
    isItaTriangle = true; % Returns true/1 for output
else
   isItaTriangle = false; % Returns false/0 for output 
end
end
