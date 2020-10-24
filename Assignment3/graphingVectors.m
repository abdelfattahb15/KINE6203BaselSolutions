%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Assignment 3: Functions

% Author: Basel Abdelfattah

% Due: 10/29/2020

% Description #7: 

% This function takes two vectors and plots their values on a figure.
% A figure is set with generic names for the titles of the chart and each
% axis.

% Developed on Matlab version 2019b, on Microsoft Windows 10 Home Ver 10.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function graphingVectors(vector1,vector2)

figure % sets current figure
plot(vector1); % plot command for the first vector the user inputs
hold on % adds next plot to current figure and axes
plot(vector2); % plot command for the second vector the user inputs

title('Vector Values'); % title of chart
xlabel('x-axis'); % title of x-axis
ylabel('y-axis'); % title of y-axis

end