function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%-------------------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Basel Abdelfattah
%
%         DUE: November 12, 2020
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%
% Developed on Matlab version 2019b, on Microsoft Windows 10 Home Ver 10.0
%-------------------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

%------------------------------------------------------------------------
% BUG #1 & #2: Found a bug in the conditional, for the function to continue
% correctly, we must use the '&&' operator. When using '||', the code
% prompted the user to re-enter a level of play even when the user had
% inputted an acceptable number, 1-3. Also, the conditional was changed to a
% while loop to ensure the user re-enters a valid level of play.
%-------------------------------------------------------------------------
while (level ~= beginner) && (level ~= moderate) && (level ~= advanced)      
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

%-------------------------------------------------------------------------
% BUG #3 & #4: Found a bug in the condition, after checking line-by-line, there is 
% an error showing an incorrect use of the '=' operator. Since we are
% comparing level to beginner, we use '==' instead. In addition, the code
% was not able to recognize the user's input of 3 to select the advanced
% level. This was because the original condition did not specify the
% alternate condition correctly for when the level is advanced because the
% case did not match the variable initialized.
%-------------------------------------------------------------------------
if level == beginner                     

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

elseif level == advanced
highest = advancedHighest;
else
end

% randomly select secret number between 1 and highest for level of play

%-------------------------------------------------------------------------
% BUG #5: The plus 1 expression was removed since this would always result in the
% highest number being the product/result for secretNumber.
%-------------------------------------------------------------------------
secretNumber = floor(rand() * highest);     

% initialize number of guesses and User_guess
%-------------------------------------------------------------------------
% BUG #6: numOfTries was initialized to 0 since 1 is added to assess
% the number of tries for how many turns the user takes to guess the
% number.
%-------------------------------------------------------------------------
numOfTries = 0;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly
%-------------------------------------------------------------------------
% BUG #7: Syntax Warning indicated a missing 'end' for the while loop.
% An 'end' has been included in line 131 to terminate the loop
%-------------------------------------------------------------------------
while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');

%-------------------------------------------------------------------------
% BUG #8: The '>=' operator was changed to '>' since the highest number of the
% specifed range is also included in the user's guesses.
%-------------------------------------------------------------------------
while userGuess < 1 || userGuess > highest

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

%-------------------------------------------------------------------------
% BUG #9: The first conditional needed to be changed from '>' to '<' if the
% user's guess is considered lower than the secretNumber
%-------------------------------------------------------------------------

%-------------------------------------------------------------------------
% BUG #10: The conditional to display how many tries attempted was missing the
% numOfTries variable at the end of the 'fprintf' statement
%-------------------------------------------------------------------------

if userGuess < secretNumber
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', secretNumber, numOfTries);

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end
end % of guessing while loop
end

% end of game